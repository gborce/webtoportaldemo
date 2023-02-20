<%@ Page language="c#" Codebehind="home.aspx.cs" AutoEventWireup="false" Inherits="r5demo.home" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>home</title>
<meta content="Microsoft Visual Studio 7.0" name=GENERATOR>
<meta content=C# name=CODE_LANGUAGE>
<meta content=JavaScript name=vs_defaultClientScript>
<meta content=http://schemas.microsoft.com/intellisense/ie5 name=vs_targetSchema>
<style type=text/css>.LoginTable {
	BACKGROUND-IMAGE: url(images/LoginBoxBG.jpg); VISIBILITY: visible; OVERFLOW: hidden; WIDTH: 201px; BACKGROUND-REPEAT: repeat; POSITION: relative; TOP: 0px; HEIGHT: 122px
}
</style>
<LINK href="css/PortalDemo.css" type=text/css rel=stylesheet >
  </HEAD>
<body class=bodygreen text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0 marginheight="0" marginwidth="0" 
MS_POSITIONING="GridLayout">
<form id=home method=post runat="server">
<table height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <tr>
    <td vAlign=top align=left>
      <table cellSpacing=0 cellPadding=0 width="100%" border=0 
      >
        <tr>
          <td vAlign=top align=left background=images/TopBannerBG.jpg 
          >
            <table cellSpacing=0 cellPadding=0 width="100%" 
            background=images/TopBannerBG.jpg border=0 
            alt="HomePage">
              <tr>
                <td vAlign=top align=left width=555>
												<!---------------- INCLUDES THE CODE FOR SHOWING COMPANY LOGO AND HOMEPAGE LINK-->
												<!-- #Include file="companylogo.inc" --></TD>
                <td vAlign=top align=left width="100%">
												<!---------------- INCLUDES THE CODE FOR SHOWING THE TOP LOGIN BOX -->
												<!-- #Include file="toploginbox.inc" --></TD></TR></TABLE></TD></TR>
        <tr>
          <td vAlign=top align=left>
            <table cellSpacing=0 cellPadding=0 width="100%" border=1 
            >
              <TBODY>
              <tr vAlign=top align=left>
                <td vAlign=top align=left width=252 bgColor=#000000 >
                  <table class=NavTile height=25 cellSpacing=0 cellPadding=0 
                  width=252 background=images/ExtranetNav.gif border=0 
                  >
                    <tr>
                      <td>&nbsp;Investment 
                    Advice</TD></TR></TABLE></TD>
                <td vAlign=top align=left width=252 bgColor=#000000 >
                  <table class=NavTile height=25 cellSpacing=0 cellPadding=0 
                  width=252 background=images/ExtranetNav.gif border=0 
                  >
                    <tr>
                      <td>&nbsp;Products &amp; 
                    Services</TD></TR></TABLE></TD>
                <td vAlign=top align=left width="100%" bgColor=#000000 
                >
                  <table class=NavTile height=25 cellSpacing=0 cellPadding=0 
                  width=252 background=images/ExtranetNav.gif border=0 
                  >
                    <tr>
                      <td>&nbsp;About Enterprise 
                        Investements</TD></TR></TABLE></TD></TR>
              <tr>
                <td vAlign=top align=left width=252>
													<!--------- BEGIN Article Home Snippets repeater --------------------->
                  <table border=0><asp:repeater id=rptHomeArticles runat="server">
															<HeaderTemplate>
															</HeaderTemplate>
															<ItemTemplate>
															<tr>
																<td>
																<%# DataBinder.Eval(Container.DataItem,"ItemDate") %>
																<br>
																<%# DataBinder.Eval(Container.DataItem,"HomeSnippet") %>
																</td>
															</tr>
															</ItemTemplate>
															<SeparatorTemplate>
																<tr>
																	<td><br> <!-- A spacer row --></td>
																</tr>
															</SeparatorTemplate>
															<FooterTemplate>
															</FooterTemplate>
														</asp:Repeater>
														<!--------- END Article Home Snippets  repeater ---------------------></TABLE></TD></TD>
                <td vAlign=top align=left width=252>
									<!--------- BEGIN Products  Home Snippets repeater --------------------->
                  <table border=0><asp:repeater id=rptHomeProducts runat="server">
											<HeaderTemplate>
											</HeaderTemplate>
											<ItemTemplate>
											<tr>
												<td>
												<%# DataBinder.Eval(Container.DataItem,"HomeSnippet") %>
												</td>
											</tr>
											</ItemTemplate>
											<SeparatorTemplate>
												<tr>
													<td><br> <!-- A spacer row --></td>
												</tr>
											</SeparatorTemplate>
											<FooterTemplate>
											</FooterTemplate>
										</asp:Repeater>
										<!--------- END Products Home Snippets  repeater ---------------------></TABLE></TD>
                <td vAlign=top align=left width="100%" 
                  ><br>
                  <table cellSpacing=0 cellPadding=0 width=252 border=0 
                  >
                    <tr>
                      <td vAlign=top align=left width=5 
                      >&nbsp;</TD>
                      <td vAlign=top align=left colSpan=3 
                        ><span class=bodyblackbold 
                        >Enterprise Investment 
                        Earnings</SPAN><br><A href="#" ><IMG height=64 alt="Webcast Video" src="images/barry.jpg" width=90 align=left border=0 ></A> <span 
                        class=bodyblack>Webcast presented 
                        by Enterprise Investments CFO Barry Reynolds </SPAN></TD>
                      <td width=5>&nbsp;</TD></TR>
                    <tr>
                      <td vAlign=top align=left width=5 
                      >&nbsp;</TD>
                      <td vAlign=top align=left colSpan=3 
                      >&nbsp;</TD>
                      <td width=5 
                  >&nbsp;</TD></TR></TABLE>
                  <table cellSpacing=0 cellPadding=0 width=252 border=0 
                  >
                    <tr>
                      <td vAlign=top align=left width=5 
                      >&nbsp;</TD>
                      <td vAlign=top align=left width=20 
                        ><IMG height=12 src="images/bullet.gif" width=20 ></TD>
                      <td vAlign=top align=left width=5 
                      >&nbsp;</TD>
                      <td class=bodyblackbold vAlign=top align=left 
                      >New Head of Research</TD>
                      <td width=5>&nbsp;</TD></TR>
                    <tr>
                      <td vAlign=top align=left width=5 
                      >&nbsp;</TD>
                      <td vAlign=center align=left width=20 
                        >&nbsp;</TD>
                      <td vAlign=top align=left width=5 
                      >&nbsp;</TD>
                      <td class=bodyblack vAlign=top align=left 
                      >Candace Browning has been named 
                        head of Global Securities Research and Economic..<A href="#" >More 
                        &gt;&gt;&gt;</A></TD>
                      <td width=5>&nbsp;</TD></TR>
                    <tr>
                      <td vAlign=top align=left width=5 height=5 
                      >&nbsp;</TD>
                      <td vAlign=center align=left width=20 height=5 
                      >&nbsp;</TD>
                      <td vAlign=top align=left width=5 height=5 
                      >&nbsp;</TD>
                      <td class=bodyblack vAlign=top align=left height=5 
                      >&nbsp;</TD>
                      <td width=5 height=5 
                    >&nbsp;</TD></TR></TABLE>
                  <table cellSpacing=0 cellPadding=0 width=252 border=0 
                  >
                    <tr>
                      <td vAlign=top align=left width=5 
                      >&nbsp;</TD>
                      <td vAlign=top align=left width=20 
                        ><IMG height=12 src="images/bullet.gif" width=20 ></TD>
                      <td vAlign=top align=left width=5 
                      >&nbsp;</TD>
                      <td class=bodyblackbold vAlign=top align=left 
                      >US Budget Proposal </TD>
                      <td width=5>&nbsp;</TD></TR>
                    <tr>
                      <td vAlign=top align=left width=5 
                      >&nbsp;</TD>
                      <td vAlign=center align=left width=20 
                        >&nbsp;</TD>
                      <td vAlign=top align=left width=5 
                      >&nbsp;</TD>
                      <td class=bodyblack vAlign=top align=left 
                      >Enterprise Investments lauds 
                        commitment to increase savings and investment; 
                        encourages active dialogue in Congress. <A href="#" >More 
                        &gt;&gt;&gt;</A></TD>
                      <td width=5>&nbsp;</TD></TR>
                    <tr>
                      <td vAlign=top align=left width=5 height=5 
                      >&nbsp;</TD>
                      <td vAlign=center align=left width=20 height=5 
                      >&nbsp;</TD>
                      <td vAlign=top align=left width=5 height=5 
                      >&nbsp;</TD>
                      <td class=bodyblack vAlign=top align=left height=5 
                      >&nbsp;</TD>
                      <td width=5 height=5 
                    >&nbsp;</TD></TR></TABLE></TD></TR>
              <tr>
                <td vAlign=top align=left width=252 bgColor=#000000 >
                  <table class=NavTile height=25 cellSpacing=0 cellPadding=0 
                  width=252 background=images/ExtranetNav.gif border=0 
                  >
                    <tr>
                      <td 
                  >&nbsp;Markets</TD></TR></TABLE></TD>
                <td vAlign=top align=left width=252 bgColor=#000000 >
                  <table class=NavTile height=25 cellSpacing=0 cellPadding=0 
                  width=252 background=images/ExtranetNav.gif border=0 
                  >
                    <tr>
                      <td 
                >&nbsp;Rates</TD></TR></TABLE></TD>
                <td vAlign=top align=left width="100%" bgColor=#000000 
                >
                  <table class=NavTile height=25 cellSpacing=0 cellPadding=0 
                  width=252 background=images/ExtranetNav.gif border=0 
                  >
                    <tr>
                      <td>&nbsp;Seach 
                  For...</TD></TR></TABLE></TD></TR>
              <tr bgColor=#9fa9ba>
                <td vAlign=top align=middle width=252 bgColor=#9fa9ba 
                ><br>
                  <table borderColor=#ffffff cellSpacing=0 cellPadding=0 
                  width=200 bgColor=#c3cbd9 border=1>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblackbold width=5 
                              ><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblackbold width="33%" 
                            >DJI</TD>
                            <td class=bodyblack width="33%" 
                              >8,022.02</TD>
                            <td class=bodyred align=right width="33%" 
                            >- 
                      108.81</TD></TR></TABLE></TD></TR>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblackbold width=5 
                              ><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblackbold width="33%" 
                            >NASDAQ</TD>
                            <td class=bodyblack width="33%" 
                              >1,327.99</TD>
                            <td class=bodyred align=right width="33%" 
                            >-14.13</TD></TR></TABLE></TD></TR>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblackbold width=5 
                              ><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblackbold width="33%" 
                            >S&amp;P 500</TD>
                            <td class=bodyblack width="33%" 
                              >850.17</TD>
                            <td class=bodyblack align=right width="33%" 
                            >+11.23</TD></TR></TABLE></TD></TR>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblackbold width=5 
                              ><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblackbold width="33%" 
                            >RJQ</TD>
                            <td class=bodyblack width="33%" 
                              >45.09</TD>
                            <td class=bodyred align=right width="33%" 
                            >-1.18</TD></TR></TABLE></TD></TR>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblackbold width=5 
                              ><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblackbold width="33%" 
                            >WKM</TD>
                            <td class=bodyblack width="33%" 
                              >13.16</TD>
                            <td class=bodyblack align=right width="33%" 
                            >+4.98</TD></TR></TABLE></TD></TR>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblackbold width=5 
                              ><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblackbold width="33%" 
                            >YTB</TD>
                            <td class=bodyblack width="33%" 
                              >23.73</TD>
                            <td class=bodyblack align=right width="33%" 
                            >+18.72</TD></TR></TABLE></TD></TR></TABLE></TD>
                <td vAlign=top align=middle width=252><br 
                  >
                  <table borderColor=#ffffff cellSpacing=0 cellPadding=0 
                  width=200 bgColor=#c3cbd9 border=1>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblackbold width=5 
                              ><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblackbold width=95 
                            >Mortgages</TD>
                            <td class=bodyblackbold width=50 
                            >Rate</TD>
                            <td class=bodyblackbold align=right width=50 
                            >APR</TD></TR></TABLE></TD></TR>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblack width=5 
                              ><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblack width=95 
                              >30-Year Fixed</TD>
                            <td class=bodyblack width=50 
                              >5.58</TD>
                            <td class=bodyblack align=right width=50 
                            >5.99</TD></TR></TABLE></TD></TR>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblack><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblack width=95 
                              >15-Year Fixed</TD>
                            <td class=bodyblack width=50 
                              >5.17</TD>
                            <td class=bodyblack align=right width=50 
                            >5.22</TD></TR></TABLE></TD></TR>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblack width=5 
                              ><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblack width=95 
                              >10-Year Fixed</TD>
                            <td class=bodyblack width=50 
                              >5.03</TD>
                            <td class=bodyblack align=right width=50 
                            >5.16</TD></TR></TABLE></TD></TR>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblack width=5 
                              ><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblack width=95 
                              >7-Year ARM</TD>
                            <td class=bodyblack width=50 
                              >4.75</TD>
                            <td class=bodyblack align=right width=50 
                            >4.90</TD></TR></TABLE></TD></TR>
                    <tr>
                      <td>
                        <table cellSpacing=0 cellPadding=0 width=200 border=0 
                        >
                          <tr vAlign=center align=left>
                            <td class=bodyblack width=5 
                              ><IMG height=1 src="images/trans.gif" width=5 ></TD>
                            <td class=bodyblack width=95 
                              >5-Year ARM</TD>
                            <td class=bodyblack width=50 
                              >4.37</TD>
                            <td class=bodyblack align=right width=50 
                            >4.61</TD></TR></TABLE></TD></TR></TABLE></TD>
                <td vAlign=top align=left width="100%" 
                  ><br><form 
                   action="" method="post" name="form2">
                  <table cellSpacing=0 cellPadding=0 width=200 border=0 
                  >
                    <tr>
                      <td width=20><IMG height=1 src="images/trans.gif" width=25 ></TD>
                      <td>
                        <table borderColor=#ffffff cellSpacing=0 cellPadding=0 
                        width=200 align=left bgColor=#c3cbd9 border=1 
                        >
                          <tr>
                            <td>
                              <table cellSpacing=0 cellPadding=0 width=200 
                              border=0>
                                <tr vAlign=center align=left 
                                >
                                <td class=bodyblackbold width=25 
                                ><input type=radio 
                                value=radiobutton name=radiobutton 
                                > </TD>
                                <td class=bodyblackbold 
                                >Quotes &amp; 
                                Charts</TD></TR></TABLE></TD></TR>
                          <tr>
                            <td>
                              <table cellSpacing=0 cellPadding=0 width=200 
                              border=0>
                                <tr vAlign=center align=left 
                                >
                                <td class=bodyblackbold width=25 
                                ><input type=radio 
                                value=radiobutton name=radiobutton 
                                > </TD>
                                <td class=bodyblackbold 
                                >News by 
                                Symbol</TD></TR></TABLE></TD></TR>
                          <tr>
                            <td>
                              <table cellSpacing=0 cellPadding=0 width=200 
                              border=0>
                                <tr vAlign=center align=left 
                                >
                                <td class=bodyblackbold width=25 
                                ><input type=radio 
                                value=radiobutton name=radiobutton 
                                > </TD>
                                <td class=bodyblackbold 
                                >Symbol 
                                Lookup</TD></TR></TABLE></TD></TR>
                          <tr>
                            <td>
                              <table cellSpacing=0 cellPadding=0 width=200 
                              border=0>
                                <tr vAlign=center align=left 
                                >
                                <td class=bodyblackbold width=25 
                                ><input type=radio 
                                value=radiobutton name=radiobutton 
                                > </TD>
                                <td class=bodyblackbold 
                                >Site 
                                Search</TD></TR></TABLE></TD></TR>
                          <tr>
                            <td>
                              <table cellSpacing=0 cellPadding=0 width=200 
                              border=0>
                                <tr vAlign=center align=left 
                                >
                                <td class=bodyblack width=100 
                                ><input type=text size=15 
                                name=textfield> </TD>
                                <td class=bodyblack align=right width=50 
                                ><input type=image height=17 
                                width=56 src="images/Buttons/submit.jpg" 
                                border=0 name=submit2> 
                                </TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE></FORM></TD></TR></TABLE></TD></TR></TABLE></TD></TR>
  <tr>
    <td vAlign=bottom align=left height=20>
					<!-- Page Footer Start 
	  <table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#000000" height="20">
		<tr> 
		  <td class="Footer" align="center" valign="middle">&nbsp;<a href="#" class= "Footer">Contact 
			Us</a> | <a href="#" class= "Footer">Site Map</a> | <a href="#" class= "Footer">People's 
			Financial Inc.</a> | <a href="#" class= "Footer">Non- U.S. Residents</a> 
			| <a href="#" class= "Footer">Privacy &amp; Cookies</a> | <a href="#" class= "Footer">Terms 
			of Use</a> | <a href="#" class= "Footer">Copyright</a></td>
		</tr>
	  </table>
	Page Footer End --></TD></TR></TBODY></TABLE></FORM>
	</body>
</HTML>
