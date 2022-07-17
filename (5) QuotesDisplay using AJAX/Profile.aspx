<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="MyProfileWithAjax.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 458px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblname" runat="server" Font-Size="X-Large" Text="Naruto"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblsummary" runat="server" Font-Size="X-Large" Text="A Character in Anime."></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblqual" runat="server" Font-Size="X-Large" Text="Pursuing Masters in Computer Applications."></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblhobbies" runat="server" Font-Size="X-Large" Text="Playing Chess."></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <fieldset>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        &nbsp;&nbsp;&nbsp; Quote of the Day:<br /> &nbsp;&nbsp;&nbsp; 
                        <asp:Label ID="lblQ" runat="server" Font-Size="X-Large" ForeColor="#6600FF"></asp:Label>
                        <br />
                        <br />
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick" />
                    </Triggers>
                </asp:UpdatePanel>
            </fieldset>
            <br />
            <asp:Timer ID="Timer1" runat="server" Interval="15000" OnTick="Timer1_Tick">
            </asp:Timer>
            <br />
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lblclock" runat="server" Font-Size="X-Large" ForeColor="#CC0000"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:Timer ID="Timer2" runat="server" Interval="1000" OnTick="Timer2_Tick">
            </asp:Timer>
        </div>
    </form>
</body>
</html>
