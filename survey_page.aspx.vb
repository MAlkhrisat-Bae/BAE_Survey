Imports System.Globalization
Imports System.Text.RegularExpressions
Imports System.Data.SqlClient

Public Class survey_page
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection(My.Settings.Connection_ST)
    Dim com As New SqlCommand("", con)
    Dim dr As SqlDataReader
    Dim LST_Branch_Branch As Object

    Private Sub survey_page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init




    End Sub
    'Protected Overrides Sub InitializeCulture()
    '    If Request.Form("DropDownList1") IsNot Nothing Then
    '        UICulture = Request.Form("DropDownList1")
    '        Culture = Request.Form("DropDownList1")
    '    End If
    '    MyBase.InitializeCulture()
    'End Sub
    Protected Overrides Sub InitializeCulture()

        Try
            UICulture = Request.Params("u_c").Trim
            Culture = Request.Params("c_v").Trim
            DropDownList1.SelectedValue = Request.Params("u_c").Trim
        Catch ex As Exception

        End Try
        MyBase.InitializeCulture()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            DropDownList1.SelectedValue = Request.Params("u_c").Trim
        Catch ex As Exception

        End Try



        'If IsPostBack Then
        '    RegisterStartupScript("ScrollScript", "document.getElementById('objectId').scrollIntoView(true);")
        'End If




        Dim dt As New DataTable()
        Dim dt_brn As New DataTable()
        If Not IsPostBack Then
            TB_Others.Visible = False
            Label9.Visible = False
            Label26.Visible = False
            If UICulture = "English (United States)" Then
                dt = fill_ComboBox("dealt_list", "ID", "AR_Port", UICulture)
                DR_Dealt_list.DataValueField = "ID"
                DR_Dealt_list.DataTextField = "EN_Port"
            Else
                dt = fill_ComboBox("dealt_list", "ID", "AR_Port", UICulture)
                DR_Dealt_list.DataValueField = "ID"
                DR_Dealt_list.DataTextField = "AR_Port"
            End If

            DR_Dealt_list.DataSource = dt
            DR_Dealt_list.DataBind()

        
        End If
        If UICulture = "English (United States)" And DR_Dealt_list.DataTextField <> "EN_Port" Then
            TB_Others.Visible = False
            Label9.Visible = False
            Label26.Visible = False
            ' Dim dt As New DataTable()
            If UICulture = "English (United States)" Then
                dt = fill_ComboBox("dealt_list", "ID", "AR_Port", UICulture)
                DR_Dealt_list.DataValueField = "ID"
                DR_Dealt_list.DataTextField = "EN_Port"
            Else
                dt = fill_ComboBox("dealt_list", "ID", "AR_Port", UICulture)
                DR_Dealt_list.DataValueField = "ID"
                DR_Dealt_list.DataTextField = "AR_Port"
            End If
            DR_Dealt_list.DataSource = dt
            DR_Dealt_list.DataBind()

        End If
        If UICulture <> "English (United States)" And DR_Dealt_list.DataTextField <> "AR_Port" Then
            TB_Others.Visible = False
            Label9.Visible = False
            Label26.Visible = False
            'Dim dt As New DataTable()
            If UICulture = "English (United States)" Then
                dt = fill_ComboBox("dealt_list", "ID", "EN_Port", UICulture)
                DR_Dealt_list.DataValueField = "ID"
                DR_Dealt_list.DataTextField = "EN_Port"
            Else
                dt = fill_ComboBox("dealt_list", "ID", "AR_Port", UICulture)
                DR_Dealt_list.DataValueField = "ID"
                DR_Dealt_list.DataTextField = "AR_Port"
            End If
            DR_Dealt_list.DataSource = dt
            DR_Dealt_list.DataBind()

        End If

        If Not IsPostBack Then
            If UICulture = "English (United States)" Then
                dt_brn = fill_ComboBox("Branch_list_PR", "ID", "EN_branch", UICulture)
                LST_Branch.DataValueField = "ID"
                LST_Branch.DataTextField = "EN_branch"
            Else
                dt_brn = fill_ComboBox("Branch_list_PR", "ID", "EN_branch", UICulture)
                LST_Branch.DataValueField = "ID"
                LST_Branch.DataTextField = "AR_branch"
            End If
            LST_Branch.DataSource = dt_brn
            LST_Branch.DataBind()
        End If

    End Sub
    Public Function fill_ComboBox(ByVal comstr As String, ByVal value_name As String, ByVal data_name As String, ByVal languge As String) As DataTable
        Dim dt As New DataTable()
        dt.Columns.Add(value_name, GetType(String))
        dt.Columns.Add(data_name, GetType(String))
        com.CommandType = CommandType.StoredProcedure
        com.CommandText = comstr
        Try
            con.Open()
            dr = com.ExecuteReader()
            dt.Load(dr)
            con.Close()
        Catch ex As Exception
            con.Close()
            Dim err As String = ex.Message.Replace(vbNewLine, "")
            Response.Redirect("Thanks_page.aspx" & "?con_status=Please try later")

        End Try
        Return dt
    End Function




    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Response.Redirect("~/Survey_page.aspx?u_c=" + Request.Form("DropDownList1") + "&c_v=" + Request.Form("DropDownList1"))
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        If TB_Cust_name.Text.Trim = "" Then
            If Not UICulture = "English (United States)" Then
                TB_Cust_name.BorderColor = Drawing.Color.FromName("#FF9900")
                Page.SetFocus(TB_Cust_name.ClientID)
            Else
                TB_Cust_name.BorderColor = Drawing.Color.FromName("#FF9900")
                Page.SetFocus(TB_Cust_name.ClientID)
            End If
            Exit Sub
        End If
        TB_Cust_name.BorderColor = Drawing.Color.White
        If RDCustomerYes.Checked = True Then
            If TB_cust_Phone.Text.Trim = "" Or TB_cust_Phone.Text.Trim.Length < 10 Then
                If Not UICulture = "English (United States)" Then
                    TB_cust_Phone.BorderColor = Drawing.Color.FromName("#FF9900")
                    Page.SetFocus(TB_cust_Phone.ClientID)
                Else
                    TB_cust_Phone.BorderColor = Drawing.Color.FromName("#FF9900")
                    Page.SetFocus(TB_cust_Phone.ClientID)
                End If
                Exit Sub
            End If
        End If
        TB_cust_Phone.BorderColor = Drawing.Color.White
        If DR_Dealt_list.SelectedValue.Trim() = 7 Then
            DR_Dealt_list.BorderColor = Drawing.Color.FromName("#FF9900")
            Page.SetFocus(DR_Dealt_list.ClientID)
            Exit Sub
        End If
        DR_Dealt_list.BorderColor = Drawing.Color.White
        If DR_Dealt_list.SelectedValue = 6 Then
            If TB_Others.Text.Trim = "" Then
                TB_Others.BorderColor = Drawing.Color.FromName("#FF9900")
                Page.SetFocus(TB_Others.ClientID)
                Exit Sub
            End If
        End If
        'TB_Branch.BorderColor = Drawing.Color.White
        'If DR_Dealt_list.SelectedValue = 1 Then
        '    If TB_Branch.Text.Trim = "" Then
        '        TB_Branch.BorderColor = Drawing.Color.FromName("#FF9900")
        '        Page.SetFocus(TB_Branch.ClientID)
        '        Exit Sub
        '    End If
        'End If
        'TB_Branch.BorderColor = Drawing.Color.White
        Dim Q1_val As Integer = 0
        If A00.Checked = True Then
            Q1_val = 0
            GoTo Done_Q1
        End If
        If A10.Checked = True Then
            Q1_val = 1
            GoTo Done_Q1
        End If
        If A11.Checked = True Then
            Q1_val = 2
            GoTo Done_Q1
        End If
        If A12.Checked = True Then
            Q1_val = 3
            GoTo Done_Q1
        End If
        If A13.Checked = True Then
            Q1_val = 4
            GoTo Done_Q1
        End If
        If A14.Checked = True Then
            Q1_val = 5
            GoTo Done_Q1
        End If
        If A15.Checked = True Then
            Q1_val = 6
            GoTo Done_Q1
        End If
        If A16.Checked = True Then
            Q1_val = 7
            GoTo Done_Q1
        End If
        If A17.Checked = True Then
            Q1_val = 8
            GoTo Done_Q1
        End If
        If A18.Checked = True Then
            Q1_val = 9
            GoTo Done_Q1
        End If
        If A19.Checked = True Then
            Q1_val = 10
            GoTo Done_Q1
        End If


        If Not UICulture = "English (United States)" Then
            A10.BackColor = Drawing.Color.FromName("#FF9900")
            Page.SetFocus(A10.ClientID)
        Else
            A10.BackColor = Drawing.Color.FromName("#FF9900")
            Page.SetFocus(A10.ClientID)
        End If


        Exit Sub
Done_Q1:
        A10.BackColor = Drawing.Color.White
        'If Q1_val < 4 Then
        '    If TB_reason.Text.Trim() = "" Then

        '        If Not UICulture = "English (United States)" Then
        '            TB_reason.BorderColor = Drawing.Color.Red
        '            Page.SetFocus(TB_reason.ClientID)
        '        Else
        '            TB_reason.BorderColor = Drawing.Color.Red
        '            Page.SetFocus(TB_reason.ClientID)
        '        End If
        '        Exit Sub
        '    End If
        'End If
        'TB_reason.BorderColor = Drawing.Color.White
        'If Q1_val > 7 Then
        '    If TB_reason.Text.Trim() = "" Then

        '        If TB_reason.Text.Trim() = "" Then

        '            If Not UICulture = "English (United States)" Then
        '                TB_reason.BorderColor = Drawing.Color.Red
        '                Page.SetFocus(TB_reason.ClientID)
        '            Else
        '                TB_reason.BorderColor = Drawing.Color.Red
        '                Page.SetFocus(TB_reason.ClientID)
        '            End If
        '        End If
        '        Exit Sub
        '    End If
        'End If
        ' TB_reason.BorderColor = Drawing.Color.Black
        Dim OverAll As Integer = 0
        If A1_1.Checked = True Then
            OverAll = 1
            GoTo Done_Q2
        End If
        If A1_2.Checked = True Then
            OverAll = 2
            GoTo Done_Q2
        End If
        If A1_3.Checked = True Then
            OverAll = 3
            GoTo Done_Q2
        End If
        If A1_4.Checked = True Then
            OverAll = 4
            GoTo Done_Q2
        End If
        If A1_5.Checked = True Then
            OverAll = 5
            GoTo Done_Q2
        End If
Done_Q2:
        Dim Speed_val As Integer = 0
        If A2_1.Checked = True Then
            Speed_val = 1
            GoTo Done_Q3
        End If
        If A2_2.Checked = True Then
            Speed_val = 2
            GoTo Done_Q3
        End If
        If A2_3.Checked = True Then
            Speed_val = 3
            GoTo Done_Q3
        End If
        If A2_4.Checked = True Then
            Speed_val = 4
            GoTo Done_Q3
        End If
        If A2_5.Checked = True Then
            Speed_val = 5
            GoTo Done_Q3
        End If

Done_Q3:
        Dim Qualty_val As Integer = 0
        If A3_1.Checked = True Then
            Qualty_val = 1
            GoTo Done_Q4
        End If
        If A3_2.Checked = True Then
            Qualty_val = 2
            GoTo Done_Q4
        End If
        If A3_3.Checked = True Then
            Qualty_val = 3
            GoTo Done_Q4
        End If
        If A3_4.Checked = True Then
            Qualty_val = 4
            GoTo Done_Q4
        End If
        If A3_5.Checked = True Then
            Qualty_val = 5
            GoTo Done_Q4
        End If
Done_Q4:
        Dim Service_val As Integer = 0
        If A4_1.Checked = True Then
            Service_val = 1
            GoTo Done_Q5
        End If
        If A4_2.Checked = True Then
            Service_val = 2
            GoTo Done_Q5
        End If
        If A4_3.Checked = True Then
            Service_val = 3
            GoTo Done_Q5
        End If
        If A4_4.Checked = True Then
            Service_val = 4
            GoTo Done_Q5
        End If
        If A4_5.Checked = True Then
            Service_val = 5
            GoTo Done_Q5
        End If
        ''  A20.BackColor = Drawing.Color.FromName("#FF9900")
        ' 'Page.SetFocus(A20.ClientID)
        Exit Sub



        'If Not UICulture = "English (United States)" Then
        '    A20.BackColor = Drawing.Color.FromName("#FF9900")
        '    Page.SetFocus(A20.ClientID)
        'Else
        '    A20.BackColor = Drawing.Color.FromName("#FF9900")
        '    Page.SetFocus(A20.ClientID)
        'End If
        Exit Sub
Done_Q5:
        'A20.BackColor = Drawing.Color.White
        Dim contact_val As Integer = 2
        If R_Yes.Checked = True Then
            contact_val = 1
        End If
        If R_No.Checked = True Then
            contact_val = 0
        End If
        If contact_val = 2 Then
            Label21.Text = ""
            Label21.Focus()


            If Not UICulture = "English (United States)" Then
                R_No.BackColor = Drawing.Color.FromName("#FF9900")
                Page.SetFocus(R_No.ClientID)
            Else
                R_No.BackColor = Drawing.Color.FromName("#FF9900")
                Page.SetFocus(R_No.ClientID)
            End If
            Exit Sub
        Else
            R_No.BorderColor = Drawing.Color.White
        End If
        If R_Yes.Checked = True Then

            If TB_contact_phone.Text.Length < 10 And EmailAddressCheck(TB_contact_Email.Text) = False Then
                If UICulture = "English (United States)" Then
                    Page.SetFocus(TB_contact_phone.ClientID)
                    TB_contact_phone.BorderColor = Drawing.Color.FromName("#FF9900")
                    Label21.Text = "Please insert call back medium correctly"
                    Label21.ForeColor = Drawing.Color.Red
                Else
                    Page.SetFocus(TB_contact_phone.ClientID)
                    TB_contact_phone.BorderColor = Drawing.Color.FromName("#FF9900")
                    Label21.Text = "الرجاء ادخال وسيلة الإتصال بالطريقة الصحيحة"
                    Label21.ForeColor = Drawing.Color.Red
                End If
                Exit Sub
            End If
            'If TB_contact_phone.Text.Trim = "" Then
            '    If TB_contact_Email.Text.Trim = "" Then
            '        TB_contact_phone.BorderColor = Drawing.Color.FromName("#FF9900")
            '        Page.SetFocus(TB_contact_phone.ClientID)
            '        Exit Sub
            '    End If
            '    If EmailAddressCheck(TB_contact_Email.Text) = False Then

            '        If Not UICulture = "English (United States)" Then
            '            TB_contact_Email.BorderColor = Drawing.Color.FromName("#FF9900")
            '            Label21.ForeColor = Drawing.Color.Red
            '            Label21.Text = "الرجاءادخال الايميل بطريقه صحيحة"
            '            Page.SetFocus(TB_contact_Email.ClientID)
            '        Else
            '            TB_contact_Email.BorderColor = Drawing.Color.FromName("#FF9900")
            '            Label21.Text = "Invalid Email Format"
            '            Label21.ForeColor = Drawing.Color.Red
            '            Page.SetFocus(TB_contact_Email.ClientID)
            '        End If
            '        Exit Sub

            '    End If
            'Else
            '    If TB_contact_phone.Text.Trim.Trim = "" Then
            '        If Not UICulture = "English (United States)" Then
            '            TB_contact_phone.BorderColor = Drawing.Color.FromName("#FF9900")
            '            Page.SetFocus(TB_contact_phone.ClientID)
            '        Else
            '            TB_contact_phone.BorderColor = Drawing.Color.FromName("#FF9900")
            '            Page.SetFocus(TB_contact_phone.ClientID)
            '        End If
            '        Exit Sub
            '    End If
            'End If
        End If
        'If DR_Dealt_list.SelectedValue = 1 Then
        '    TB_Others.Text = TB_Branch.Text
        'End If
        TB_contact_Email.BorderColor = Drawing.Color.White
        TB_contact_phone.BorderColor = Drawing.Color.White
        com.CommandType = CommandType.StoredProcedure

        com.Parameters.AddWithValue("@Customer_Name", TB_Cust_name.Text)
        com.Parameters.AddWithValue("@Customer_bank_Phone", TB_cust_Phone.Text)
        com.Parameters.AddWithValue("@touch_point", DR_Dealt_list.SelectedValue)
        com.Parameters.AddWithValue("@Qu1_Mark", Q1_val)
        ' com.Parameters.AddWithValue("@Qu1_feedBack", TB_reason.Text)
        com.Parameters.AddWithValue("@Qu2_Mark", OverAll)
        com.Parameters.AddWithValue("@Contact_Value", contact_val)
        com.Parameters.AddWithValue("@Contact_Phone", TB_contact_phone.Text)
        com.Parameters.AddWithValue("@Contact_Mail", TB_contact_Email.Text)
        com.Parameters.AddWithValue("@TB_Others", TB_Others.Text)
        com.Parameters.AddWithValue("@contact_time", Rdmorning.Checked)
        com.Parameters.AddWithValue("@bank_customer", RDCustomerYes.Checked)
        com.Parameters.AddWithValue("@Branch_Name", LST_Branch.SelectedValue)
        com.Parameters.AddWithValue("@Overall_Q", OverAll)
        com.Parameters.AddWithValue("@Speed_Q", Speed_val)
        com.Parameters.AddWithValue("@Qualty_Q", Qualty_val)
        com.Parameters.AddWithValue("@service_Q", Service_val)



        com.CommandText = "Insert_customer_feedback"
        Try
            con.Open()
            com.ExecuteNonQuery()
            con.Close()
            If Not UICulture = "English (United States)" Then
                Label21.Text = "شكرا لمساعدتك"
                Response.Redirect("~/thanks_page.aspx?u_c=" + Request.Form("DropDownList1") + "&c_v=" + Request.Form("DropDownList1") + "&con_status=" + R_Yes.Checked.ToString)
                'Page.SetFocus(Button1.ClientID)
            Else
                Label21.Text = "Thank you to help us"
                Response.Redirect("~/thanks_page.aspx?u_c=" + Request.Form("DropDownList1") + "&c_v=" + Request.Form("DropDownList1") + "&con_status=" + R_Yes.Checked.ToString)
                'Page.SetFocus(Button1.ClientID)
            End If
            TB_contact_Email.Text = ""
            TB_contact_phone.Text = "0"
            TB_Cust_name.Text = ""
            TB_cust_Phone.Text = ""
            ' TB_reason.Text = ""
        Catch ex As Exception
            con.Close()
        End Try

    End Sub
    Function EmailAddressCheck(ByVal emailAddress As String) As Boolean
        Dim pattern As String = "^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
        Dim emailAddressMatch As Match = Regex.Match(emailAddress, pattern)
        If emailAddressMatch.Success Then
            EmailAddressCheck = True
        Else
            EmailAddressCheck = False
        End If
    End Function
    Protected Sub A10_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles A10.CheckedChanged
        If A10.Checked = True Then
            'Label11.Visible = True
            'TB_reason.Visible = True
            'Label10.Visible = False
            'TB_reason.Focus()
            'Page.SetFocus(TB_reason)
        End If
    End Sub

    Protected Sub A11_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles A11.CheckedChanged
        If A11.Checked = True Then
            'Label11.Visible = True
            'TB_reason.Visible = True
            'Label10.Visible = False
            ' TB_reason.Focus()
        End If
    End Sub

    Protected Sub A12_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles A12.CheckedChanged
        If A12.Checked = True Then
            'Label11.Visible = True
            'TB_reason.Visible = True
            'Label10.Visible = False
            'TB_reason.Focus()
        End If
    End Sub

    Protected Sub A17_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles A17.CheckedChanged
        If A17.Checked = True Then
            'Label11.Visible = False
            'Label10.Visible = True
            'TB_reason.Visible = True
            'TB_reason.Focus()
        End If
    End Sub

    Protected Sub A18_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles A18.CheckedChanged
        If A18.Checked = True Then
            'Label11.Visible = False
            'Label10.Visible = True
            'TB_reason.Visible = True
            ' TB_reason.Focus()
        End If
    End Sub

    Protected Sub A19_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles A19.CheckedChanged
        If A19.Checked = True Then
            'Label11.Visible = False
            'Label10.Visible = True
            'TB_reason.Visible = True
            'TB_reason.Focus()
        End If
    End Sub

    Protected Sub A13_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles A13.CheckedChanged
        If A13.Checked = True Then
            'Label11.Visible = False
            'Label10.Visible = False
            'TB_reason.Visible = False
            'A20.Focus()
        End If
    End Sub

    Protected Sub A14_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles A14.CheckedChanged
        If A14.Checked = True Then
            'Label11.Visible = False
            'Label10.Visible = False
            'TB_reason.Visible = False
            'A20.Focus()
        End If
    End Sub

    Protected Sub A15_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles A15.CheckedChanged
        If A15.Checked = True Then
            'Label11.Visible = False
            'Label10.Visible = False
            'TB_reason.Visible = False
            'A20.Focus()
        End If
    End Sub

    Protected Sub A16_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles A16.CheckedChanged
        If A16.Checked = True Then
            'Label11.Visible = False
            'Label10.Visible = False
            'TB_reason.Visible = False
            'A20.Focus()
        End If
    End Sub

    Protected Sub R_Yes_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles R_Yes.CheckedChanged
        If R_Yes.Checked = True Then
            Label17.Visible = True
            'Label18.Visible = True
            'Label19.Visible = True
            'Label20.Visible = True
            TB_contact_Email.Visible = True
            TB_contact_phone.Visible = True
            Rdmorning.Visible = True
            rdEvening.Visible = True
            Label28.Visible = True
            Label40.Visible = True
            Label41.Visible = True
            Label19.Visible = True
            'Page.SetFocus(TB_contact_phone.ClientID)
        End If
    End Sub

    Protected Sub R_No_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles R_No.CheckedChanged
        If R_No.Checked = True Then
            Label17.Visible = False
            'Label18.Visible = False
            'Label19.Visible = False
            'Label20.Visible = False
            TB_contact_Email.Visible = False
            TB_contact_phone.Visible = False
            Rdmorning.Visible = False
            rdEvening.Visible = False
            Label28.Visible = False
            Label40.Visible = False
            Label41.Visible = False
            Label19.Visible = False
            ' Button1.Focus()
        End If
    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DR_Dealt_list.SelectedIndexChanged
        If DR_Dealt_list.SelectedValue.Trim = 6 Then
            TB_Others.Visible = True
            Label9.Visible = True
            Label26.Visible = True
            Label31.Visible = False
            LST_Branch.Visible = False
            Label30.Visible = False
            Exit Sub
        End If
        If DR_Dealt_list.SelectedValue.Trim = 1 Then
            TB_Others.Visible = False
            Label9.Visible = False
            Label26.Visible = False
            Label31.Visible = True
            LST_Branch.Visible = True
            Label30.Visible = True
            Exit Sub
        End If
        TB_Others.Visible = False
        Label9.Visible = False
        Label26.Visible = False
        Label31.Visible = False
        LST_Branch.Visible = False
        Label30.Visible = False
    End Sub

    Protected Sub RadioButton1_CheckedChanged(sender As Object, e As EventArgs)

    End Sub


    Protected Sub RDCustomerYes_CheckedChanged(sender As Object, e As EventArgs) Handles RDCustomerYes.CheckedChanged
        If RDCustomerYes.Checked = True Then
            Label24.Visible = True
            TB_cust_Phone.Visible = True
            Label4.Visible = True
        Else
            Label24.Visible = False
            TB_cust_Phone.Visible = False
            Label4.Visible = False
        End If
    End Sub

    Protected Sub RDCustomerNo_CheckedChanged(sender As Object, e As EventArgs) Handles RDCustomerNo.CheckedChanged
        If RDCustomerNo.Checked = True Then
            Label24.Visible = False
            TB_cust_Phone.Visible = False
            Label4.Visible = False
        Else
            Label24.Visible = True
            TB_cust_Phone.Visible = True
            Label4.Visible = True
        End If
    End Sub



    Protected Sub TB_Others_TextChanged(sender As Object, e As EventArgs) Handles TB_Others.TextChanged

    End Sub
End Class