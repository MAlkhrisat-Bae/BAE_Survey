<%@ Page Language="vb" AutoEventWireup="false" ValidateRequest="True" CodeBehind="survey_page.aspx.vb" Inherits="survey.survey_page" culture="auto" meta:resourcekey="PageResource1" uiculture="Auto" EnableSessionState="True" Strict="true" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<%@ Register assembly="obout_Interface" namespace="Obout.Interface" tagprefix="cc1" %>

<!DOCTYPE HTML>

<html lang="ar-jo">

<head runat="server">
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
        .style2
        {
            font-family:"HelveticaNeueLTArabic-Bold";
            vertical-align:"middle";
        }
        .style72
        {
            height: 31px;
            font-family:"HelveticaNeueLTArabic-Bold";
        }

        .style76
        {
            width: 100%;
            height:24px;
            border-width:0px;
        }

        .style77
        {
            width: 369px;
        }

        .style79
        {
            width: 275px;
        }

        .style80
        {
            width: 100%;
        }

        .style83
        {
            width: 30px;
        }
        .style84
        {
            width: 486px;
        }

        .style85
        {
            font-family: "HelveticaNeueLTArabic-Bold";
            vertical-align: "middle";
            height: 66px;
        }

        .style86
        {
            height: 32px;
        }

        .style87
        {
            width: 38px;
        }

    </style>
       <script src="Scripts/jquery-1.11.2.min.js" type="text/javascript"></script>

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
    <form runat="server"  dir="<%$ Resources: Direction%>" 
     style= "width:700px;" 
     autocomplete="off" >
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div >
        <table  class="style1" 
            style="font-family: 'HelveticaNeueLTArabic-Bold'" >
            <tr  align="right">
                <td colspan="17">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/logo_company_large.png" 
                        meta:resourcekey="Image1Resource1" />
                  </td>
            </tr>
            <tr>
                <td colspan="17">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            meta:resourcekey="DropDownList1Resource1">
            <asp:ListItem Value="en-us" meta:resourcekey="ListItemResource1">English</asp:ListItem>
            <asp:ListItem Value="AR-JO" meta:resourcekey="ListItemResource2">Arabic</asp:ListItem>
        </asp:DropDownList>
                  </td>
            </tr>
            <tr>
                <td colspan="17">
                  <h2>
                      <asp:Label ID="Label1" runat="server" Text="Etihad Customer Feedback" 
                          meta:resourcekey="Label1Resource1"></asp:Label>
                  </h2>
                  </td>
            </tr>
            <tr>
                <%--                <td colspan="15">
                  <h4>
                 <asp:Label ID="Label2" runat="server" 
                          Text="Please submit your satisfaction responses. This survey is designed to allow Bank al Etihad to monitor and improve your overall customer experience." 
                          meta:resourcekey="Label2Resource1"></asp:Label>
                  </h4>
                  </td>--%>
            </tr>
            <tr>
                <td colspan="17">
                   </td>
            </tr>
            <tr>
                <td colspan="17">
                
              
  
                        <table class="style76">
                            <tr>
                                <td class="style77">
                
                <h4>
                        <asp:Label ID="Label27" runat="server" Text="Are you an existing customer?" 
                            meta:resourcekey="Label27" Width="320px"></asp:Label></h4>
                                </td>
                                <td class="style79">
                
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                        <h4>
                            <asp:RadioButton ID="RDCustomerYes" runat="server" AutoPostBack="True" 
                                GroupName="custval" Text="Yes"  meta:resourcekey="Ryes" Width="70px" 
                                style="margin-left: 5px"/>
                            <asp:RadioButton ID="RDCustomerNo" runat="server" AutoPostBack="True" 
                                GroupName="custval" Text="No"   meta:resourcekey="Rno" Checked="True"/></h4>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                                </td>
                            </tr>
                        </table>
                    
                    </td>

            </tr>
            <tr>
                <td colspan="17">
                   
                        <table class="style76">
                            <tr>
                                <td>
                                <h4 style="margin-bottom: 3px">
                   <asp:Label ID="Label3" runat="server" Text="Customer name:" 
                            meta:resourcekey="Label3Resource1" Width="320px"></asp:Label></h4>
                                </td>
                                <td>
                        <asp:TextBox ID="TB_Cust_name" runat="server"  Width="225px" Font-Bold="True" 
                            Font-Size="Medium" meta:resourcekey="TextBox1Resource1" 
                        style="margin-left: 0px" MaxLength="50"></asp:TextBox>
                        <asp:FilteredTextBoxExtender ID="TB_Cust_name_FilteredTextBoxExtender" 
                          ValidChars="abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZا ب ت ث ج ح خ د ذ ر ز س ش ص ض ط ظ ع غ ف ق ك ل م ن ه و ي ئ ء ؤ ى ة آ "  runat="server" Enabled="True" TargetControlID="TB_Cust_name">
                        </asp:FilteredTextBoxExtender>
                        <asp:Label ID="Label23" runat="server" ForeColor="Red" Text="*" 
                            meta:resourcekey="Label23Resource1"></asp:Label>
                                </td>
                            </tr>
                        </table>

                    </td>
            </tr>
            <tr>
            
                <td  colspan="17">
               
                    <table class="style76">
                        <tr>
                            <td>
                                <asp:UpdatePanel ID="UpdatePanel19" runat="server">
                                    <ContentTemplate>
                                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                            <ContentTemplate>
                                                <h4 style="margin-bottom: 0px">
                                                    <asp:Label ID="Label4" runat="server" meta:resourcekey="Label4Resource1" 
                                Text="Mobile number registered at Bank al Etihad:" Visible="False" Width="320px"></asp:Label>
                                                </h4>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                            <td>
                                <asp:UpdatePanel ID="UpdatePanel20" runat="server">
                                    <ContentTemplate>
                                        <asp:TextBox ID="TB_cust_Phone" runat="server" Font-Bold="True" 
                                            Font-Size="Medium"  meta:resourcekey="TextBox2Resource1" 
                                            Visible="False" Width="225px" MaxLength="16"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="TB_cust_Phone_FilteredTextBoxExtender" 
                                            runat="server" Enabled="True" TargetControlID="TB_cust_Phone" 
                                            ValidChars="0123456789+">
                                        </asp:FilteredTextBoxExtender>
                                        <asp:Label ID="Label24" runat="server" ForeColor="Red" 
                                            meta:resourcekey="Label24Resource1" Text="*" Visible="False"></asp:Label>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>
                        </tr>
                    </table>

                    </td>
                    
            </tr>
            <tr>
            
                <td  colspan="17">
                
                    <table class="style76">
                        <tr>
                            <td>
                   <h4 style="margin-bottom: 0px"> <asp:Label ID="Label22" runat="server" 
                        Text="How have you dealt with Bank al Etihad:  " 
                        meta:resourcekey="Label22Resource1" Width="320px"></asp:Label> </h4>
                            </td>
                            <td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="DR_Dealt_list" runat="server" AutoPostBack="True" 
                                meta:resourcekey="DropDownList2Resource1" Width="222px">
                            </asp:DropDownList>
                            <asp:Label ID="Label25" runat="server" ForeColor="Red" 
                                meta:resourcekey="Label25Resource1" Text="*"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                            </td>
                        </tr>
                    </table>
                   
                </td>
            </tr>
            <tr>
            
                <td  colspan="17">
                    
                        <table class="style76">
                            <tr>
                                <td>
                    
                                    <asp:UpdatePanel ID="UpdatePanel21" runat="server">
                                        <ContentTemplate>
                                           <h4> <asp:Label ID="Label9" runat="server" 
                        Text="Please State:" 
                        meta:resourcekey="Label2Resource12" Visible="False" 
    Width="320px"></asp:Label></h4>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                    
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="TB_Others" runat="server" Visible="False" Width="220px"></asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="TB_Others_FilteredTextBoxExtender" 
                                runat="server" Enabled="True" TargetControlID="TB_Others" 
                                ValidChars="abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZا ب ت ث ج ح خ د ذ ر ز س ش ص ض ط ظ ع غ ف ق ك ل م ن ه ئ ء ؤ ى ة آ و ي">
                            </asp:FilteredTextBoxExtender>
                            <asp:Label ID="Label26" runat="server" ForeColor="Red" 
                                meta:resourcekey="Label25Resource1" Text="*" Visible="False"></asp:Label>
                        </ContentTemplate>
                        
                    </asp:UpdatePanel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                    
                                    <asp:UpdatePanel ID="UpdatePanel221" runat="server">
                                        <ContentTemplate>
                                           <h4> 
                                               <asp:Label ID="Label31" runat="server" 
                        Text="Branch" 
                        meta:resourcekey="Label2branch" Visible="False" 
    Width="320px"></asp:Label></h4>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </td>
                                <td>
                    

                                    <asp:UpdatePanel ID="UpdatePanel222" runat="server">
                                        <ContentTemplate>
                                            <asp:DropDownList ID="LST_Branch" runat="server"  Width="222px" Visible="False">
                                            </asp:DropDownList>
                                            <asp:Label ID="Label30" runat="server" ForeColor="Red" 
                                                meta:resourcekey="Label25Resource1" Text="*" Visible="False"></asp:Label>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                    

                                </td>
                            </tr>
                        </table>
                    
                </td>
            </tr>
            <tr>
            
                <td  colspan="17">

                    <h4>
                        <asp:Label ID="Label32" runat="server" meta:resourcekey="Scale" 
                            Text="On scale from very good (5) to very poor (1), please rate your satisfaction regarding:"></asp:Label>
                    </h4>
                </td>
            </tr>
           
            <tr>
            
                <td  colspan="3">

                    </td>
            
                <td  colspan="2">

                    </td>
            
                <td>

                    </td>
            
                <td>

                    </td>
            
                <td>

                    </td>
            
                <td>

                    <asp:Label ID="Label34" runat="server" Text="Very Poor" 
                        meta:resourcekey="V_poor" style="text-align:center" 
                        Width="84px" ></asp:Label>

                    </td>
            
                <td>

                    </td>
            
                <td>

                    </td>
            
                <td>

                    </td>
            
                <td>

                    </td>
            
                <td>

                    </td>
            
                <td>

                    </td>
            
                <td>

                    </td>
            
                <td>

                    <asp:Label ID="Label35" runat="server" Text="Very Good" 
                        meta:resourcekey="V_good" style="text-align:center" 
                        Width="82px" ></asp:Label>

                </td>
            </tr>
           
            <tr>
            
                <td  colspan="17" class="style86">
                 
                    
                                  
                    
                   

                    <asp:UpdatePanel ID="UpdatePanel223" runat="server">
                        <ContentTemplate>
                       
                            <asp:Label ID="Label33" runat="server" meta:resourcekey="Overall" 
                                Text="1- Your overall experience at Bank al Etihad" Width="330px"></asp:Label>
                            <asp:RadioButton ID="A1_1" runat="server" AutoPostBack="True" 
                                GroupName="A1_group" meta:resourcekey="A10Resource1" Text="1" Width="65px" />
                            <asp:RadioButton ID="A1_2" runat="server" AutoPostBack="True" 
                                GroupName="A1_group" meta:resourcekey="A11Resource1" Text="2" Width="65px" />
                            <asp:RadioButton ID="A1_3" runat="server" AutoPostBack="True" 
                                GroupName="A1_group" meta:resourcekey="A12Resource1" Text="3" Width="65px" />
                            <asp:RadioButton ID="A1_4" runat="server" AutoPostBack="True" 
                                GroupName="A1group" meta:resourcekey="A13Resource1" Text="4" Width="65px" />
                            <asp:RadioButton ID="A1_5" runat="server" AutoPostBack="True" 
                                GroupName="A1_group" meta:resourcekey="A14Resource1" Text="5" Width="65px" />
                                
                        </ContentTemplate>
                    </asp:UpdatePanel>
                                  
                    
                   

                </td>
            
            </tr>
            <tr>
            
                <td  colspan="17" class="style86">

                    

                    <asp:UpdatePanel ID="UpdatePanel224" runat="server">
                        <ContentTemplate>
                        
                       
                            <asp:Label ID="Label2" runat="server" meta:resourcekey="Speed" 
                                Text="2- The speed of service at Bank al Etihad                 " Width="330px"></asp:Label>
                            <asp:RadioButton ID="A2_1" runat="server" AutoPostBack="True" 
                                GroupName="A2_group" meta:resourcekey="A10Resource1" Text="1" Width="65px" />
                            <asp:RadioButton ID="A2_2" runat="server" AutoPostBack="True" 
                                GroupName="A2_group" meta:resourcekey="A11Resource1" Text="2" Width="65px" />
                            <asp:RadioButton ID="A2_3" runat="server" AutoPostBack="True" 
                                GroupName="A2_group" meta:resourcekey="A12Resource1" Text="3" Width="65px" />
                            <asp:RadioButton ID="A2_4" runat="server" AutoPostBack="True" 
                                GroupName="A2_group" meta:resourcekey="A13Resource1" Text="4" Width="65px" />
                            <asp:RadioButton ID="A2_5" runat="server" AutoPostBack="True" 
                                GroupName="A2_group" meta:resourcekey="A14Resource1" Text="5" Width="65px" />
                                
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </td>
            
            </tr>
              <tr>
            
                <td  colspan="17" class="style86">

                    

                    <asp:UpdatePanel ID="UpdatePanel225" runat="server">
                        <ContentTemplate>
                      
                        
                            <asp:Label ID="Label29" runat="server" meta:resourcekey="Quality" 
                            Text="3- The quality of service at Bank al Etihad" 
    Width="330px"></asp:Label>
                            <asp:RadioButton ID="A3_1" runat="server" AutoPostBack="True" 
                                GroupName="A3_group" meta:resourcekey="A10Resource1" Text="1" Width="65px" />
                            <asp:RadioButton ID="A3_2" runat="server" AutoPostBack="True" 
                                GroupName="A3_group" meta:resourcekey="A11Resource1" Text="2" Width="65px" />
                            <asp:RadioButton ID="A3_3" runat="server" AutoPostBack="True" 
                                GroupName="A3_group" meta:resourcekey="A12Resource1" Text="3" Width="65px" />
                            <asp:RadioButton ID="A3_4" runat="server" AutoPostBack="True" 
                                GroupName="A3_group" meta:resourcekey="A13Resource1" Text="4" Width="65px" />
                            <asp:RadioButton ID="A3_5" runat="server" AutoPostBack="True" 
                                GroupName="A3_group" meta:resourcekey="A14Resource1" Text="5" Width="65px" />
                                
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </td>
            
            </tr>
              <tr>
            
                <td  colspan="17" class="style86">

                    </td>
            
            </tr>
            <tr>
            
                <td  colspan="17">

                    <h4>
                        <asp:Label ID="Label36" runat="server" meta:resourcekey="Easy" 
                            Text="How easy was it to get the service you wanted during your last interaction?"></asp:Label>
                    </h4>
                </td>
            </tr>
           
            <tr>
            
                <td>

                    <asp:Label ID="Label39" runat="server" Text="Very Difficult" 
                        meta:resourcekey="V_Difficult" style="text-align:center" 
                        Width="110px" ></asp:Label>

                    </td>
            
                <td>

                    </td>
            
                <td>

                    </td>
            
                <td class="style87">

                    </td>
            
                <td class="style87" colspan="2">

                    <asp:Label ID="Label38" runat="server" Text="Very Easy" 
                        meta:resourcekey="V_Easy" style="text-align:center" 
                        Width="77px" Height="27px" ></asp:Label>

                    </td>
            
                <td colspan="3">

                    </td>
            
                <td colspan="2">

                 </td>
            
                <td colspan="3">

                    </td>
            
                <td>

                    </td>
            
                <td  colspan="2">

                    </td>
            </tr>
           
            <tr>
            
                <td  colspan="17">

                                    <asp:UpdatePanel ID="UpdatePanel226" runat="server">
                                        <ContentTemplate>
                                        <h4>
                                            <asp:RadioButton ID="A4_1" runat="server" AutoPostBack="True" 
                                                GroupName="A4_group" meta:resourcekey="A10Resource1" Text="1" Width="65px" />
                                            <asp:RadioButton ID="A4_2" runat="server" AutoPostBack="True" 
                                                GroupName="A4_group" meta:resourcekey="A11Resource1" Text="2" Width="65px" />
                                            <asp:RadioButton ID="A4_3" runat="server" AutoPostBack="True" 
                                                GroupName="A4_group" meta:resourcekey="A12Resource1" Text="3" Width="65px" />
                                            <asp:RadioButton ID="A4_4" runat="server" AutoPostBack="True" 
                                                GroupName="A4_group" meta:resourcekey="A13Resource1" Text="4" Width="65px" />
                                            <asp:RadioButton ID="A4_5" runat="server" AutoPostBack="True" 
                                                GroupName="A4_group" meta:resourcekey="A14Resource1" Text="5" Width="65px" />
                                                </h4>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                </td>
            </tr>
           
            <tr>
            
                <td  colspan="17">

                <h4>
                    <asp:Label ID="Label5" runat="server" 
                        Text="Please state how likely you are to recommend Bank al Etihad to your family/friends?" 
                        meta:resourcekey="Label5Resource1"></asp:Label>
               </h4>
                </td>
            </tr>
           
            <tr>
            
                <td class="style85" colspan="17" >
                                        <table class="style80">
                            <tr>
                                <td class="style83">
                <div style="margin-left:auto; margin-right:auto; text-align: center;width:70px">
                    <asp:Label ID="Label6" runat="server" Text="Not at all likely" 
                        meta:resourcekey="Label6Resource1" 
                        Font-Overline="False" Width="70px" ></asp:Label>
                        </div>
                                </td>
                                <td class="style84">
              <div style="margin-left: auto; margin-right: auto; text-align:center;width:328px">
                    <asp:Label ID="Label7" runat="server" Text="Neutral" 
                        meta:resourcekey="Label7Resource1" style="text-align:center" Width="60px" ></asp:Label>

                        </div>
                                </td>
                                <td>
                <div style="margin-left:auto; margin-right:auto; text-align: center;width:100px;">
                    <asp:Label ID="Label8" runat="server" Text="Extremely likely" 
                        meta:resourcekey="Label8Resource1" Width="60px" ></asp:Label>
                        </div>
                                </td>
                            </tr>
                    </table>
                </td>
            
                </tr>
                 <tr>
             
                <td class="style2" colspan="17"/>
              
                            <asp:UpdatePanel ID="UpdatePanel15" runat="server">
                                <ContentTemplate>
                                    <asp:RadioButton ID="A00" runat="server" AutoPostBack="True" 
                                GroupName="A1group" meta:resourcekey="A10Resource0" Text="0" Width="57px" />
                                    <asp:RadioButton ID="A10" runat="server" AutoPostBack="True" 
                                        GroupName="A1group" meta:resourcekey="A10Resource1" Text="1" 
                                        Width="57px" />
                                    <asp:RadioButton ID="A11" runat="server" AutoPostBack="True" 
                                        GroupName="A1group" meta:resourcekey="A11Resource1" Text="2" 
                                        Width="57px" />
                                    <asp:RadioButton ID="A12" runat="server" AutoPostBack="True" 
                                        GroupName="A1group" meta:resourcekey="A12Resource1" Text="3" 
                                        Width="57px" />
                                    <asp:RadioButton ID="A13" runat="server" AutoPostBack="True" 
                                        GroupName="A1group" meta:resourcekey="A13Resource1" Text="4" 
                                        Width="57px" />
                                    <asp:RadioButton ID="A14" runat="server" AutoPostBack="True" 
                                        GroupName="A1group" meta:resourcekey="A14Resource1" Text="5" 
                                        Width="57px" />
                                    <asp:RadioButton ID="A15" runat="server" AutoPostBack="True" 
                                        GroupName="A1group" meta:resourcekey="A15Resource1" Text="6" 
                                        Width="57px" />
                                    <asp:RadioButton ID="A16" runat="server" AutoPostBack="True" 
                                        GroupName="A1group" meta:resourcekey="A16Resource1" Text="7" 
                                        Width="57px" />
                                    <asp:RadioButton ID="A17" runat="server" AutoPostBack="True" 
                                        GroupName="A1group" meta:resourcekey="A17Resource1" Text="8" 
                                        Width="57px" />
                                    <asp:RadioButton ID="A18" runat="server" AutoPostBack="True" 
                                        GroupName="A1group" meta:resourcekey="A18Resource1" Text="9" 
                                        Width="57px" />
                                    <asp:RadioButton ID="A19" runat="server" AutoPostBack="True" 
                                        GroupName="A1group" meta:resourcekey="A19Resource1" Text="10" 
                                        Width="57px" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                     
                    </tr>
            <tr>
                <td colspan="17" class="style72">
                <h4>
                    <asp:Label ID="Label16" runat="server" Text="Request a call back?" 
                        meta:resourcekey="Label16Resource1"></asp:Label></h4>
                </td>
            </tr>
            <tr>
                <td colspan="17">
                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                        <ContentTemplate>
                            <asp:RadioButton ID="R_Yes" runat="server" Text="Yes" AutoPostBack="True" 
                        meta:resourcekey="R_YesResource1" 
    GroupName="Contact_group" Width="120px" />
                            <asp:RadioButton ID="R_No" runat="server" AutoPostBack="True" 
                                GroupName="Contact_group" meta:resourcekey="R_NoResource1" Text="No" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td colspan="17">
                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label17" runat="server" Font-Italic="True" 
                                meta:resourcekey="Label17Resource1" 
                                Text="Please insert your preferred call back medium:" Visible="False"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td colspan="9">
                    <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                        <ContentTemplate>
                       
                            <asp:Label ID="Label40" meta:resourcekey="Mobile_Lb" runat="server" 
                                Text="Mobile Number:" Width="150px" Visible="False"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td colspan="5">
                            <asp:UpdatePanel ID="UpdatePanel227" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="TB_contact_phone" runat="server" Font-Size="Medium" 
                                        MaxLength="16" meta:resourcekey="TextBox4Resource1" Visible="False" 
                                        Width="173px"></asp:TextBox>
                                    <asp:MaskedEditExtender ID="TB_contact_phone_MaskedEditExtender" runat="server" 
                                        Century="2000" ClearTextOnInvalid="True" CultureAMPMPlaceholder="" 
                                        CultureCurrencySymbolPlaceholder="" CultureDateFormat="" 
                                        CultureDatePlaceholder="" CultureDecimalPlaceholder="" 
                                        CultureThousandsPlaceholder="" CultureTimePlaceholder="" Enabled="True" 
                                        Filtered="0" Mask="9999999999999999" PromptCharacter="" 
                                        TargetControlID="TB_contact_phone">
                                    </asp:MaskedEditExtender>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                </td>
                <td colspan="3">
                    </td>
            </tr>
            <tr>
                <td colspan="17">
                
                    <asp:UpdatePanel ID="UpdatePanel14" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label28" runat="server" Text="Label" 
                                meta:resourcekey="LBcontact_time" Width="350px" Visible="False"></asp:Label>
                            <asp:RadioButton ID="Rdmorning" runat="server" Checked="True" 
                                GroupName="ConTime" Text="Mornind" Width="100px" Visible="False" meta:resourcekey="R_morning" />
                            <asp:RadioButton ID="rdEvening" runat="server" GroupName="ConTime" 
                                Text="Evening" Visible="False" meta:resourcekey="R_evening" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td colspan="17">
                
                    <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                        <ContentTemplate>
                        
                            <asp:UpdatePanel ID="UpdatePanel229" runat="server">
                                <ContentTemplate>
<h4>
                                    <asp:Label ID="Label19" runat="server" meta:resourcekey="Label19Resource1" 
                                        Text="OR" Visible="False"></asp:Label>
                                        </h4>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                    
                                
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td colspan="9">
                    <asp:UpdatePanel ID="UpdatePanel13" runat="server">
                        <ContentTemplate>

                            <asp:Label ID="Label41" meta:resourcekey="Email_Lb" runat="server" 
                                Text="Email Address :" Width="150px" Visible="False"></asp:Label>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td colspan="5">
                            <asp:UpdatePanel ID="UpdatePanel228" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="TB_contact_Email" runat="server" Font-Size="Medium" 
                                        meta:resourcekey="TextBox5Resource1" Visible="False" Width="168px"></asp:TextBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                </td>
                <td colspan="3">
                   </td>
            </tr>
            <tr>
                <td colspan="17">
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
