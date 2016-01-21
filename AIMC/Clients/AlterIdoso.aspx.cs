using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clients_Default : System.Web.UI.Page
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
            Confirm.Enabled = true;
            MembershipUser user = Membership.GetUser();
            SQLDatabaseManager db = new SQLDatabaseManager();
            Client c = new Client(user.ProviderUserKey.ToString());
            int id = c.getIDCliente();
            String query = String.Format("SELECT Nome, Morada, DataNasc, Contacto, Condicoes FROM Idoso WHERE IDIdoso='{0}'", DropDownList1.SelectedValue);
            DataTable temp;
            temp = db.GetDataTable(query);

            tnome.Text = temp.Rows[0]["Nome"].ToString();
            tmorada.Text = temp.Rows[0]["Morada"].ToString();
            tdata.Text = temp.Rows[0]["DataNasc"].ToString();
            tcondicoes.Text = temp.Rows[0]["condicoes"].ToString();
            tcontacto.Text = temp.Rows[0]["Contacto"].ToString();
        
        
        
    }
    protected void Confirm_Click(object sender, EventArgs e)
    {
        
            MembershipUser user = Membership.GetUser();
            Client c = new Client(user.ProviderUserKey.ToString());
            
            SQLDatabaseManager db = new SQLDatabaseManager();
            
            String upquery = String.Format("UPDATE Idoso SET Nome='{0}', Morada='{1}', DataNasc='{2}', Contacto='{3}', Condicoes='{4}' WHERE IDIdoso='{5}'", tnome.Text, tmorada.Text, tdata.Text, tcontacto.Text, tcondicoes.Text, DropDownList1.SelectedValue);
            int r= db.ExecuteNonQuery(upquery);
           
            Response.Redirect("~/Clients/ManageIdosos.aspx");
        
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Clients/ManageIdosos.aspx");
    }
}