using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clients_Servicos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        SQLDatabaseManager db = new SQLDatabaseManager();
        Client c = new Client(user.ProviderUserKey.ToString());
        int id = c.getIDCliente();
        String query = String.Format("SELECT I.Nome, I.Morada, I.Contacto, S.Servico, S.Notas, S.Horario, S.Status, V.Nome AS Vnome, V.Contactos From Idoso I, Servico S, Voluntario V WHERE S.IDCliente=I.IDCliente AND V.IDVoluntario=S.IDVoluntario AND I.IDIdoso=S.IDIdoso AND S.IDCliente='{0}'", id);

        DataTable temp;
        temp = db.GetDataTable(query);

        GridView1.DataSource = temp;
        GridView1.DataBind();

    }
    protected void Add_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Clients/AddServico.aspx");
    }
    protected void Alter_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Clients/AlterServico.aspx");
    }
    protected void Remove_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Clients/DelServico.aspx");
    }
    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Clients/MainPage.aspx");
    }
}