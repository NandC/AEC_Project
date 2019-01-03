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
    public partial class FormProduct : Form
    {
        public FormProduct()
        {
            InitializeComponent();
        }

        private void FormProduct_Load(object sender, EventArgs e)
        {
            // Set Form/controls properties
            this.comboBoxCat.TabIndex = 0;
            this.AutoSize = true;
            this.AutoScroll = true;

            System.Drawing.Printing.PageSettings ps = new System.Drawing.Printing.PageSettings();
            ps.Landscape = true;
            ps.PaperSize = new System.Drawing.Printing.PaperSize("A4", 827, 1170);
            ps.PaperSize.RawKind = (int)System.Drawing.Printing.PaperKind.A4;
            reportViewer1.SetPageSettings(ps);
            //reportViewer1.SizeToReportContent = true;

            AEC_IlluminationDataSet.EnforceConstraints = false;

            // TODO: This line of code loads data into the 'AEC_IlluminationDataSet.GetProducts' table. You can move, or remove it, as needed.
            string strCat = "";
            string strSubCat = "";
            string strOS = "";
            float fltmA = 0;


            this.GetProductsTableAdapter.Fill(this.AEC_IlluminationDataSet.GetProducts, strCat, strSubCat, strOS, fltmA);

            this.reportViewer1.RefreshReport();
        }

        private void reportViewer1_Load(object sender, EventArgs e)
        {

        }
    }
}
