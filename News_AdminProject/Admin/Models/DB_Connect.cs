using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace News_AdminProject.Admin.Models
{
   public class DB_Connect
   {
        SqlConnection cn;
        public DB_Connect()
        {
            cn = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_News"].ToString());
        }

        public SqlCommand BuildQueryCommand(string StoredProcedure,SqlParameter[] parameters)
        {
            SqlCommand cmd = new SqlCommand(StoredProcedure, this.cn);
            cmd.CommandType = CommandType.StoredProcedure;
            foreach (SqlParameter parameter in parameters)
            {
                cmd.Parameters.Add(parameter);
            }
            return cmd;
        }

        public int RunProcedure(string StoredProcedure, SqlParameter[] parameters, int Result)
        {
            int RowAffected;
            SqlCommand cmd = BuildQueryCommand(StoredProcedure, parameters);
            cn.Open();
            RowAffected = cmd.ExecuteNonQuery();
            cn.Close();
            return RowAffected;
        }

        public DataSet RunProcedure(string StoredProcedure, SqlParameter[] parameters,string TableName)
        {
            DataSet Ds = new DataSet();
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = BuildQueryCommand(StoredProcedure, parameters);
            da.Fill(Ds, TableName);
            cn.Close();
            return Ds;
        }

        public DataTable RunProcedure(string StoredProcedure, SqlParameter[] parameters)
        {
            DataTable dt = new DataTable();
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = BuildQueryCommand(StoredProcedure, parameters);
            da.Fill(dt);
            cn.Close();
            return dt;
        }

        public SqlDataReader RunProcedureDr(string StoredProcedure, SqlParameter[] parameters)
        {
            SqlDataReader dr;
            cn.Open();
            SqlCommand cmd = BuildQueryCommand(StoredProcedure, parameters);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows == false)
            {
                return null;
            }
            else
            {
                return dr;
            }

        }
   }
}