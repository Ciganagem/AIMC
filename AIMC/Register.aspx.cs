using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using AIMC.Backend;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

        if (RadioButtonList1.SelectedIndex.Equals(0))
        {
            
            //fill dos parametros da query com dados inseridos na textbox
            String user = CreateUserWizard1.UserName;
            String pass = CreateUserWizard1.Password;
            String email = CreateUserWizard1.Email;
            String nome = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Tnome")).Text;
            String morada = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Tmorada")).Text;
            String tlf = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Tcontactos")).Text;
            String data = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Tdata")).Text;
            String uid = Membership.GetUser(CreateUserWizard1.UserName).ProviderUserKey.ToString();

            //operação de insert

            SQLDatabaseManager db = new SQLDatabaseManager();
            

           

            Dictionary<String, String> InsertData = new Dictionary<String, String>()
            {
                {"Username", user},
                {"Nome", nome},
                {"Morada", morada},
                {"DataNasc", data},
                {"Email", email},
                {"Contactos", tlf},
                {"UserId",uid},
                
            };

           if(!db.Insert("dbo.Cliente", InsertData))
           {
               Response.Redirect("Erro ao criar entrada");
           }
            
            Roles.AddUserToRole(CreateUserWizard1.UserName.ToString(), "Cliente");
        }
        else
        {
            String user = CreateUserWizard1.UserName;
            String pass = CreateUserWizard1.Password;
            String email = CreateUserWizard1.Email;


            String nome = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Tnome")).Text;
            String morada = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Tmorada")).Text;
            String tlf = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Tcontactos")).Text;
            String data = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Tdata")).Text;
            String uid = Membership.GetUser(CreateUserWizard1.UserName).ProviderUserKey.ToString();
            //Response.Redirect(uid);

            SQLDatabaseManager db = new SQLDatabaseManager();


            Dictionary<String, String> InsertData = new Dictionary<String, String>()
            {
                
                {"Nome", nome},
                {"Morada", morada},
                {"Email", email},
                {"DataNasc", data},
                {"Contactos", tlf},
                {"UserId",uid},
                {"Username", user},
                {"Disponibilidade", "Nao definida"},
                {"Habilitacoes", "Nao definidas"},
                {"Status", "Aguarda"}
            };

            if (!db.Insert("dbo.Voluntario", InsertData))
            {
                Response.Redirect("Erro ao criar entrada");
            }

            Roles.AddUserToRole(CreateUserWizard1.UserName.ToString(), "Voluntario");
        }
    }
}