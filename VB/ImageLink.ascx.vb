Imports DevExpress.Web.ASPxClasses.Internal
Imports DevExpress.Web.ASPxEditors
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class ImageLink
    Inherits System.Web.UI.UserControl

    Private image() As Byte
    Private text As String

    Public Property NavigateUrl() As String
        Get
            Return ASPxHyperLink.NavigateUrl
        End Get
        Set(ByVal value As String)
            ASPxHyperLink.NavigateUrl = value
        End Set
    End Property

    Public Property ImageSrc() As Byte()
        Get
            Return Me.image
        End Get
        Set(ByVal value As Byte())
            Me.image = value
            ASPxHyperLink.Text = String.Format("<img src='{0}'/>{1}", Me.image, Me.text)
        End Set
    End Property
    Public Property LinkText() As String
        Get
            Return Me.text
        End Get
        Set(ByVal value As String)
            Me.text = value
            ASPxHyperLink.Text = String.Format("<img src='data:image/png;base64,{0}'/>{1}", Convert.ToBase64String(Me.image), Me.text)
            ASPxHyperLink.NavigateUrl = String.Format("javascript:alert('{0}');", Me.text)
        End Set
    End Property

    Protected Sub ASPxHyperLink_Init(ByVal sender As Object, ByVal e As EventArgs)
        If RenderUtils.Browser.IsFirefox Then
            DirectCast(sender, ASPxHyperLink).CssClass = "hyperlink_ff"
        Else
            DirectCast(sender, ASPxHyperLink).CssClass = "hyperlink"
        End If
    End Sub
End Class