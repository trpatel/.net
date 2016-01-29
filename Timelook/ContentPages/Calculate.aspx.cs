using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*--//********************************************
//Calculate.aspx.cs
//
//This file consists of the data entries being used with the appropriate algorithm and linking it to the graph for the user to view
//
//Created by: Tej Patel
//Date Created: 4/30/2014
//Last Modified by: Tej Patel
//Date Last Modified: 5/4/2014
//Assignment/Project: Timelook
//Part of: Final Project--*/

public partial class ContentPages_Template : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bttnDay_Click(object sender, EventArgs e)
    {
        ///When the day button is clicked, it will gather the user input
        ///the days until due input will be converted to a double
        ///my algorithm for this procedure is to take the inverse of the input divided by days in month (30), which should show how much time
        ///the user should spend on the given task.
        double pri1 = 1 / (double.Parse(txtDays1.Text) / 30);
        double pri2 = 1 / (double.Parse(txtDays2.Text) / 30);
        double pri3 = 1 / (double.Parse(txtDays3.Text) / 30);
        double pri4 = 1 / (double.Parse(txtDays4.Text) / 30);
        double pri5 = 1 / (double.Parse(txtDays5.Text) / 30);
        double total = pri1 + pri2 + pri3 + pri4 + pri5;

        ///Here I try adding the data entries to create points for the graph
        ///I look at the available resources but they all just consisted of sql instead of using user input.
        ///For the points, I want to add the task name as X and the algorithm for the given task as the Y
        chrtShow.Series["Time"].Points.AddXY(txtTask1.Text + " (" + Convert.ToInt32(((pri1/total) * 100)) + "%) ", (pri1 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask2.Text + " (" + Convert.ToInt32(((pri2/total) * 100)) + "%) ", (pri2 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask3.Text + " (" + Convert.ToInt32(((pri3/total) * 100)) + "%) ", (pri3 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask4.Text + " (" + Convert.ToInt32(((pri4/total) * 100)) + "%) ", (pri4 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask5.Text + " (" + Convert.ToInt32(((pri5/total) * 100)) + "%) ", (pri5 / total));
    }
    protected void bttnMonth_Click(object sender, EventArgs e)
    {
        ///When the month button is clicked, it will gather the user input
        ///the days until due input will be converted to a double
        ///my algorithm for this procedure is to divide the input by 30 and ensuring tasks due within a month are given least priority, 
        ///which should show how much time the user should spend on the given task.
        double pri1 = double.Parse(txtDays1.Text) / 30;
        if (pri1 < 1)
        {
            pri1 = 100;
        }
        pri1 = 1 / pri1;
        double pri2 = double.Parse(txtDays2.Text) / 30;
        if (pri2 < 1)
        {
            pri2 = 100;
        }
        pri2 = 1 / pri2;
        double pri3 = double.Parse(txtDays3.Text) / 30;
        if (pri3 < 1)
        {
            pri3 = 100;
        }
        pri3 = 1 / pri3;
        double pri4 = double.Parse(txtDays4.Text) / 30;
        if (pri4 < 1)
        {
            pri4 = 100;
        }
        pri4 = 1 / pri4;
        double pri5 = double.Parse(txtDays5.Text) / 30;
        if (pri5 < 1)
        {
            pri5 = 100;
        }
        pri5 = 1 / pri5;
        double total = pri1 + pri2 + pri3 + pri4 + pri5;

        chrtShow.Series["Time"].Points.AddXY(txtTask1.Text + " (" + Convert.ToInt32(((pri1 / total) * 100)) + "%) ", (pri1 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask2.Text + " (" + Convert.ToInt32(((pri2 / total) * 100)) + "%) ", (pri2 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask3.Text + " (" + Convert.ToInt32(((pri3 / total) * 100)) + "%) ", (pri3 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask4.Text + " (" + Convert.ToInt32(((pri4 / total) * 100)) + "%) ", (pri4 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask5.Text + " (" + Convert.ToInt32(((pri5 / total) * 100)) + "%) ", (pri5 / total));
    }
    protected void bttnYear_Click(object sender, EventArgs e)
    {
        ///When the year button is clicked, it will gather the user input
        ///the days until due input will be converted to an integer
        ///my algorithm for this procedure is the number divided by 365, which should show how much time the user should spend on 
        ///the given task.
        double pri1 = double.Parse(txtDays1.Text) / 365;
        double pri2 = double.Parse(txtDays2.Text) / 365;
        double pri3 = double.Parse(txtDays3.Text) / 365;
        double pri4 = double.Parse(txtDays4.Text) / 365;
        double pri5 = double.Parse(txtDays5.Text) / 365;
        double total = pri1 + pri2 + pri3 + pri4 + pri5;

        chrtShow.Series["Time"].Points.AddXY(txtTask1.Text + " (" + Convert.ToInt32(((pri1 / total) * 100)) + "%) ", (pri1 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask2.Text + " (" + Convert.ToInt32(((pri2 / total) * 100)) + "%) ", (pri2 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask3.Text + " (" + Convert.ToInt32(((pri3 / total) * 100)) + "%) ", (pri3 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask4.Text + " (" + Convert.ToInt32(((pri4 / total) * 100)) + "%) ", (pri4 / total));
        chrtShow.Series["Time"].Points.AddXY(txtTask5.Text + " (" + Convert.ToInt32(((pri5 / total) * 100)) + "%) ", (pri5 / total));
    }
}