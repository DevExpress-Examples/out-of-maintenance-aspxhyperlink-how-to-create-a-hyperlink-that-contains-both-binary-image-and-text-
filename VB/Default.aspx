<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Src="ImageLink.ascx" TagName="ImageLink" TagPrefix="uc" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxHyperLink with text and image</title>
</head>
<body>
    <form id="form1" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ads"
        KeyFieldName="CategoryID">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn VisibleIndex="2">
                <DataItemTemplate>
                             <uc:ImageLink runat="server" id="ImageLink" ImageSrc='<%#Eval("Picture")%>' LinkText='<%#Eval("CategoryName")%>' />
                </DataItemTemplate>
            </dx:GridViewDataTextColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [CategoryID], [CategoryName], [Description], [Picture] FROM [Categories]">
    </asp:AccessDataSource>
    </form>
</body>
</html>