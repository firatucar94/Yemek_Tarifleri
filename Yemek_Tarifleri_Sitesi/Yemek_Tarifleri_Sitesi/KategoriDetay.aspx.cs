using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifleri_Sitesi
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        SqlSinif bgl = new SqlSinif();
        string kategori_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategori_id = Request.QueryString["KategoriId"];
            SqlCommand komut = new SqlCommand("select *from Tbl_Yemekler where KategoriId=@p1 ",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",kategori_id);
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            bgl.baglanti().Close();
        }
    }
}