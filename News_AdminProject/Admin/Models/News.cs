using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace News_AdminProject.Admin.Models
{
    public class News
    {
        public int InsertNews(string Title,string Summury,string Details, string ImagePath, int CategoryID)
        {
            int RowAffrcted = 0;
            int Result = 0;
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@CategoryID",CategoryID),
                new SqlParameter("@NewsTitle",Title),
                new SqlParameter("@Summury",Summury),
                new SqlParameter("@Details",Details),
                new SqlParameter("@ImagePath",ImagePath)
            };

            Result = dbo.RunProcedure("Sp_InsertNews", parameters, RowAffrcted);
            return Result;
        }

        public DataTable SelectAllNews()
        {
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[] {};
            return dbo.RunProcedure("Sp_SelectAllNews_View", parameters);
        }

        public DataTable SelectAllNewsByCatID(int CatId)
        {
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[] { 
              new SqlParameter("@CatID",CatId)
            };
            return dbo.RunProcedure("Sp_SelectAllNews_ViewByCatID", parameters);
        }

        public int DeleteNews(int NewsID)
        {
            int RowAffrcted = 0;
            int Result = 0;
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@NewsID",NewsID)
              
            };

            Result = dbo.RunProcedure("Sp_DeleteNews", parameters, RowAffrcted);
            return Result;
        }

        public SqlDataReader SelectNewsByNewsID(int NewsID)
        {
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@NewsID", NewsID)

            };

            return dbo.RunProcedureDr("Sp_SelectNewsByNewsID", parameters);
            
        }

        public int UpdateNews(string Title, string Summury, string Details, string ImagePath, int NewsID)
        {
            int RowAffrcted = 0;
            int Result = 0;
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@NewsID",NewsID),
                new SqlParameter("@NewsTitle",Title),
                new SqlParameter("@Summury",Summury),
                new SqlParameter("@Details",Details),
                new SqlParameter("@ImagePath",ImagePath)

            };

            Result = dbo.RunProcedure("Sp_UpdateNews", parameters, RowAffrcted);
            return Result;
        }
    }
}