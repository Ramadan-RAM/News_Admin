using System.Data.SqlClient;
using System.Data;

namespace News_AdminProject.Admin.Models
{
    public class Category
    {
        public int InsertCategory(string CategoryName)
        {
            int RowAffrcted = 0;
            int Result = 0;
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@CategoryName", CategoryName)
            };

            Result = dbo.RunProcedure("Sp_InsertCategory", parameters, RowAffrcted);
            return Result;

        }

        public DataTable SelectAllCategory()
        {
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[] { };
           return dbo.RunProcedure("Sp_SelectAlleCategory", parameters);
        }

        public int UpdateCategory(int CatID, string CategoryName)
        {
            int RowAffrcted = 0;
            int Result = 0;
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[] 
            { 
                new SqlParameter("@CategoryID", CatID),
                new SqlParameter("@CategoryName", CategoryName)
            };
            Result = dbo.RunProcedure("Sp_UpdateCategory", parameters, RowAffrcted);
            return Result;
        }

        public int DeleteCategory(int CatID)
        {
            int RowAffrcted = 0;
            int Result = 0;
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@CategoryID", CatID),
            };
            Result = dbo.RunProcedure("Sp_DeleteCategory", parameters, RowAffrcted);
            return Result;
        }
    }
}