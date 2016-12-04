<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="survey._Default" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE HTML>

<html lang="ar-jo">

<head id="Head1" runat="server">
<META HTTP-EQUIV='Pragma' CONTENT='no-cache'> 
<META HTTP-EQUIV='Cache-Control' CONTENT='no-cache'> 
    <title>Bankaletihad Survey</title>
    
    <style type="text/css"  >
        
        
       @font-face {
  font-family: 'HelveticaNeueLTArabic-Bold';
  src:  url('HelveticaNeueLTArabic-Bold.eot?#iefix'),
  url('HelveticaNeueLTArabic-Bold.eot'),
      url('HelveticaNeueLTArabic-Bold.svg'),
       url('HelveticaNeueLTArabic-Bold.ttf'),
        url('HelveticaNeueLTArabic-Bold.woff');
  font-weight: normal;
  font-style: normal;
}
  
        .style1 
        {
            width:100%;
            font-family:"HelveticaNeueLTArabic-Bold";
        }
        
    </style>
    <%--<script src="http://code.jquery.com/jquery-1.9.0.js"></script>

<script src="http://code.jquery.com/jquery-migrate-1.0.0.js"></script>--%>
       <script src="Scripts/jquery-1.11.2.min.js" type="text/javascript"></script>
    <%--   <link href="Scripts/jquery.autocomplete.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.autocomplete.js" type="text/javascript"></script>--%>
    <script type="text/javascript">
        function onCheckA1(val1) {
            $("input[name=A1]").click(function () {
                //                alert(val1);
                alert.valueOf(val1);
            });
        }
    

    </script>
   
</head>
 <body style="margin-bottom:auto;margin-left:300px; width:700px;background-image: url('img/Image Format2.PNG');" >
    <form id="Form1" runat="server"  dir="<%$ Resources: Direction%>" 
     style= "width:700px;" 
     autocomplete="off" >
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div >
        <table  class="style1" 
            style="font-family: 'HelveticaNeueLTArabic-Bold'"  >
            <%--<tr  align="right">--%>
            <tr align="right">
                <td >
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/logo_company_large.png" 
                        meta:resourcekey="Image1Resource1" />
                  </td>
            </tr>
            <tr>
                <td>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            meta:resourcekey="DropDownList1Resource1">
            <asp:ListItem Value="en-us" meta:resourcekey="ListItemResource1">English</asp:ListItem>
            <asp:ListItem Value="AR-JO" meta:resourcekey="ListItemResource2">Arabic</asp:ListItem>
        </asp:DropDownList>
                  </td>
            </tr>
            <tr>
                <td>
                  <h2>
                      <asp:Label ID="Label1" runat="server" Text="Etihad Customer Feedback" 
                          meta:resourcekey="Label1Resource1"></asp:Label>
                  </h2>
                  </td>
            </tr>
            <tr>
                <td>
                  <h4>
                 <asp:Label ID="Label2" runat="server" 
                          Text="Please submit your satisfaction responses. This survey is designed to allow Bank al Etihad to monitor and improve your overall customer experience." 
                          meta:resourcekey="Label2Resource1" ></asp:Label>
                  </h4>
                  </td>
            </tr>
            <tr>
                <td><h4>
                 <asp:Label ID="Label22" runat="server" 
                          Text="The survey is expected to take less than 2 minutes.  " 
                          meta:resourcekey="Label2min" ></asp:Label>
                  </h4>
                  </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" meta:resourcekey="Button1Resource1" 
                        Text="Save" Width="158px" BackColor="#FF9900" BorderStyle="Solid" 
                        Font-Bold="True" Font-Size="Small" ForeColor="White" />
                    <asp:Label ID="Label21" runat="server" meta:resourcekey="Label21Resource1" 
                        ForeColor="#CC3300"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
