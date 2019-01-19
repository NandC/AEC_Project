namespace xy
{
    partial class FormProdMech
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.GetProductsMechBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.AEC_IllumDataSetProdMech = new xy.AEC_IllumDataSetProdMech();
            this.Product_MechBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.AEC_IllumDataSetPolesList = new xy.AEC_IllumDataSetPolesList();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.Product_MechTableAdapter = new xy.AEC_IllumDataSetPolesListTableAdapters.Product_MechTableAdapter();
            this.GetProductsMechTableAdapter = new xy.AEC_IllumDataSetProdMechTableAdapters.GetProductsMechTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.GetProductsMechBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.AEC_IllumDataSetProdMech)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Product_MechBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.AEC_IllumDataSetPolesList)).BeginInit();
            this.SuspendLayout();
            // 
            // GetProductsMechBindingSource
            // 
            this.GetProductsMechBindingSource.DataMember = "GetProductsMech";
            this.GetProductsMechBindingSource.DataSource = this.AEC_IllumDataSetProdMech;
            // 
            // AEC_IllumDataSetProdMech
            // 
            this.AEC_IllumDataSetProdMech.DataSetName = "AEC_IllumDataSetProdMech";
            this.AEC_IllumDataSetProdMech.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // Product_MechBindingSource
            // 
            this.Product_MechBindingSource.DataMember = "Product_Mech";
            this.Product_MechBindingSource.DataSource = this.AEC_IllumDataSetPolesList;
            // 
            // AEC_IllumDataSetPolesList
            // 
            this.AEC_IllumDataSetPolesList.DataSetName = "AEC_IllumDataSetPolesList";
            this.AEC_IllumDataSetPolesList.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.GetProductsMechBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "xy.ReportProdMech.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(12, 71);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(1920, 1400);
            this.reportViewer1.TabIndex = 0;
            this.reportViewer1.ZoomPercent = 80;
            // 
            // Product_MechTableAdapter
            // 
            this.Product_MechTableAdapter.ClearBeforeFill = true;
            // 
            // GetProductsMechTableAdapter
            // 
            this.GetProductsMechTableAdapter.ClearBeforeFill = true;
            // 
            // FormProdMech
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 24F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1924, 1044);
            this.Controls.Add(this.reportViewer1);
            this.Name = "FormProdMech";
            this.Text = "FormProdMech";
            this.Load += new System.EventHandler(this.FormProdMech_Load);
            ((System.ComponentModel.ISupportInitialize)(this.GetProductsMechBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.AEC_IllumDataSetProdMech)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Product_MechBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.AEC_IllumDataSetPolesList)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource Product_MechBindingSource;
        private AEC_IllumDataSetPolesList AEC_IllumDataSetPolesList;
        private AEC_IllumDataSetPolesListTableAdapters.Product_MechTableAdapter Product_MechTableAdapter;
        private System.Windows.Forms.BindingSource GetProductsMechBindingSource;
        private AEC_IllumDataSetProdMech AEC_IllumDataSetProdMech;
        private AEC_IllumDataSetProdMechTableAdapters.GetProductsMechTableAdapter GetProductsMechTableAdapter;
    }
}