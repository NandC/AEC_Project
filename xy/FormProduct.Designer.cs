namespace xy
{
    partial class FormProduct
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
            this.GetProductsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.AEC_IlluminationDataSet = new xy.AEC_IlluminationDataSet();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.GetProductsTableAdapter = new xy.AEC_IlluminationDataSetTableAdapters.GetProductsTableAdapter();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.buttonSearch = new System.Windows.Forms.Button();
            this.comboBoxCat = new System.Windows.Forms.ComboBox();
            this.comboBoxSubCat = new System.Windows.Forms.ComboBox();
            this.labelCat = new System.Windows.Forms.Label();
            this.labelSubCat = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.GetProductsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.AEC_IlluminationDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // GetProductsBindingSource
            // 
            this.GetProductsBindingSource.DataMember = "GetProducts";
            this.GetProductsBindingSource.DataSource = this.AEC_IlluminationDataSet;
            // 
            // AEC_IlluminationDataSet
            // 
            this.AEC_IlluminationDataSet.DataSetName = "AEC_IlluminationDataSet";
            this.AEC_IlluminationDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            this.reportViewer1.AutoScroll = true;
            this.reportViewer1.AutoSize = true;
            reportDataSource1.Name = "DataSetGetProd";
            reportDataSource1.Value = this.GetProductsBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "xy.ReportProduct.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(12, 67);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(1948, 995);
            this.reportViewer1.TabIndex = 0;
            this.reportViewer1.ZoomPercent = 80;
            this.reportViewer1.Load += new System.EventHandler(this.reportViewer1_Load);
            // 
            // GetProductsTableAdapter
            // 
            this.GetProductsTableAdapter.ClearBeforeFill = true;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(791, 504);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(194, 29);
            this.textBox2.TabIndex = 2;
            // 
            // buttonSearch
            // 
            this.buttonSearch.Location = new System.Drawing.Point(840, -4);
            this.buttonSearch.Name = "buttonSearch";
            this.buttonSearch.Size = new System.Drawing.Size(145, 43);
            this.buttonSearch.TabIndex = 4;
            this.buttonSearch.Text = "Search";
            this.buttonSearch.UseVisualStyleBackColor = true;
            // 
            // comboBoxCat
            // 
            this.comboBoxCat.FormattingEnabled = true;
            this.comboBoxCat.Location = new System.Drawing.Point(158, 7);
            this.comboBoxCat.Name = "comboBoxCat";
            this.comboBoxCat.Size = new System.Drawing.Size(252, 32);
            this.comboBoxCat.TabIndex = 5;
            // 
            // comboBoxSubCat
            // 
            this.comboBoxSubCat.FormattingEnabled = true;
            this.comboBoxSubCat.Location = new System.Drawing.Point(561, 7);
            this.comboBoxSubCat.Name = "comboBoxSubCat";
            this.comboBoxSubCat.Size = new System.Drawing.Size(240, 32);
            this.comboBoxSubCat.TabIndex = 6;
            // 
            // labelCat
            // 
            this.labelCat.AutoSize = true;
            this.labelCat.Location = new System.Drawing.Point(60, 9);
            this.labelCat.Name = "labelCat";
            this.labelCat.Size = new System.Drawing.Size(92, 25);
            this.labelCat.TabIndex = 7;
            this.labelCat.Text = "Category";
            // 
            // labelSubCat
            // 
            this.labelSubCat.AutoSize = true;
            this.labelSubCat.Location = new System.Drawing.Point(427, 10);
            this.labelSubCat.Name = "labelSubCat";
            this.labelSubCat.Size = new System.Drawing.Size(128, 25);
            this.labelSubCat.TabIndex = 8;
            this.labelSubCat.Text = "SubCategory";
            // 
            // FormProduct
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 24F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1924, 1036);
            this.Controls.Add(this.labelSubCat);
            this.Controls.Add(this.labelCat);
            this.Controls.Add(this.comboBoxSubCat);
            this.Controls.Add(this.comboBoxCat);
            this.Controls.Add(this.buttonSearch);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.reportViewer1);
            this.Name = "FormProduct";
            this.Text = "FormProduct";
            this.Load += new System.EventHandler(this.FormProduct_Load);
            ((System.ComponentModel.ISupportInitialize)(this.GetProductsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.AEC_IlluminationDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource GetProductsBindingSource;
        private AEC_IlluminationDataSet AEC_IlluminationDataSet;
        private AEC_IlluminationDataSetTableAdapters.GetProductsTableAdapter GetProductsTableAdapter;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Button buttonSearch;
        private System.Windows.Forms.ComboBox comboBoxCat;
        private System.Windows.Forms.ComboBox comboBoxSubCat;
        private System.Windows.Forms.Label labelCat;
        private System.Windows.Forms.Label labelSubCat;
    }
}