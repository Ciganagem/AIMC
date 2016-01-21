using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Volunts_ManageServicos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MembershipUser user = Membership.GetUser();
            SQLDatabaseManager db = new SQLDatabaseManager();

            Client c = new Client(user.ProviderUserKey.ToString());
            if (!c.checkValid())
            {
                Response.Redirect("~/Volunts/Offlimits.aspx");
            }
            int id = c.getIDVolunt();

            String query = String.Format("Select I.Nome, I.Morada, I.Contacto, I.Condicoes, S.Servico, S.Notas, S.Horario, S.Status, S.IDServico, S.IDVoluntario FROM Idoso I, Servico S, Voluntario V WHERE S.IDIdoso=I.IDIdoso AND S.IDVoluntario=V.IDVoluntario AND (S.IDVoluntario='15' OR S.IDVoluntario='{0}')", id);
            DataTable temp;
            temp = db.GetDataTable(query);
            GridView1.DataSource = temp;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
         if (e.Row.RowType == DataControlRowType.DataRow)
         {
             String status = e.Row.Cells[7].Text;
             
             if(status.Equals("Nao Aceite"))
             {
                 Button btn = e.Row.Cells[8].Controls[1] as Button;
                 btn.Text = "Aceitar";
             }
             else
             {
                 Button btn = e.Row.Cells[8].Controls[1] as Button;
                 btn.Text = "Rescindir";
             }
         }
    }
    protected void accao_Click(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        SQLDatabaseManager db = new SQLDatabaseManager();
        Button btn = (Button)sender;
        String texto = btn.Text;
        GridViewRow gvr = (GridViewRow)btn.NamingContainer;
        Client c = new Client(user.ProviderUserKey.ToString());
        int idv = c.getIDVolunt();


        if(texto.Equals("Aceitar"))
        {
            Label lblServ =  (Label)GridView1.Rows[gvr.RowIndex].FindControl("IDS");
            
            String query = String.Format("UPDATE Servico SET IDVoluntario='{0}', Status='{1}' WHERE IDServico='{2}'", idv, "Aceite", lblServ.Text);
           
            db.ExecuteNonQuery(query);
            Response.Redirect("~/Volunts/ManageServicos.aspx");
        }
        else
        {
            Label lblServ = (Label)GridView1.Rows[gvr.RowIndex].FindControl("IDS");

            String query = String.Format("UPDATE Servico SET IDVoluntario='{0}', Status='{1}' WHERE IDServico='{2}'", "15", "Nao Aceite", lblServ.Text);

            db.ExecuteNonQuery(query);
            Response.Redirect("~/Volunts/ManageServicos.aspx");
        }


    }
    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Volunts/VMain.aspx");
    }
}