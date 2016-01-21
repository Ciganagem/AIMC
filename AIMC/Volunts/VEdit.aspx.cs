using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Volunts_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MembershipUser user = Membership.GetUser();
            SQLDatabaseManager db = new SQLDatabaseManager();

            String query = String.Format("SELECT Nome, Morada, DataNasc, Email, Contactos, Disponibilidade, Habilitacoes FROM Voluntario WHERE UserID='{0}'", user.ProviderUserKey.ToString());
            DataTable temp;
            temp = db.GetDataTable(query);

            tnome.Text = temp.Rows[0]["Nome"].ToString();
            tmorada.Text = temp.Rows[0]["Morada"].ToString();
            tdata.Text = temp.Rows[0]["DataNasc"].ToString();
            temail.Text = temp.Rows[0]["Email"].ToString();
            tcontactos.Text = temp.Rows[0]["Contactos"].ToString();
            tdisp.Text = temp.Rows[0]["Disponibilidade"].ToString();
            thabil.Text = temp.Rows[0]["Habilitacoes"].ToString();
        }
    }
    protected void Confirm_Click(object sender, EventArgs e)
    {

        MembershipUser user = Membership.GetUser();
        SQLDatabaseManager db = new SQLDatabaseManager();

        String upquery = String.Format("UPDATE Voluntario SET Nome='{0}', Morada='{1}', DataNasc='{2}', Email='{3}', Contactos='{4}', Disponibilidade='{5}', Habilitacoes='{6}' WHERE UserId='{7}'", tnome.Text, tmorada.Text, tdata.Text, temail.Text, tcontactos.Text, tdisp.Text, thabil.Text, user.ProviderUserKey.ToString());
        db.ExecuteNonQuery(upquery);

        Response.Redirect("~/Volunts/Vmain.aspx");

    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Volunts/Vmain.aspx");
    }
}