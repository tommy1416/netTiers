﻿<%@ Control Language="C#" ClassName="CurrencyFields" %>

<asp:FormView ID="FormView1" runat="server">
	<ItemTemplate>
		<table border="0" cellpadding="3" cellspacing="1">
			<tr>
        <td class="literal"><asp:Label ID="lbldataCurrencyCode" runat="server" Text="Currency Code:" AssociatedControlID="dataCurrencyCode" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataCurrencyCode" Text='<%# Bind("CurrencyCode") %>' MaxLength="3"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataCurrencyCode" runat="server" Display="Dynamic" ControlToValidate="dataCurrencyCode" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataName" runat="server" Text="Name:" AssociatedControlID="dataName" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataName" Text='<%# Bind("Name") %>' MaxLength="50"></asp:TextBox><asp:RequiredFieldValidator ID="ReqVal_dataName" runat="server" Display="Dynamic" ControlToValidate="dataName" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
        <td class="literal"><asp:Label ID="lbldataModifiedDate" runat="server" Text="Modified Date:" AssociatedControlID="dataModifiedDate" /></td>
        <td>
					<asp:TextBox runat="server" ID="dataModifiedDate" Text='<%# Bind("ModifiedDate", "{0:d}") %>' MaxLength="10"></asp:TextBox><asp:ImageButton ID="cal_dataModifiedDate" runat="server" SkinID="CalendarImageButton" OnClientClick="javascript:showCalendarControl(this.previousSibling);return false;" /><asp:RequiredFieldValidator ID="ReqVal_dataModifiedDate" runat="server" Display="Dynamic" ControlToValidate="dataModifiedDate" ErrorMessage="Required"></asp:RequiredFieldValidator>
				</td>
			</tr>
			
		</table>

	</ItemTemplate>
</asp:FormView>


