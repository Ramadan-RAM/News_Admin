using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace News_AdminProject.Admin.Models
{

    public class Users
    {
        public int InsertUser(string UserName, string Password,string Email)
        {
            int RowAffrcted = 0;
            int Result = 0;
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@UserName",UserName),
                new SqlParameter("@Passowrd",Password),
                new SqlParameter("@Email",Email)
               
            };

            Result = dbo.RunProcedure("Sp_InsertUser", parameters, RowAffrcted);
            return Result;
        }

        public DataTable SelectAllUsers()
        {
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[] { };
            return dbo.RunProcedure("Sp_SelectAllUser", parameters);
        }

        public int UpdateUsers(int UserID, string UserName,string Password,string Email)
        {
            int RowAffrcted = 0;
            int Result = 0;
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@UserID",UserID),
                new SqlParameter("@UserName",UserName),
                new SqlParameter("@Passowrd",Password),
                new SqlParameter("@Email",Email)

            };

            Result = dbo.RunProcedure("Sp_UpdateUser", parameters, RowAffrcted);
            return Result;
        }

        public int DeleteUser(int UserID)
        {
            int RowAffrcted = 0;
            int Result = 0;
            DB_Connect dbo = new DB_Connect();
            SqlParameter[] parameters = new SqlParameter[]
            {
                new SqlParameter("@UserID",UserID),
            };

            Result = dbo.RunProcedure("Sp_DeleteUser", parameters, RowAffrcted);
            return Result;
        }
    }
}