using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;

namespace r5demo
{
	/// <summary>
	/// Summary description for home.
	/// </summary>
	public class home : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Repeater rptHomeArticles;
		protected System.Web.UI.WebControls.Repeater rptHomeProducts;
		protected String connstring=ConfigurationSettings.AppSettings["ConnectionString"];
		protected String sqlstring ;
		protected System.Data.SqlClient.SqlConnection conn;
		protected System.Data.SqlClient.SqlDataReader dr;
		protected System.Data.SqlClient.SqlCommand cmd;

		private void Page_Load(object sender, System.EventArgs e)
		{
			checkSession("login.aspx");
			//data conn init
			SqlConnection conn = new SqlConnection (connstring);
			cmd = new SqlCommand(); 
			cmd.Connection = conn;
			getHomePageContent(3);
		}

		private void getHomePageContent(int howMany)
		{
			//
			//get the top 5 articles tagged as homepage eligible
			sqlstring = "SELECT TOP "+howMany+" HomeSnippet, ItemDate FROM HomePage INNER JOIN Item ON ItemID=ID WHERE Type=1 ORDER BY ItemOrder";
			//sqlstring = "SELECT TOP "+howMany+" HomeSnippet, ItemDate FROM Item WHERE Type=1 ORDER BY ItemDate DESC";
			cmd.CommandText = sqlstring;
			cmd.Connection.Open();
			dr = cmd.ExecuteReader(CommandBehavior.CloseConnection );
			rptHomeArticles.DataSource = dr;
			rptHomeArticles.DataBind ();
			dr.Close ();
			//get the top 5 products tagged as homepage eligible
			sqlstring = "SELECT TOP  "+howMany+"  HomeSnippet FROM HomePage INNER JOIN Item ON ItemID=ID WHERE Type=2 ORDER BY ItemOrder";
			cmd.CommandText = sqlstring;
			cmd.Connection.Open();
			dr = cmd.ExecuteReader(CommandBehavior.CloseConnection );
			rptHomeProducts.DataSource = dr;
			rptHomeProducts.DataBind ();
			dr.Close ();

		}
		private bool checkSession(string loginPage)
		{
			if (Session.Contents.Count < 1)
			{
				Response.Redirect (loginPage);
				return false;
			}
			else 
				return true;
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}
}
