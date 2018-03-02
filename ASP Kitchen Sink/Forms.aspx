<%@ Page Title="Forms" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="ASP_Kitchen_Sink.Forms" %>

    <asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

        <div class="jumbotron">
            <h1><%: Title %></h1>
            <p class="lead">Below is an example of form entry with data validation as well as a write to a database.  Entries here will show up on the SQL data page</p>
        </div>

        <h3>Basic Forms</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                            ControlToValidate="txtFirstName" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                            ControlToValidate="txtLastName" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Email address</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                            ControlToValidate="txtEmail" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                            ControlToValidate="txtEmail" Text="Must be valid email address" 
                            Display="Dynamic" CssClass="text-danger"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Telephone number</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                            ControlToValidate="txtPhone" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                            ControlToValidate="txtPhone" Text="Use this format: 999-999-9999"
                            Display="Dynamic" CssClass="text-danger" 
                            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                        </asp:RegularExpressionValidator>    
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Basic Drop Down</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddldropdownbasic" runat="server" CssClass="form-control" DataTextField="indexer" DataValueField="indexer">
                            <asp:ListItem>Option 1</asp:ListItem>
                            <asp:ListItem>Option 2</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="* means that the field is required" CssClass="text-danger" />
                <h3>Specialty Forms</h3>
                <div class="form-group">
                    <label class="col-sm-3 control-label">From Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtFromDate" runat="server" TextMode="DateTime"
                             CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvFromDate" runat="server" 
                            ControlToValidate="txtFromDate" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvFromDate" runat="server" Text="Must be a valid date" CssClass="text-danger"
                            Display="Dynamic" ControlToValidate="txtFromDate" Type="Date" Operator="DataTypeCheck">
                        </asp:CompareValidator>
                    </div>

                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">To Date</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtToDate" runat="server" TextMode="DateTime"
                             CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvToDate" runat="server" 
                            ControlToValidate="txtToDate" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvToDate" runat="server" 
                            ControlToValidate="txtToDate" ControlToCompare="txtFromDate" Type="Date" 
                            text="Must be after From date" Operator="GreaterThan" 
                            Display="Dynamic"  CssClass="text-danger">
                        </asp:CompareValidator><br />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-3 control-label">Drop Down with SQL Data</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddldropdownsql" runat="server" CssClass="form-control" DataSourceID="aspexample" DataTextField="value" DataValueField="indexer">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="aspexample" runat="server" ConnectionString="<%$ ConnectionStrings:aspexample_database %>" SelectCommand="SELECT * FROM [dropdownlist_one] ORDER BY [indexer]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label">Radio Buttons</label>
                    <div class="col-sm-9 bedtype">
                        <asp:RadioButton ID="rdoOne" runat="server" Text="Option 1" GroupName="radio" />
                        <asp:RadioButton ID="rdoTwo" runat="server" Text="Option 2" GroupName="radio" />
                        <asp:RadioButton ID="rdoThree" runat="server" Text="Option 3" GroupName="radio" />
                    </div>
                </div>

                <h3>Multiline Text Box</h3>
                <div class="form-group">
                    <div class="col-sm-7">
                        <asp:TextBox ID="txtTextBox" runat="server" TextMode="Multiline"
                             Rows="4" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <%-- Submit and Clear buttons --%>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                             CssClass="btn btn-primary" OnClick="btnSubmit_Click"  />
                        <asp:Button ID="btnClear" runat="server" Text="Clear"
                             CssClass="btn btn-primary" OnClick="btnClear_Click" CausesValidation="false"  />
                    </div>
                </div> 
            
                <%-- message label --%>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-11">
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>
        </asp:Content>
