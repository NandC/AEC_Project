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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            System.Drawing.Printing.PageSettings ps = new System.Drawing.Printing.PageSettings();
            ps.Landscape = true;
            ps.PaperSize = new System.Drawing.Printing.PaperSize("A4", 827, 1170);
            ps.PaperSize.RawKind = (int)System.Drawing.Printing.PaperKind.A4;
            reportViewer1.SetPageSettings(ps);


            // TODO: This line of code loads data into the 'AECDataSetModel.MODEL' table. You can move, or remove it, as needed.
            this.MODELTableAdapter.Fill(this.AECDataSetModel.MODEL);
            // TODO: This line of code loads data into the 'AECDataSet.Product' table. You can move, or remove it, as needed.
            this.ProductTableAdapter.Fill(this.AECDataSet.Product);

            this.reportViewer1.RefreshReport();
        }
    }
}
