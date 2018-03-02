using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Kitchen_Sink
{
    public partial class Charts : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Chart1.Series.Add("Series2");
            Chart1.Series["Series2"].Points.AddXY("Dynamic Test", 40);
            Chart1.Series["Series2"].Points.AddXY("Dynamic Test", 20);
            Chart1.Series["Series2"].Points.AddXY("Dynamic Test", 30);
            Chart1.Series["Series2"].Points.AddXY("Dynamic Test", 10);
        }

        protected void RandoBtn_Click(object sender, EventArgs e)
        {
            Random rndNumber = new Random();
            Chart1.Series["Series1"].Points[0].YValues[0] = rndNumber.Next(1, 100);
            Chart1.Series["Series1"].Points[1].YValues[0] = rndNumber.Next(1, 100);
            Chart1.Series["Series1"].Points[2].YValues[0] = rndNumber.Next(1, 100);
            Chart1.Series["Series1"].Points[3].YValues[0] = rndNumber.Next(1, 100);
            Chart1.Series["Series2"].Points[0].YValues[0] = rndNumber.Next(1,100);
            Chart1.Series["Series2"].Points[1].YValues[0] = rndNumber.Next(1, 100);
            Chart1.Series["Series2"].Points[2].YValues[0] = rndNumber.Next(1, 100);
            Chart1.Series["Series2"].Points[3].YValues[0] = rndNumber.Next(1, 100);
        }
    }
}