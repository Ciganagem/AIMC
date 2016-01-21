using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clients_AddServico : System.Web.UI.Page
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

            String getDropQuery = String.Format("SELECT Nome FROM Idoso WHERE IDCliente='{0}'", id);
            DataTable temp;
            temp = db.GetDataTable(getDropQuery);

            DropDownList1.DataValueField = "Nome";

            DropDownList1.DataSource = temp;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Escolha um idoso.");
            
        }
    }
    protected void add_Click(object sender, EventArgs e)
    {
        
            if(DropDownList1.SelectedIndex.Equals(0))
            {
                Label1.Visible = true;
            }
        
            MembershipUser user = Membership.GetUser();
            SQLDatabaseManager db = new SQLDatabaseManager();
            Client c = new Client(user.ProviderUserKey.ToString());
            int idcliente = c.getIDCliente();
            int ididoso = c.getIDIdoso(idcliente, DropDownList1.SelectedItem.Text);

            

            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    selected += item.Text + " - ";
                }
            }
            
            Dictionary<String, String> InsertData = new Dictionary<String, String>()
            {

                {"IDCliente", idcliente.ToString()},
                {"IDIdoso", ididoso.ToString()},
                {"Servico", selected},
                {"Notas", tnotas.Text},
                {"Horario", thorario.Text},
                {"Status", "Não Aceite"},
                {"IDVoluntario", "15"}
            };
            if (!db.Insert("dbo.Servico", InsertData))
            {
                Response.Redirect("Erro ao criar entrada");
            }
            else
            {
                Response.Redirect("~/Clients/VerServico.aspx");

            }
    }
        
    
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Clients/MainPage.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex.Equals(0))
        {
            add.Enabled = false;
        }
        else
            add.Enabled = true;
    }
}