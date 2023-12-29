<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [ImageLink.ascx](./CS/ImageLink.ascx) (VB: [ImageLink.ascx](./VB/ImageLink.ascx))
* [ImageLink.ascx.cs](./CS/ImageLink.ascx.cs) (VB: [ImageLink.ascx.vb](./VB/ImageLink.ascx.vb))
<!-- default file list end -->
# ASPxHyperLink - How to create a hyperlink that contains both Binary image and text elements


<p>The <a href="https://www.devexpress.com/Support/Center/p/E4972">ASPxHyperLink - How to create a hyperlink that contains both image and text elements</a> example demonstrates how to show an image inside a hyperlink. If you want to show a binary image, it is necessary to convert it in the following manner:</p>


```cs
ASPxHyperLink.Text = String.Format("<img src='data:image/png;base64,{0}'/>{1}", Convert.ToBase64String(this.image), this.text)
```



<br/>


