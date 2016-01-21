using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clients_ManageIdosos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        SQLDatabaseManager db = new SQLDatabaseManager();
        Client c = new Client(user.ProviderUserKey.ToString());
        int id = c.getIDCliente();

        String query = String.Format("SELECT Nome, Morada, Contacto, DataNasc, Condicoes FROM Idoso WHERE IDCliente='{0}'", id);
        DataTable temp;
        temp = db.GetDataTable(query);

        GridView1.DataSource = temp;
        GridView1.DataBind();


    }
}