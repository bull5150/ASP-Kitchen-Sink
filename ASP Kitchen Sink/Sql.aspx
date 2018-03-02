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
                    CssClass="table table-bordered table-condensed" SelectedIndex="0" DataSourceID="aspexample_db" Width="95%" DataKeyNames="indexer" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="indexer" HeaderText="Index" InsertVisible="False" ReadOnly="True" SortExpression="indexer" />
                        <asp:BoundField DataField="todate" HeaderText="To Date" SortExpression="todate" />
                        <asp:BoundField DataField="fromdate" HeaderText="From Date" SortExpression="fromdate" />
                        <asp:BoundField DataField="daydifference" HeaderText="Difference" SortExpression="daydifference" />
                        <asp:BoundField DataField="radiotext" HeaderText="Radio" SortExpression="radiotext" />
                        <asp:BoundField DataField="commentbox" HeaderText="Comment Box" SortExpression="commentbox" />
                        <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                        <asp:BoundField DataField="email" HeaderText="Email @" SortExpression="email" />
                        <asp:BoundField DataField="phone" HeaderText="Phone #" SortExpression="phone" />
                        <asp:BoundField DataField="basicdropdowntext" HeaderText="Drop Down" SortExpression="basicdropdowntext" />
                        <asp:BoundField DataField="dropdowntext" HeaderText="Sql Dropdown" SortExpression="dropdowntext" />
                        <asp:CommandField HeaderText="Edit or Delete" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <HeaderStyle CssClass="headersheader" />
                    <AlternatingRowStyle CssClass="altRow" />
                    <SelectedRowStyle CssClass="warning" />
                    <PagerSettings Mode="NextPreviousFirstLast" />
                    <PagerStyle CssClass="" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="aspexample_db" runat="server" ConnectionString="<%$ ConnectionStrings:aspexample_database %>" DeleteCommand="DELETE FROM [form_data] WHERE [indexer] = @indexer" InsertCommand="INSERT INTO [form_data] ([todate], [fromdate], [daydifference], [radiotext], [commentbox], [firstname], [lastname], [email], [phone], [basicdropdowntext], [dropdowntext]) VALUES (@todate, @fromdate, @daydifference, @radiotext, @commentbox, @firstname, @lastname, @email, @phone, @basicdropdowntext, @dropdowntext)" SelectCommand="SELECT [indexer], [todate], [fromdate], [daydifference], [radiotext], [commentbox], [firstname], [lastname], [email], [phone], [basicdropdowntext], [dropdowntext] FROM [form_data]" UpdateCommand="UPDATE [form_data] SET [todate] = @todate, [fromdate] = @fromdate, [daydifference] = @daydifference, [radiotext] = @radiotext, [commentbox] = @commentbox, [firstname] = @firstname, [lastname] = @lastname, [email] = @email, [phone] = @phone, [basicdropdowntext] = @basicdropdowntext, [dropdowntext] = @dropdowntext WHERE [indexer] = @indexer">
                    <DeleteParameters>
                        <asp:Parameter Name="indexer" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="todate" />
                        <asp:Parameter DbType="Date" Name="fromdate" />
                        <asp:Parameter Name="daydifference" Type="Int32" />
                        <asp:Parameter Name="radiotext" Type="String" />
                        <asp:Parameter Name="commentbox" Type="String" />
                        <asp:Parameter Name="firstname" Type="String" />
                        <asp:Parameter Name="lastname" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="basicdropdowntext" Type="String" />
                        <asp:Parameter Name="dropdowntext" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="todate" />
                        <asp:Parameter DbType="Date" Name="fromdate" />
                        <asp:Parameter Name="daydifference" Type="Int32" />
                        <asp:Parameter Name="radiotext" Type="String" />
                        <asp:Parameter Name="commentbox" Type="String" />
                        <asp:Parameter Name="firstname" Type="String" />
                        <asp:Parameter Name="lastname" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter Name="basicdropdowntext" Type="String" />
                        <asp:Parameter Name="dropdowntext" Type="String" />
                        <asp:Parameter Name="indexer" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
</asp:Content>
