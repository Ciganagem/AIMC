using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Volunts_VMain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        SQLDatabaseManager db = new SQLDatabaseManager();

        String query = String.Format("SELECT [Nome], [Morada], [Email], [DataNasc], [Contactos], [Disponibilidade], [Status], [Habilitacoes] FROM [Voluntario] WHERE UserId='{0}'", user.ProviderUserKey.ToString());
        DataTable temp;
        temp = db.GetDataTable(query);


        FormView1.DataSource = temp;
        FormView1.DataBind();
    }
}