<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128530972/14.1.8%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T191115)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
* [ImageLink.ascx](./CS/ImageLink.ascx) (VB: [ImageLink.ascx](./VB/ImageLink.ascx))
* [ImageLink.ascx.cs](./CS/ImageLink.ascx.cs) (VB: [ImageLink.ascx.vb](./VB/ImageLink.ascx.vb))
<!-- default file list end -->
# ASPxHyperLink - How to create a hyperlink that contains both Binary image and text elements
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t191115/)**
<!-- run online end -->


<p>The <a href="https://www.devexpress.com/Support/Center/p/E4972">ASPxHyperLink - How to create a hyperlink that contains both image and text elements</a> example demonstrates how to show an image inside a hyperlink. If you want to show a binary image, it is necessary to convert it in the following manner:</p>


```cs
ASPxHyperLink.Text = String.Format("<img src='data:image/png;base64,{0}'/>{1}", Convert.ToBase64String(this.image), this.text)
```



<br/>


