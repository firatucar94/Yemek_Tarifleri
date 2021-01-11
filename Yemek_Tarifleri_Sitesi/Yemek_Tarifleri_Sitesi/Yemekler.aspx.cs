using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Yemek_Tarifleri_Sitesi
{
    public partial class Yemekler : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"];


                //Kategori Listesi
                SqlCommand kmt = new SqlCommand("Select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = kmt.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }


            //Yemek Listesi
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();


            //Silme İşlemi

            if (islem == "sil")
            {
                SqlCommand komut2 = new SqlCommand("Delete From Tbl_Yemekler where YemekId=@p1",bgl.baglanti());
                komut2.Parameters.AddWithValue("@p1",id);
                komut2.ExecuteNonQuery();

                bgl.baglanti().Close();
            }
            

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Yemek Ekleme

            SqlCommand kmt = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            kmt.Parameters.AddWithValue("@p1", TextBox1.Text);
            kmt.Parameters.AddWithValue("@p2", TextBox2.Text);
            kmt.Parameters.AddWithValue("@p3", TextBox3.Text);
            kmt.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            kmt.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori Sayısını Arttırma
            SqlCommand kmt2 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriId=@p1",bgl.baglanti());
            kmt2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            kmt2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}