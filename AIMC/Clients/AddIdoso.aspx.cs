using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clients_AddIdoso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Confirm_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            MembershipUser user = Membership.GetUser();
            SQLDatabaseManager db = new SQLDatabaseManager();
            Client c = new Client(user.ProviderUserKey.ToString());
            int id = c.getIDCliente();


            Dictionary<String, String> InsertData = new Dictionary<String, String>()
            {
                {"IDCliente", id.ToString()},
                {"Nome", tnome.Text},
                {"Morada", tmorada.Text},
                {"DataNasc", tdata.Text},
                {"Contacto", tcontacto.Text},
                {"Condicoes",tcondicoes.Text}
                
            };


            db.Insert("Idoso", InsertData);
            Response.Redirect("~/Clients/MainPage.aspx");
        }
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Clients/ManageIdosos.aspx");
    }
}