namespace xy
{
    partial class FormPriceList
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
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.AEC_IlluminationDataSet2 = new xy.AEC_IlluminationDataSet2();
            this.ProductPriceListBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.ProductPriceListTableAdapter = new xy.AEC_IlluminationDataSet2TableAdapters.ProductPriceListTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.AEC_IlluminationDataSet2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ProductPriceListBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            reportDataSource1.Name = "DataSetPriceList";
            reportDataSource1.Value = this.ProductPriceListBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "xy.ReportPriceList.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(192, 44);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(1920, 1400);
            this.reportViewer1.TabIndex = 0;
            // 
            // AEC_IlluminationDataSet2
            // 
            this.AEC_IlluminationDataSet2.DataSetName = "AEC_IlluminationDataSet2";
            this.AEC_IlluminationDataSet2.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // ProductPriceListBindingSource
            // 
            this.ProductPriceListBindingSource.DataMember = "ProductPriceList";
            this.ProductPriceListBindingSource.DataSource = this.AEC_IlluminationDataSet2;
            // 
            // ProductPriceListTableAdapter
            // 
            this.ProductPriceListTableAdapter.ClearBeforeFill = true;
            // 
            // FormPriceList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 24F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1924, 1044);
            this.Controls.Add(this.reportViewer1);
            this.Name = "FormPriceList";
            this.Text = "Price List";
            this.Load += new System.EventHandler(this.FormPriceList_Load);
            ((System.ComponentModel.ISupportInitialize)(this.AEC_IlluminationDataSet2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ProductPriceListBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource ProductPriceListBindingSource;
        private AEC_IlluminationDataSet2 AEC_IlluminationDataSet2;
        private AEC_IlluminationDataSet2TableAdapters.ProductPriceListTableAdapter ProductPriceListTableAdapter;
    }
}