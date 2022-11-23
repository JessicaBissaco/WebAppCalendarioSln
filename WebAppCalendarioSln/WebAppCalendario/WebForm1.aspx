<%@ Page Language="C#" AutoEventWireup="true" Theme="Skin1" CodeBehind="WebForm1.aspx.cs" Inherits="WebAppCalendario.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>
        Calendário
    </title>
    <style>
        body, html{
margin:0;
padding:0;
background:#F8F8FF;
}

#container{
/* Largura máxima */
max-width:960px;
/* Alinha ao centro */
margin:0 auto;
background:#F0F8FF;
overflow:hidden;
}
#content{
/* Largura */
width:100%;
/* Alinha à esquerda */
float:left;
}

.content_inner{
padding:10px;
text-align: center;
}
        .auto-style1 {
            font-size: large;
            color: #0033CC;
        }
        .auto-style2 {
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <article>
        <header></header>
        <section>
    <form id="form1" runat="server">
       <div id="container">
                <div id="content">
                    <div class="content_inner">
            <h1>Calendário</h1>
            <p class="auto-style1"><strong style="color: #003366">Selecione a data, escreva o compromisso e clique em Salvar.</strong></p>
                       <center><asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                           <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                           <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                           <OtherMonthDayStyle ForeColor="#999999" />
                           <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                           <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                           <TodayDayStyle BackColor="#CCCCCC" />
                           </asp:Calendar></center> 
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Data" style="font-weight: 700; color: #003366"></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBoxData" runat="server" style="text-align: center"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Compromisso" style="font-weight: 700; color: #003366"></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBoxComp" runat="server" style="text-align: center" Width="398px"></asp:TextBox>
                        <br />
                        <br />
                        <em>
                        <asp:Button ID="BtnSalvar" runat="server" Text="Salvar" OnClick="Button1_Click"  />
                        </em>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webcalendarioConnectionString %>" DeleteCommand="DELETE FROM [Compromisso] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Compromisso] ([Data], [Descricao]) VALUES (@Data, @Descricao)" SelectCommand="SELECT * FROM [Compromisso]" UpdateCommand="UPDATE [Compromisso] SET [Data] = @Data, [Descricao] = @Descricao WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TextBoxData" Name="Data" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="TextBoxComp" Name="Descricao" PropertyName="Text" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Data" Type="String" />
                                <asp:Parameter Name="Descricao" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
            </div>
        </div>
                <br />
    </div>
    </form>
            </section>
        <footer></footer>
        </article>
</body>
</html>
