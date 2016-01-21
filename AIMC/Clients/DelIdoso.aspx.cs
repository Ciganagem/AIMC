using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clients_DelIdoso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MembershipUser user = Membership.GetUser();
            SQLDatabaseManager db = new SQLDatabaseManager();
            Client c = new Client(user.ProviderUserKey.ToString());
            int id = c.getIDCliente();

            String query = String.Format("SELECT IDIdoso, Nome From Idoso WHERE IDCliente='{0}'", id);
            DataTable temp;
            temp = db.GetDataTable(query);
            DropDownList1.DataValueField = "IDIdoso";
            DropDownList1.DataTextField = "Nome";
            DropDownList1.DataSource = temp;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Escolha um idoso.");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex.Equals(0))
        {
            Confirm.Enabled = false;
        }
        else
        {
            Confirm.Enabled = true;
        }
    }
    protected void Confirm_Click(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        SQLDatabaseManager db = new SQLDatabaseManager();
        String where = String.Format("IDIdoso='{0}'", DropDownList1.SelectedValue);
        db.Delete("Idoso", where);

        Response.Redirect("~/Clients/ManageIdosos.aspx");
    }
    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Clients/ManageIdosos.aspx");
    }
}