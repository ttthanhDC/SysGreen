using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

namespace SYSGREEN
{
    /// <summary>
    /// Summary description for HandlerSysOrg
    /// </summary>
    public class HandlerSysOrg : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            String type = context.Request.Form["type"].ToString();
            String jsonData = context.Request.Form["data"].ToString();
            DataObject.SysOrg obj = new JavaScriptSerializer().Deserialize<DataObject.SysOrg>(jsonData);
            if (type == "insert")
            {
                try
                {
                    obj.Create_Date = DateTime.Now;
                    Insert(obj);
                    context.Response.ContentType = "text/plain";
                    context.Response.Write("insert data success");
                }
                catch (Exception e)
                {
                    context.Response.ContentType = "text/plain";
                    context.Response.Write("Error");
                }

            }
            else if (type == "update")
            {
                try
                {
                    Update(obj);
                    context.Response.ContentType = "text/plain";
                    context.Response.Write("insert data success");
                }
                catch (Exception e)
                {
                    context.Response.ContentType = "text/plain";
                    context.Response.Write("Error");
                }
            }
            else if (type == "delete")
            {
                try
                {
                    DeleteData(obj.ID);
                    context.Response.ContentType = "text/plain";
                    context.Response.Write("insert data success");
                }
                catch (Exception e)
                {
                    context.Response.ContentType = "text/plain";
                    context.Response.Write("Error");
                }
            }
            else if (type == "getData")
            {
                try
                {
                    // Case ID > 0 -> Result = 1 record
                    // Case ID = 0; -> Result = All Record
                    List<DataObject.SysOrg> lst = GetData(obj.ID);

                    context.Response.ContentType = "application/json";
                    context.Response.Write(JsonConvert.SerializeObject(lst));
                }
                catch (Exception e)
                {
                    context.Response.ContentType = "text/plain";
                    context.Response.Write("Error");
                }
            }
            else
            {
                context.Response.ContentType = "text/plain";
                context.Response.Write("Hello");
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        public void Insert(DataObject.SysOrg obj)
        {
            Servies.SysOrgServies.InsertData(obj);
        }
        public void Update(DataObject.SysOrg obj)
        {
            Servies.SysOrgServies.InsertData(obj);
        }
        public static void DeleteData(Int32 Id)
        {
            Servies.SysOrgServies.DeleteData(Id);
        }

        public List<DataObject.SysOrg> GetData(Int32 Id)
        {
            List<DataObject.SysOrg> lst = Servies.SysOrgServies.GetData(Id);
            return lst;
        }
    }
}