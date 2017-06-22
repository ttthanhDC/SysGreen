using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataObject;
using System.Data.SqlClient;
using System.Data;

namespace Servies
{
    public class DeptObjectServices
    {
        public static void InsertData(DataObject.DeptObject obj)
        {
            String Insert = "INSERT INTO SYS_DEPT (Dept_Name,Dept_Description,Create_User,Create_Date) VALUES (@Dept_Name,@Dept_Description,@Create_User,@Create_Date)";
            Common.Connection.Close();
            Common.Connection.Open();
            SqlCommand cmd = new SqlCommand(Insert);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = Common.Connection.SqlConnect();
            cmd.Parameters.AddWithValue("@Dept_Name", obj.Dept_Name);
            cmd.Parameters.AddWithValue("@Dept_Description", obj.Dept_Description);
            cmd.Parameters.AddWithValue("@Create_User", obj.Create_User);
            cmd.Parameters.AddWithValue("@Create_Date", obj.Create_Date);
            cmd.ExecuteNonQuery();
            Common.Connection.Close();
        }

        public static void UpdateData(DataObject.DeptObject obj)
        {
            Common.Connection.Close();
            Common.Connection.Open();
            String Update = "UPDATE SYS_DEPT SET noidung = @Dept_Name, Dept_Description = @Dept_Description Where ID = @ID";
            SqlCommand cmd = new SqlCommand(Update);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = Common.Connection.SqlConnect();
            cmd.Parameters.AddWithValue("@Dept_Name", obj.Dept_Name);
            cmd.Parameters.AddWithValue("@Dept_Description", obj.Dept_Description);
            cmd.Parameters.AddWithValue("@ID", obj.ID);
            cmd.ExecuteNonQuery();
        }

        public static void DeleteData(Int32 Id)
        {
            String Delete = "Delete from  SYS_DEPT Where ID = @ID";
            Common.Connection.Close();
            Common.Connection.Open();
            SqlCommand cmd = new SqlCommand(Delete);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = Common.Connection.SqlConnect();
            cmd.Parameters.AddWithValue("@Id", Id);
            cmd.ExecuteNonQuery();
        }

        public static List<DataObject.DeptObject> GetData(Int32 Id)
        {
            List<DataObject.DeptObject> lstDeptObject = new List<DataObject.DeptObject>();
            String Select = "";
            SqlCommand cmd = null;
            Common.Connection.Close();
            Common.Connection.Open();
            if (Id > 0)
            {
                Select = "Select * from SYS_DEPT Where ID = @ID";
               
                cmd = new SqlCommand(Select);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = Common.Connection.SqlConnect();
                cmd.Parameters.AddWithValue("@ID", Id);
            }
            else
            {
                Select = "Select * from SYS_DEPT";
                cmd = new SqlCommand(Select);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = Common.Connection.SqlConnect();
            }
            using (SqlDataReader oReader = cmd.ExecuteReader())
            {
                while (oReader.Read())
                {
                    DataObject.DeptObject obj = new DataObject.DeptObject();
                    obj.ID = Int32.Parse(oReader["ID"].ToString());
                    obj.Dept_Description = oReader["Dept_Description"].ToString();
                    obj.Dept_Name = oReader["Dept_Name"].ToString();
                    obj.Create_User = oReader["Create_User"].ToString();
                    obj.Create_User = oReader["Create_User"].ToString();
                    if (oReader["Create_Date"].ToString() != "" && oReader["Create_Date"].ToString() != null)
                    {
                        String createDate = String.Format("{0:dd/MM/yyyy}", oReader["Create_Date"].ToString());
                        obj.Create_Date = DateTime.Parse(createDate);
                    }
                    lstDeptObject.Add(obj);
                }
            }
            return lstDeptObject;
        }
    }
}
