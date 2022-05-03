using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiWebSitesi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Yemekid"];

            if (Page.IsPostBack == false) //sayfayı yeniden yükleme
            {
                SqlCommand komut = new SqlCommand("Select * From Yemekler Where YemekId=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtYemekAd.Text = dr[1].ToString();
                    TxtMalzemeler.Text = dr[2].ToString();
                    TxtTarif.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
            }

            if (Page.IsPostBack == false)
            {
                //Kategori listesi
                SqlCommand komut2 = new SqlCommand("Select * From Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("Update Yemekler Set YemekAd=@p1, YemekMalzeme=@p2,YemekTarif=@p3,KategoriId=@p4,YemekResim=@p6 Where YemekId=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", TxtTarif.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6","~/img/"+FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //tüm yemeklerin durumunu false yaptık
            SqlCommand komut = new SqlCommand("Update Yemekler Set Durum=0", bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //günün yemeği için id ye göre durumu true yaptık
            SqlCommand komut2 = new SqlCommand("Update Yemekler Set Durum=1 Where YemekId=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}