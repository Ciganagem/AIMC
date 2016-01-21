using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;

/// <summary>
/// Summary description for Client
/// </summary>
public class Client
{
    String userID;
	public Client(String uid)
	{
        userID = uid;
	}
    public int getIDCliente()
    {
        int id;
        SQLDatabaseManager db = new SQLDatabaseManager();

        DataTable dt;
        String query = String.Format("SELECT IDCliente FROM Cliente WHERE UserId='{0}'", userID);
        


        dt = db.GetDataTable(query);
        id = Convert.ToInt32(dt.Rows[0]["IDCliente"].ToString());
        return id;

    }
    public int getIDIdoso(int idc, String nome)
    {
        int id;
        SQLDatabaseManager db = new SQLDatabaseManager();

        DataTable dt;
        String query = String.Format("SELECT IDIdoso FROM Idoso WHERE (IDCliente='{0}' AND Nome='{1}')", idc, nome);



        dt = db.GetDataTable(query);
        id = Convert.ToInt32(dt.Rows[0]["IDIdoso"].ToString());
        return id;

    }
    public int getIDVolunt()
    {
        int id;
        SQLDatabaseManager db = new SQLDatabaseManager();

        DataTable dt;
        String query = String.Format("SELECT IDVoluntario FROM Voluntario WHERE UserId='{0}'", userID);



        dt = db.GetDataTable(query);
        id = Convert.ToInt32(dt.Rows[0]["IDVoluntario"].ToString());
        return id;

    }
    public Boolean checkValid()
    {
        SQLDatabaseManager db = new SQLDatabaseManager();
        String query = String.Format("SELECT Status, IDVoluntario FROM VOluntario WHERE UserId='{0}'", userID);
        DataTable dt;
        dt = db.GetDataTable(query);
        if (dt.Rows[0]["Status"].ToString().Equals("Aguarda") || dt.Rows[0]["Status"].ToString().Equals("Rejeitado"))
        {
            return false;
        }
        return true;
    }
    public MembershipUser NovoUser(String user, String pass)
    {
        try
        {
            MembershipUser newUser = Membership.CreateUser(user, pass);
            return newUser;
        }
        catch (MembershipCreateUserException ex)
        {
            String erro = ex.StatusCode.ToString();
            return null;
        }
    }
}