using Mobileshop.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Mobileshop.DAL
{
    public class BrandGetWay
    {

        SqlConnection con = new SqlConnection(Connection.GetConnectionString());

        public IQueryable<Brand> Get()
        {
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM brand", con);
            sda.Fill(dt);
            return dt.AsEnumerable()
                .Select(r => new Brand
                {
                    Id = r.Field<int>("brandId"),
                    BrandName = r.Field<string>("BrandName")
                })
                .AsQueryable();
        }

        public void Insert(Brand b)
        {
            SqlCommand cmd = new SqlCommand(@"INSERT INTO brand VALUES(@n)", con);
            cmd.Parameters.AddWithValue("@n", b.BrandName);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void Update(Brand b)
        {
            SqlCommand cmd = new SqlCommand(@"UPDATE brand SET BrandName=@n WHERE id=@i", con);
            cmd.Parameters.AddWithValue("@n", b.BrandName);
            cmd.Parameters.AddWithValue("@i", b.Id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void Delete(Brand b)
        {
            SqlCommand cmd = new SqlCommand(@"DELETE FROM brand WHERE brandId=@i", con);
            cmd.Parameters.AddWithValue("@i", b.Id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}