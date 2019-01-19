using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace xy
{
    public partial class FormProdMech : Form
    {
        public FormProdMech()
        {
            InitializeComponent();
        }

        private void FormProdMech_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'AEC_IllumDataSetProdMech.GetProductsMech' table. You can move, or remove it, as needed.
            this.GetProductsMechTableAdapter.Fill(this.AEC_IllumDataSetProdMech.GetProductsMech, "","","");
            // TODO: This line of code loads data into the 'AEC_IllumDataSetPolesList.Product_Mech' table. You can move, or remove it, as needed.


            this.reportViewer1.RefreshReport();
        }
    }
}
