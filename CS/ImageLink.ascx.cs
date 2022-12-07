using DevExpress.Web.Internal;
using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ImageLink : System.Web.UI.UserControl
{
    private byte[] image;
    private string text;

    public string NavigateUrl { 
        get { return ASPxHyperLink.NavigateUrl; } 
        set { ASPxHyperLink.NavigateUrl = value; } 
    }

    public byte[] ImageSrc {
        get { return this.image; }
        set
        {
            this.image = value;
            ASPxHyperLink.Text = String.Format("<img src='{0}'/>{1}", this.image, this.text);
        }
    }
    public string LinkText { 
        get { return this.text; } 
        set 
        {
            this.text = value;
            ASPxHyperLink.Text = String.Format("<img src='data:image/png;base64,{0}'/>{1}", Convert.ToBase64String(this.image), this.text);
            ASPxHyperLink.NavigateUrl = string.Format("javascript:alert('{0}');", this.text);
        } 
    }

    protected void ASPxHyperLink_Init(object sender, EventArgs e)
    {
        if (RenderUtils.Browser.IsFirefox)
            ((ASPxHyperLink)sender).CssClass = "hyperlink_ff";
        else
            ((ASPxHyperLink)sender).CssClass = "hyperlink";
    }
}