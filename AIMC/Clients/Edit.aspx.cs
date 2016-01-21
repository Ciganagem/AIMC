using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clients_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MembershipUser user = Membership.GetUser();
            SQLDatabaseManager db = new SQLDatabaseManager();

            String query = String.Format("SELECT Nome, Morada, DataNasc, Email, Contactos FROM Cliente WHERE UserID='{0}'", user.ProviderUserKey.ToString());
            DataTable temp;
            temp = db.GetDataTable(query);

            tnome.Text = temp.Rows[0]["Nome"].ToString();
            tmorada.Text = temp.Rows[0]["Morada"].ToString();
            tdata.Text = temp.Rows[0]["DataNasc"].ToString();
            temail.Text = temp.Rows[0]["Email"].ToString();
            tcontactos.Text = temp.Rows[0]["Contactos"].ToString();
        }

    }
    protected void Confirm_Click(object sender, EventArgs e)
    {
        
            MembershipUser user = Membership.GetUser();
            SQLDatabaseManager db = new SQLDatabaseManager();

            String upquery = String.Format("UPDATE Cliente SET Nome='{0}', Morada='{1}', DataNasc='{2}', Email='{3}', Contactos='{4}' WHERE UserId='{5}'", tnome.Text, tmorada.Text, tdata.Text, temail.Text, tcontactos.Text, user.ProviderUserKey.ToString());
            db.ExecuteNonQuery(upquery);

            Response.Redirect("~/Clients/MainPage.aspx");
        
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Clients/MainPage.aspx");
    }
}