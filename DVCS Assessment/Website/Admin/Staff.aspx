<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Admin_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>STAFF</h1>

    <h2>LINQ QUERY</h2>
    <pre>
        var results = from x in Employees 
        orderby x.LastName, x.FirstName
        select new
        {
            Name = x.LastName + ", " + x.FirstName,
            ScheduledShifts = (from y in x.Schedules
				               select new
					            {
						            Date = y.Day,
						            HourlyWage = y.HourlyWage, 
						            Overtime = y.OverTime
					
					            })
        };
        results.Dump();
    </pre>

</asp:Content>

