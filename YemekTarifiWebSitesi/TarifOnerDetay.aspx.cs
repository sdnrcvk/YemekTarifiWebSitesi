using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiWebSitesi
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tarifler Where TarifId=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtTarifAd.Text = dr[1].ToString();
                    TxtTarifMalzemeler.Text = dr[2].ToString();
                    TxtYapilis.Text = dr[3].ToString();
                    TxtOneren.Text = dr[5].ToString();
                    TxtOnerenMail.Text = dr[6].ToString();
                }
                bgl.baglanti().Close();

                //Kategori listesi
                SqlCommand komut2 = new SqlCommand("Select * From Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            //Güncelleme
            SqlCommand komut = new SqlCommand("Update Tarifler Set TarifDurum=1 Where TarifId=@p1",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Yemeği anasayfaya ekleme
            SqlCommand komut2 = new SqlCommand("Insert into Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriId) Values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2", TxtTarifMalzemeler.Text);
            komut2.Parameters.AddWithValue("@p3", TxtYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}