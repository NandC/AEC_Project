namespace xy
{
    partial class Form1
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
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource2 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.MODELBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.AECDataSetModel = new xy.AECDataSetModel();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.AECDataSet = new xy.AECDataSet();
            this.ProductBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.ProductTableAdapter = new xy.AECDataSetTableAdapters.ProductTableAdapter();
            this.MODELTableAdapter = new xy.AECDataSetModelTableAdapters.MODELTableAdapter();
            this.button1 = new System.Windows.Forms.Button();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.comboBox2 = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.MODELBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.AECDataSetModel)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.AECDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ProductBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // MODELBindingSource
            // 
            this.MODELBindingSource.DataMember = "MODEL";
            this.MODELBindingSource.DataSource = this.AECDataSetModel;
            // 
            // AECDataSetModel
            // 
            this.AECDataSetModel.DataSetName = "AECDataSetModel";
            this.AECDataSetModel.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // reportViewer1
            // 
            reportDataSource2.Name = "DataSet1";
            reportDataSource2.Value = this.MODELBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource2);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "xy.Model.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(29, 58);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(1751, 1171);
            this.reportViewer1.TabIndex = 0;
            // 
            // AECDataSet
            // 
            this.AECDataSet.DataSetName = "AECDataSet";
            this.AECDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // ProductBindingSource
            // 
            this.ProductBindingSource.DataMember = "Product";
            this.ProductBindingSource.DataSource = this.AECDataSet;
            // 
            // ProductTableAdapter
            // 
            this.ProductTableAdapter.ClearBeforeFill = true;
            // 
            // MODELTableAdapter
            // 
            this.MODELTableAdapter.ClearBeforeFill = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(792, 12);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(123, 40);
            this.button1.TabIndex = 1;
            this.button1.Text = "Search";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(199, 12);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(197, 32);
            this.comboBox1.TabIndex = 2;
            // 
            // comboBox2
            // 
            this.comboBox2.FormattingEnabled = true;
            this.comboBox2.Location = new System.Drawing.Point(566, 12);
            this.comboBox2.Name = "comboBox2";
            this.comboBox2.Size = new System.Drawing.Size(155, 32);
            this.comboBox2.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(434, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(128, 25);
            this.label1.TabIndex = 4;
            this.label1.Text = "SubCategory";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(52, 20);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(92, 25);
            this.label2.TabIndex = 5;
            this.label2.Text = "Category";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 24F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1743, 586);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.comboBox2);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.reportViewer1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.MODELBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.AECDataSetModel)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.AECDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ProductBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource ProductBindingSource;
        private AECDataSet AECDataSet;
        private AECDataSetTableAdapters.ProductTableAdapter ProductTableAdapter;
        private System.Windows.Forms.BindingSource MODELBindingSource;
        private AECDataSetModel AECDataSetModel;
        private AECDataSetModelTableAdapters.MODELTableAdapter MODELTableAdapter;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.ComboBox comboBox2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
    }
}

