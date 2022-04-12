using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifiWebSitesi
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-S1PQKS2;Initial Catalog=yemek_tarifi_site;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}