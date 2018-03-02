using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Kitchen_Sink
{
    public partial class Forms : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtFromDate.Text = DateTime.Today.ToShortDateString();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFromDate.Text = DateTime.Today.ToShortDateString();
            txtToDate.Text = "";
            ddldropdownbasic.SelectedIndex = -1;
            rdoThree.Checked = true;
            rdoTwo.Checked = false;
            rdoOne.Checked = false;
            txtTextBox.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            ddldropdownsql.SelectedIndex = 0;
            lblMessage.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Models.FormData formdt = new Models.FormData();

                formdt.FromDate = Convert.ToDateTime(txtFromDate.Text);
                formdt.ToDate = Convert.ToDateTime(txtToDate.Text);
                TimeSpan tsDays = formdt.ToDate - formdt.FromDate;
                int days = tsDays.Days;
                formdt.DayDifference = days;
                formdt.basicdropdown = Convert.ToInt32(ddldropdownbasic.SelectedIndex);
                formdt.basicdropdowntext = ddldropdownbasic.Text;
                formdt.DropDownValue = Convert.ToInt32(ddldropdownsql.SelectedIndex);
                formdt.dropdowntext = ddldropdownsql.Text;

                if (rdoThree.Checked)
                    formdt.RadioText = "Three";
                else if (rdoTwo.Checked)
                    formdt.RadioText = "Two";
                else
                    formdt.RadioText = "One";

                if (txtTextBox.Text == "")
                    formdt.CommentBox = "None.";
                else
                    formdt.CommentBox = txtTextBox.Text;

                formdt.FirstName = txtFirstName.Text;
                formdt.LastName = txtLastName.Text;
                formdt.Email = txtEmail.Text;
                formdt.Phone = txtPhone.Text;

                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\asp_example.mdf;Integrated Security=True;Connect Timeout=30");

                try
                {
                    conn.Open();
                     SqlCommand sql = new SqlCommand(@"INSERT INTO [dbo].[form_data] (
                                     [todate]
                                    ,[fromdate]
                                    ,[dropdownvalue]
                                    ,[daydifference]
                                    ,[radiotext]
                                    ,[commentbox]
                                    ,[firstname]
                                    ,[lastname]
                                    ,[email]
                                    ,[phone]
                                    ,[basicdropdown]
                                    ,[basicdropdowntext]
                                    ,[dropdowntext]) 
                                    VALUES (
                                      @todate
                                    , @fromdate
                                    , @dropdownvalue
                                    , @daydifference
                                    , @radiotext
                                    , @commentbox
                                    , @firstname
                                    , @lastname
                                    , @email
                                    , @phone
                                    , @basicdropdown
                                    , @basicdropdowntext
                                    , @dropdowntext)", conn);
                    sql.Parameters.AddWithValue("@todate", formdt.ToDate);
                    sql.Parameters.AddWithValue("@fromdate", formdt.FromDate);
                    sql.Parameters.AddWithValue("@daydifference", formdt.DayDifference);
                    sql.Parameters.AddWithValue("@radiotext", formdt.RadioText);
                    sql.Parameters.AddWithValue("@commentbox", formdt.CommentBox);
                    sql.Parameters.AddWithValue("@firstname", formdt.FirstName);
                    sql.Parameters.AddWithValue("@lastname", formdt.LastName);
                    sql.Parameters.AddWithValue("@email", formdt.Email);
                    sql.Parameters.AddWithValue("@phone", formdt.Phone);
                    sql.Parameters.AddWithValue("@basicdropdown", formdt.basicdropdown);
                    sql.Parameters.AddWithValue("@basicdropdowntext", formdt.basicdropdowntext);
                    sql.Parameters.AddWithValue("@dropdowntext", formdt.dropdowntext);
                    sql.Parameters.AddWithValue("@dropdownvalue", formdt.DropDownValue);
                    sql.ExecuteNonQuery();
                    conn.Close();
                    btnClear_Click(sender, e);
                    lblMessage.Text = "Form Added to Database";
                }
                catch (Exception ex)
                {
                    Response.Redirect("404.aspx");
                }
                //Session["Forms"] = formdt;
                //Response.Redirect("Confirm.aspx");
            }
        }

    }
}