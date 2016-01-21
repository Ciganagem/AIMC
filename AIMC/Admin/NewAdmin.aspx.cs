using AIMC.Backend;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_NewAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Confirm_Click(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        Client c = new Client(user.ProviderUserKey.ToString());
        MembershipUser newUser;
        if((newUser=c.NovoUser(tuser.Text, tpass.Text)) == null)
        {
            
        }
        else
        {


        SQLDatabaseManager db = new SQLDatabaseManager();
        Dictionary<String, String> InsertData = new Dictionary<String, String>()
            {
                
                {"Nome", tnome.Text},
                {"Morada", tmorada.Text},
                {"Email", temail.Text},
                {"Contacto", tcontactos.Text},
                {"UserId", newUser.ProviderUserKey.ToString()}
                
            };
        db.Insert("Admin", InsertData);
        Roles.AddUserToRole(newUser.UserName, "Admin");
        Response.Redirect("~/Admin/AMain.aspx");
        }
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/AMain.aspx");
    }
}