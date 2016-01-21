using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Accept : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            
            SQLDatabaseManager db = new SQLDatabaseManager();
            
            String query = String.Format("SELECT IDVoluntario, Nome, Status From Voluntario WHERE IDVoluntario<>15 AND Status='Aguarda'");
            DataTable temp;
            temp = db.GetDataTable(query);
            DropDownList1.DataValueField = "IDVoluntario";
            DropDownList1.DataTextField = "Nome";
            DropDownList1.DataSource = temp;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Escolha um Voluntário.");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex.Equals(0))
        {

            FormView1.DataSource = null;
            FormView1.DataBind();
        }
        else
        {
            SQLDatabaseManager db = new SQLDatabaseManager();

            String query = String.Format("SELECT [Nome], [Morada], [Email], [DataNasc], [Contactos], [Disponibilidade], [Status], [Habilitacoes] FROM [Voluntario] WHERE IDVoluntario='{0}'", DropDownList1.SelectedValue);
            DataTable temp;
            temp = db.GetDataTable(query);


            FormView1.DataSource = temp;
            FormView1.DataBind();
        }
    }
   
    protected void accept_Click(object sender, EventArgs e)
    {
        SQLDatabaseManager db = new SQLDatabaseManager();
        String query = String.Format("UPDATE Voluntario SET Status='Aceite' WHERE IDVoluntario='{0}'", DropDownList1.SelectedValue);
        db.ExecuteNonQuery(query);
        Response.Redirect("~/Admin/Accept.aspx");

    }
    protected void reject_Click(object sender, EventArgs e)
    {
        SQLDatabaseManager db = new SQLDatabaseManager();
        String query = String.Format("UPDATE Voluntario SET Status='Rejeitado' WHERE IDVoluntario='{0}'", DropDownList1.SelectedValue);
        db.ExecuteNonQuery(query);
        Response.Redirect("~/Admin/Accept.aspx");
    }
    protected void Back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/AMain.aspx");
    }
}