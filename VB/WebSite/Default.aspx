<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script src="Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
	<script src="Scripts/jquery-ui.min.js" type="text/javascript"></script>
	<script src="Scripts/ApplyPlugin.js" type="text/javascript"></script>
	<script src="Scripts/ApplyFix.js" type="text/javascript"></script>
	<link href="Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<form id="frmMain" runat="server">
	<div class="column">
		<div class="pane">
			<div class="header">Pane A</div>
			Pane A content
		</div>
	</div>
	<div class="column">
		<div class="pane">
			<div class="header">Pane B</div>
			<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="ds"
				KeyFieldName="CategoryID" Width="100%">
				<Columns>
					<dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0">
						<EditFormSettings Visible="False" />
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2">
					</dx:GridViewDataTextColumn>
				</Columns>
			</dx:ASPxGridView>
			<asp:AccessDataSource ID="ds" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
			</asp:AccessDataSource>
		</div>
	</div>
	<div class="column">
		<div class="pane">
			<div class="header">Pane C</div>
			Pane C content
		</div>
	</div>
	</form>
</body>
</html>