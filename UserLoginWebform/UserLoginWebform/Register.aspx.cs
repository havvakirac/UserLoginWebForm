using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
   static UserLoginDBEntities db = new UserLoginDBEntities();

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnRegister_Click(object sender, EventArgs e)
    {
        User usr = new User();
        usr.Name = txtName.Text;
        usr.Surname = txtSurname.Text;
        usr.Email = txtEmail.Text;
        usr.Password = GetPassword();

        db.User.Add(usr);
        db.SaveChanges();

        txtEmail.Text = "";
        txtName.Text = "";
        txtSurname.Text = "";

        Response.Redirect("UserList.aspx");
    }

    /// <summary>
    /// Şifre oluşturma
    /// </summary>
    /// <returns></returns>
    static string GetPassword()
    {
        string pasword = "";
        Random rand = new Random();
        string str = "abcdefghıijklmnoprstuvyxqwz";
        int isExist;
        do
        {
            string h1;
            string h2;
            string h3;
            string n4;
            string n5;
            string n6;
            string n7;

            h1 = str[rand.Next(str.Length)].ToString().ToUpper();
            h2 = str[rand.Next(str.Length)].ToString();
            h3 = str[rand.Next(str.Length)].ToString();
            n4 = rand.Next(0, 9).ToString();
            n5 = rand.Next(0, 9).ToString();
            n6 = rand.Next(0, 9).ToString();
            n7 = rand.Next(0, 9).ToString();
            pasword = h1 + h2 + h3 + n4 + n5 + n6 + n7;

            //daha önce üretildi mi kotnrolü            
            isExist = db.PASSWORD_CONTROL(pasword);           
           

        } while (isExist==1);
        return pasword;
    }
}