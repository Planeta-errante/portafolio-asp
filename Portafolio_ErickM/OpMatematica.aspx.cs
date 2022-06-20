using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portafolio_ErickM
{
    public partial class OpMatematica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void OnClickOperar(object sender, EventArgs e)
        {
            double num1 = Convert.ToDouble(txt_num1.Text);
            double num2 = Convert.ToDouble(txt_num2.Text);

            string opcion = rbtn_operaciones.Text;

            Operar op = new Operar();
            string res = op.realizarOp(num1, num2, opcion);
            lbl_res.Text = res;
        }
    }
}