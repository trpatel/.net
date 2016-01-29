<%@ Page Title="Calculate" Language="C#" MasterPageFile="~/MasterPages/TimelookMasterPage.master" AutoEventWireup="true" CodeFile="Calculate.aspx.cs" Inherits="ContentPages_Template" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

<!--/*--//********************************************
//Calculate.aspx
//
//This file serves as the page where the user can enter their task with days until due and will give back a graph that will
//show how they should efficiently manage their time.
//Created by: Tej Patel
//Date Created: 4/30/2014
//Last Modified by: Tej Patel
//Date Last Modified: 5/4/2014
//Assignment/Project: Timelook
//Part of: Final Project--*/-->

    <!--Let the user know what exactly this page will do.-->
    <h3>Use this calculator to see how you should manage your time.</h3>
    <table class="auto-style1">
        <!--Indicate what each column needs-->
        <!--Within many of the user input textboxes, I have included validation checks to ensure each box is filled and that the correct
            range is used in the DAYS UNTIL DUE column (1-365)-->
        <tr>
            <td>&nbsp;</td>
            <td>TASK</td>
            <td>&nbsp;</td>
            <td>DAYS UNTIL DUE</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">1.</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTask1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="vldTask1" runat="server" ControlToValidate="txtTask1" Display="Dynamic" ErrorMessage="Please enter a task in 1" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtDays1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="vldDays1" runat="server" ControlToValidate="txtDays1" Display="Dynamic" ErrorMessage="Please enter the amount of days until due" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngDays1" runat="server" ControlToValidate="txtDays1" Display="Dynamic" ErrorMessage="Please enter valid days until due (1-365)" MaximumValue="365" MinimumValue="1" Type="Integer" ForeColor="Red">*</asp:RangeValidator>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>2.</td>
            <td>
                <asp:TextBox ID="txtTask2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="vldTask2" runat="server" ControlToValidate="txtTask2" Display="Dynamic" ErrorMessage="Please enter a task in 2" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtDays2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="vldDays2" runat="server" ControlToValidate="txtDays2" Display="Dynamic" ErrorMessage="Please enter the amount of days until due" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngDays2" runat="server" ControlToValidate="txtDays2" Display="Dynamic" ErrorMessage="Please enter valid days until due (1-365)" ForeColor="Red" MaximumValue="365" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>3.</td>
            <td>
                <asp:TextBox ID="txtTask3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="vldTask3" runat="server" ControlToValidate="txtTask3" Display="Dynamic" ErrorMessage="Please enter a task in 3" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtDays3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="vldDays3" runat="server" ControlToValidate="txtDays3" Display="Dynamic" ErrorMessage="Please enter the amount of days until due" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngDays3" runat="server" ControlToValidate="txtDays3" Display="Dynamic" ErrorMessage="Please enter valid days until due (1-365)" ForeColor="Red" MaximumValue="365" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>4.</td>
            <td>
                <asp:TextBox ID="txtTask4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="vldTask4" runat="server" ControlToValidate="txtTask4" Display="Dynamic" ErrorMessage="Please enter a task in 4" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtDays4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="vldDays4" runat="server" ControlToValidate="txtDays4" Display="Dynamic" ErrorMessage="Please enter the amount of days until due" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngDays4" runat="server" ControlToValidate="txtDays4" Display="Dynamic" ErrorMessage="Please enter valid days until due (1-365)" ForeColor="Red" MaximumValue="365" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>5.</td>
            <td>
                <asp:TextBox ID="txtTask5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="vldTask5" runat="server" ControlToValidate="txtTask5" Display="Dynamic" ErrorMessage="Please enter a task in 5" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtDays5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="vldDays5" runat="server" ControlToValidate="txtDays5" Display="Dynamic" ErrorMessage="Please enter the amount of days until due" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngDays5" runat="server" ControlToValidate="txtDays5" Display="Dynamic" ErrorMessage="Please enter valid days until due (1-365)" ForeColor="Red" MaximumValue="365" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <!--This is a button that the user can select regarding how to prioritize their tasks for a day -->
            <td>
                <asp:Button ID="bttnDay" runat="server" Text="DAY" OnClick="bttnDay_Click" />
            </td>
            <td>&nbsp;</td>
            <!--This is a button that the user can select regarding how to prioritize their tasks for the month-->
            <td>
                <asp:Button ID="bttnMonth" runat="server" Text="MONTH" OnClick="bttnMonth_Click" />
            </td>
            <td>&nbsp;</td>
            <!--This is a button that the user can select regarding how to prioritize their tasks for the year.-->
            <td>
                <asp:Button ID="bttnYear" runat="server" Text="YEAR" OnClick="bttnYear_Click" />
            </td>
            <td>&nbsp;</td>
            <!--This validation summary will show all the failed valdiations and indicate the error(s)-->
            <td>
                <asp:ValidationSummary ID="ValidationSummary" runat="server" ForeColor="Black" HeaderText="Please correct the following errors before you press the button" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
    </table>


<br />
<br />
    <!--Here a chart is used, it should update according to the button that the user selected and the data invovled. I cannot seem to properly
        link the data the user inputs and create points in this chart to display. Thus the chart does not properly display the correct data.
        I believe I am not correctly feeding the data into the chart through the code behind.-->
<asp:Chart ID="chrtShow" runat="server" BackColor="Gainsboro" Palette="Bright" Width="641px">
    <series>
        <asp:Series ChartType="Pie" Name="Time" XValueType="String" YValueType="Double">
           
        </asp:Series>
    </series>
    <chartareas>
        <asp:ChartArea Name="ChartArea1">
        </asp:ChartArea>
    </chartareas>
</asp:Chart>




    <!-- 
Copyright 2014, Computer Science A290, School of Informatics and Computing 
Indiana University, Bloomington, Indiana 47405. For permissions and other 
information, contact trpatel@indiana.edu 
--> 

    
</asp:Content>

