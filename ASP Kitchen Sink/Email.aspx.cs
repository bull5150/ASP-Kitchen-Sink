using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace ASP_Kitchen_Sink
{
    public partial class Email : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            ddldropdownbasic.SelectedIndex = -1;
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
        }
        protected void sendEmail(object sender, EventArgs e)
        {
            MailAddress fromAdd = new MailAddress("bull5150@hotmail.com", "ASP Kitchen Sink");
            MailAddress toAdd = new MailAddress(txtEmail.Text);
            MailAddress ccAdd = new MailAddress("bull5150@hotmail.com");
            MailMessage msg = new MailMessage(fromAdd, toAdd);
            msg.Subject = "Order confirmation";
            string body = "Testers Testers Testers";
            msg.Body = body;
            string html = "<title>Order Confirmaiton</title><body><h3>Thanks for your order!</h3><p>" + body + "</p></body>";
            AlternateView view = AlternateView.CreateAlternateViewFromString(html, null, "text/html");
            msg.AlternateViews.Add(view);
            SmtpClient client = new SmtpClient("localhost");
            client.Send(msg);
        }
    }
}