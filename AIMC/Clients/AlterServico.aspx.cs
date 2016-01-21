using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clients_AlterServico : System.Web.UI.Page
{
    String selected;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MembershipUser user = Membership.GetUser();
            SQLDatabaseManager db = new SQLDatabaseManager();
            Client c = new Client(user.ProviderUserKey.ToString());
            int id = c.getIDCliente();

            String query = String.Format("SELECT S.IDServico, S.Servico, I.Nome From Servico S, Idoso I WHERE I.IDIdoso=S.IDIdoso AND S.IDCliente='{0}'", id);
            DataTable temp;
            temp = db.GetDataTable(query);
            temp.Columns.Add("NomeServico", typeof(string), "Nome + ' - ' + Servico");
            DropDownList1.DataValueField = "IDServico";
            DropDownList1.DataTextField = "NomeServico";
            DropDownList1.DataSource = temp;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Escolha o serviço a alterar.");
        }
    }
    protected void Confirm_Click(object sender, EventArgs e)
    {

        MembershipUser user = Membership.GetUser();
        SQLDatabaseManager db = new SQLDatabaseManager();

        foreach (ListItem item in CheckBoxList1.Items)
        {
            if (item.Selected)
            {
                selected += item.Text + " - ";
            }
        }
        if (!selected.Equals(null))
        {
            String query = String.Format("UPDATE Servico SET Servico='{0}' WHERE IDServico='{1}'", selected, DropDownList1.SelectedValue);
            db.ExecuteNonQuery(query);
            Response.Redirect("~/Clients/VerServico.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }
    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Clients/VerServico.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Confirm.Enabled = true;
    }
}