<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/TimelookMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

<!--/*--//********************************************
//Default.aspx
//
//This file serves to be the home page where it welcomes the user
//
//Created by: Tej Patel
//Date Created: 4/30/2014
//Last Modified by: Tej Patel
//Date Last Modified: 5/4/2014
//Assignment/Project: Timelook
//Part of: Final Project--*/-->

    <!--Included inviting text-->
    <h1>
        <c>Hello Visitor! Welcome to the Timelook Web Site!</c></h1>
    <p>
        I&#39;m glad you&#39;ve decided to pay a visit to our new and improved <span 
class="style1"> ASP-based <a href="Default.aspx">Web Site</a></span>.</p>
    <!--Added a quote to show the significance of time management-->
        <strong>
            "A man who dares to waste one hour of life has not discovered the value of life."
        </strong>
        <p>-Charles Darwin</p>
    <p>Through the use of this web site, properly manage your time.</p>
    <!--Added a calendar image for visual purposes, mainly because whenever someone relates to time management, it involves keeping track of the date.-->
    <img src="Images/calendar.jpg" alt="Manage Time" height="400" width="500" />



<!-- 
Copyright 2014, Computer Science A290, School of Informatics and Computing 
Indiana University, Bloomington, Indiana 47405. For permissions and other 
information, contact trpatel@indiana.edu 
--> 
</asp:Content>