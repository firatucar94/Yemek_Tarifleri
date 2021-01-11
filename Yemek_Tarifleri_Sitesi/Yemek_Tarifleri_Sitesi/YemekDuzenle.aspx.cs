﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Yemekler where YemekId=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();

                }

                bgl.baglanti().Close();

                if (Page.IsPostBack == false)
                {
                    //Kategori Listesi
                    SqlCommand kmt = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = kmt.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAd";
                    DropDownList1.DataValueField = "KategoriId";

                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();

                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));

            SqlCommand kmt = new SqlCommand("Update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,KategoriId=@p4,YemekResim=@p6 where YemekId=@p5",bgl.baglanti());
            kmt.Parameters.AddWithValue("@p1",TextBox1.Text);
            kmt.Parameters.AddWithValue("@p2", TextBox2.Text);
            kmt.Parameters.AddWithValue("@p3", TextBox3.Text);
            kmt.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            kmt.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName);
            kmt.Parameters.AddWithValue("@p5", id);

            kmt.ExecuteNonQuery();

            bgl.baglanti().Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Tüm yemeklerin durumunu false yapar.
            SqlCommand kmt = new SqlCommand("Update Tbl_Yemekler set durum=0", bgl.baglanti());
            kmt.ExecuteNonQuery();
            bgl.baglanti().Close();

            // id'ye göre günün yemeğini true yapalım
            SqlCommand kmt2 = new SqlCommand("update Tbl_Yemekler set durum=1 where YemekId=@p1",bgl.baglanti());
            kmt2.Parameters.AddWithValue("@p1", id);

            kmt2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}