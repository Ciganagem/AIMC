using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MembershipUser user = Membership.GetUser();
            SQLDatabaseManager db = new SQLDatabaseManager();

            String query = String.Format("SELECT Nome, Morada, Email, Contacto FROM Admin WHERE UserID='{0}'", user.ProviderUserKey.ToString());
            DataTable temp;
            temp = db.GetDataTable(query);

            tnome.Text = temp.Rows[0]["Nome"].ToString();
            tmorada.Text = temp.Rows[0]["Morada"].ToString();
           
            temail.Text = temp.Rows[0]["Email"].ToString();
            tcontactos.Text = temp.Rows[0]["Contacto"].ToString();
        }
    }
    protected void Confirm_Click(object sender, EventArgs e)
    {

        MembershipUser user = Membership.GetUser();
        SQLDatabaseManager db = new SQLDatabaseManager();

        String upquery = String.Format("UPDATE Admin SET Nome='{0}', Morada='{1}', Email='{2}', Contacto='{3}' WHERE UserId='{4}'", tnome.Text, tmorada.Text, temail.Text, tcontactos.Text, user.ProviderUserKey.ToString());
        db.ExecuteNonQuery(upquery);

        Response.Redirect("~/Admin/AMain.aspx");

    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/AMain.aspx");
    }
}