<%@ Page Title="Sql" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sql.aspx.cs" Inherits="ASP_Kitchen_Sink.Sql" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1><%: Title %></h1>
        <p class="lead">Below is an example of a Data Grid that can be edited.  This is data from the form entry page.</p>
    </div>
    <%-- GridView control --%>
            <div class="col-xs-6">
                <asp:GridView ID="grdFormData" runat="server"
                    AutoGenerateColumns="False"
                    AllowPaging="True"
                    CssClass="table table-bordered table-condensed" SelectedIndex="0" DataSourceID="SqlDataSource1" Width="1533px">
                    <Columns>
                        <asp:BoundField DataField="indexer" HeaderText="indexer" InsertVisible="False" ReadOnly="True" SortExpression="indexer">
                        </asp:BoundField>
                        <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                        <asp:BoundField DataField="phone" HeaderText="Phone #" SortExpression="phone" />
                        <asp:BoundField DataField="email" HeaderText="Email @" SortExpression="email" />
                        <asp:BoundField DataField="todate" HeaderText="To Date" SortExpression="todate">
                        </asp:BoundField>
                        <asp:BoundField DataField="fromdate" HeaderText="From Date" SortExpression="fromdate" />
                        <asp:BoundField DataField="daydifference" HeaderText="Day Diff" SortExpression="daydifference" />
                        <asp:BoundField DataField="radiotext" HeaderText="Radio BTN" SortExpression="radiotext" />
                        <asp:BoundField DataField="dropdowntext" HeaderText="Sql Dropdown" SortExpression="dropdowntext" />
                        <asp:BoundField DataField="basicdropdowntext" HeaderText="Drop Down" SortExpression="basicdropdowntext" />
                        <asp:BoundField DataField="commentbox" HeaderText="Comment Box" SortExpression="commentbox" />
                    </Columns>
                    <HeaderStyle CssClass="headersheader" />
                    <AlternatingRowStyle CssClass="altRow" />
                    <SelectedRowStyle CssClass="warning" />
                    <PagerSettings Mode="NextPreviousFirstLast" />
                    <PagerStyle CssClass="" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspexample_database %>" SelectCommand="SELECT [indexer], [todate], [fromdate], [dropdownvalue], [daydifference], [radiotext], [commentbox], [firstname], [dropdowntext], [basicdropdowntext], [basicdropdown], [phone], [email], [lastname] FROM [form_data] ORDER BY [indexer]"></asp:SqlDataSource>
            </div>
</asp:Content>
