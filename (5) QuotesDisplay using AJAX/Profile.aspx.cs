using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProfileWithAjax
{
    public partial class Profile : System.Web.UI.Page
    {
        List<String> quotes;
        Random rnd;
        protected void Page_Load(object sender, EventArgs e)
        {
            quotes = new List<string>();
            rnd = new Random();
            quotes.Add("Only he who can see the invisible can do the impossible.");
            quotes.Add("Winning isn't everything--but wanting to win is.");
            quotes.Add("If you fail to prepare, you’re prepared to fail.");
            quotes.Add("Good is not good when better is expected.");
            lblQ.Text = quotes[rnd.Next(quotes.Count)];
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            lblQ.Text = quotes[rnd.Next(quotes.Count)];
        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {
            lblclock.Text = DateTime.Now.ToLongTimeString();
        }
    }
}