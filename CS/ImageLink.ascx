<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ImageLink.ascx.cs" Inherits="ImageLink" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<style>
.hyperlink_ff img {
    padding-bottom:2px;
}

.hyperlink img {
    padding-bottom:3px;
}

.hyperlink_ie img, 
.hyperlink_ff img,
.hyperlink img {
    vertical-align: bottom;
}

a.dxeHyperlink,
a.dxeHyperlink:hover {
     text-decoration:none;
     border-bottom: 1px solid #0d45b7;
}

a.dxeHyperlink:visited,
a.dxeHyperlink:visited:hover,
a.dxeHyperlink:visited img,
a.dxeHyperlink:visited:hover img {
    border-bottom-color: #ab59a6;
}

a.dxeHyperlink:hover,
a.dxeHyperlink:hover img {
    border-bottom-color: #5494ea;
}

a.dxeHyperlink_BlackGlass,
a.dxeHyperlink_BlackGlass:hover {
     text-decoration:none;
     border-bottom: 1px solid #0d45b7;
}

a.dxeHyperlink_BlackGlass:visited,
a.dxeHyperlink_BlackGlass:visited:hover,
a.dxeHyperlink_BlackGlass:visited img,
a.dxeHyperlink_BlackGlass:visited:hover img {
    border-bottom-color: #800080;
}

a.dxeHyperlink_BlackGlass:hover,
a.dxeHyperlink_BlackGlass:hover img {
    border-bottom-color: #ff9600;
}
</style>
<dx:ASPxHyperLink ID="ASPxHyperLink" EncodeHtml="false" runat="server" OnInit="ASPxHyperLink_Init">
</dx:ASPxHyperLink>
