<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [ApplyFix.js](./CS/WebSite/Scripts/ApplyFix.js) (VB: [ApplyFix.js](./VB/WebSite/Scripts/ApplyFix.js))
* [ApplyPlugin.js](./CS/WebSite/Scripts/ApplyPlugin.js) (VB: [ApplyPlugin.js](./VB/WebSite/Scripts/ApplyPlugin.js))
* [Site.css](./CS/WebSite/Styles/Site.css)
<!-- default file list end -->
# How to use ASPxGridView with the jQuery UI Sortable plugin
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e3836/)**
<!-- run online end -->


<p>This example illustrates how to use the DevExpress ASP.NET control (ASPxGridView) within the <a href="http://jqueryui.com/demos/sortable/"><u>jQuery UI Sortable plugin</u></a>.</p><p>There is an issue when using our controls within jQuery ajax-based plugins:<br />
When these plugins operate containers, they cause multiple evaluating of all script blocks (including our client-side programmatic objects) inside these containers. As a result, the client-side functionality of our controls can be broken.</p><p>We have discussed this issue in greater detail in the following Support Center reports:<br />
1) <a href="https://www.devexpress.com/Support/Center/p/B144365">B144365: ASPxEditors Controls stop working when used with the jQuery UI Dialog</a><br />
2) <a href="https://www.devexpress.com/Support/Center/p/B142903">B142903: ASPxGridView - Problem with the jQuery Sortable plugin</a></p><p>It is necessary to include a small script patch (well-known in our base as the "<strong>PatchJQuery</strong>" script) in either of the following places:<br />
- The end of the <strong>main jQuery</strong> script file;<br />
- After applying<strong> the corresponding jQuery UI plugin</strong>.</p><p>to prevent our script blocks from multiple evaluating.</p><p>In this example, a <strong>correction/patch</strong> script is placed onto a separate "<strong>ApplyFix.js</strong>" file for demonstration purpose.</p>

<br/>


