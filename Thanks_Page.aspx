<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Thanks_Page.aspx.vb" Inherits="survey.Thanks_Page" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html >
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<META HTTP-EQUIV='Pragma' CONTENT='no-cache'> 
<META HTTP-EQUIV='Cache-Control' CONTENT='no-cache'>
    <title>BankAlEtihad Survey</title>
    <style type="text/css">
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
            width: 100%;
            font-family:"HelveticaNeueLTArabic-Bold";
            margin-right: 0px;
        }
        .style2
        {
            width: 20px;
            height: 158px;
             font-family:"HelveticaNeueLTArabic-Bold";
        }
        .style3
        {
            height: 158px;
             font-family:"HelveticaNeueLTArabic-Bold";
        }
        .style4
        {
            height: 57px;
             font-family:"HelveticaNeueLTArabic-Bold";
        }
        .style5
        {
            height: 90px;
             font-family:"HelveticaNeueLTArabic-Bold";
        }
        .style7
        {
            height: 57px;
            font-family: "HelveticaNeueLTArabic-Bold";
            width: 268435424px;
        }
    </style>
</head>
<body style="background-image: url('img/Image Format2.png'); width:700px; padding-left:250px;" >
    <form id="form1" runat="server" dir="<%$ Resources: Direction%>">
    <div>
    
        <table class="style1">
            <tr>
                <td align="right" style=" font-family:'HelveticaNeueLTArabic-Bold'" 
                    class="style5" colspan="6"/>
                
                    <asp:Image runat="server"   
                        ImageUrl="~/img/logo_company_large.png" /></tr>
            <tr>
                <td  style="font-family: 'HelveticaNeueLTArabic-Bold'" 
                    class="style2"/>
                
                <td colspan="4"  
                    style="font-family: 'HelveticaNeueLTArabic-Bold'" class="style3">
                    <h2 style="width: 499px; height: 135px; font-family:'HelveticaNeueLTArabic-Bold';">
                        <asp:Label ID="Label1" runat="server" meta:resourcekey="Label1Resource1" 
                            Text="Thank you"></asp:Label>
                    </h2>
                </td>
                <td  style="font-family: 'HelveticaNeueLTArabic-Bold'" 
                    class="style3">
                    </td>
            </tr>
            <tr>
                <td  style="font-family: 'HelveticaNeueLTArabic-Bold'" 
                    class="style2"/>
                
                    <td colspan="4"  
                    style="font-family: 'HelveticaNeueLTArabic-Bold'" class="style3">
                    <h2 style="width: 591px; height: 50px;  font-family:'HelveticaNeueLTArabic-Bold';">
                        <asp:Label ID="Label2" runat="server" meta:resourcekey="Label1Resource12" 
                            Text="Thank you" Visible="False"></asp:Label>
                    </h2>
                </td>
                <td  style="font-family: 'HelveticaNeueLTArabic-Bold'" 
                    class="style3">
                    </td>
            </tr>
            <tr>
                <td  style="font-family: 'HelveticaNeueLTArabic-Bold'" 
                    class="style2"/>
                
                    <td colspan="4"  
                    style="font-family: 'HelveticaNeueLTArabic-Bold'" class="style3">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        meta:resourcekey="LinkButton1Resource1" 
                        PostBackUrl="http://www.bankaletihad.com/">Go to Bank Aletihad online </asp:LinkButton>
                </td>
                <td  style="font-family: 'HelveticaNeueLTArabic-Bold'" 
                    class="style3">
                    </td>
            </tr>
            <tr>
                <td colspan="2" style="font-family: 'HelveticaNeueLTArabic-Bold'" 
                    class="style4">
                    </td>
                <td colspan="2" style="font-family: 'HelveticaNeueLTArabic-Bold'" 
                    class="style7">
                    </td>
                <td colspan="2" style="font-family: 'HelveticaNeueLTArabic-Bold'" 
                    class="style4">
                    </td>
            </tr>
            <tr>
                <td colspan="3" style="font-family: 'HelveticaNeueLTArabic-Bold'">
                    </td>
                <td colspan="3">
                    </td>
            </tr>
            <tr>
                <td colspan="3" style="font-family: 'HelveticaNeueLTArabic-Bold'">
                   </td>
                <td colspan="3">
                    </td>
            </tr>
            <tr>
                <td colspan="2"  
                    style="font-family: 'HelveticaNeueLTArabic-Bold'">
                    </td>
                <td colspan="2"  
                    style="font-family: 'HelveticaNeueLTArabic-Bold'">
                    </td>
                <td colspan="2"  
                    style="font-family: 'HelveticaNeueLTArabic-Bold'">
                    </td>
            </tr>
            <tr>
                <td colspan="3" style="font-family: 'HelveticaNeueLTArabic-Bold'">
                    </td>
                <td colspan="3">
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
