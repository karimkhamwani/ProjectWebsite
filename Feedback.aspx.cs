using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.Data;
public partial class Feedbackform : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=KARIM-PC\\SQLEXPRESS;Initial Catalog=Flamingo;Integrated Security=True");
    SqlDataAdapter sd = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void name_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void Submit_Click(object sender, EventArgs e)
        
    {

        sd.InsertCommand = new SqlCommand("INSERT INTO Feedback VALUES(@Datetime, @Name , @Email ,@Gender, @Phonenumber , @Qualityoffood , @Cleanliness , @Overallquality , @Comments)", con);

        sd.InsertCommand.Parameters.Add("@Datetime", SqlDbType.VarChar).Value = DateTime.Now.ToString();
       
        sd.InsertCommand.Parameters.Add("@Name", SqlDbType.VarChar).Value = name.Text;


        sd.InsertCommand.Parameters.Add("@Email", SqlDbType.VarChar).Value = Email.Text;

       
        sd.InsertCommand.Parameters.Add("@Gender", SqlDbType.VarChar).Value = Gender.SelectedValue;

   
        sd.InsertCommand.Parameters.Add("@Phonenumber", SqlDbType.BigInt).Value = Int64.Parse(Phonenumber.Text);

      
        sd.InsertCommand.Parameters.Add("@Qualityoffood", SqlDbType.VarChar).Value = Quality.SelectedValue;

      
        sd.InsertCommand.Parameters.Add("@Cleanliness", SqlDbType.VarChar).Value = Clean.SelectedValue;

       
        sd.InsertCommand.Parameters.Add("@Overallquality", SqlDbType.VarChar).Value = Quality.SelectedValue;

        sd.InsertCommand.Parameters.Add("@Comments", SqlDbType.VarChar).Value = Comments.Text;


        
        con.Open();
        sd.InsertCommand.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(GetType(), "hwa", "alert('Thankyou for your valueable feedback');", true);
       
    }
    
}