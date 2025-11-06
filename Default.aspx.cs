using System;
using System.Web.UI;

namespace Port_folio
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Redirect to the main portfolio page
            Response.Redirect("main.aspx", true);
        }
    }
}

