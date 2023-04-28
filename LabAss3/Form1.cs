using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LabAss3
{
    public partial class frmCustomerDataEntry : Form
    {
        public frmCustomerDataEntry()
        {
            InitializeComponent();
        }

        private void frmCustomerPreview_Click(object sender, EventArgs e)
        {
            String Gender, Hobby, Status = "";
            if (radioMale.Checked) Gender = "Male";
            else Gender = "Female";
            if (chkReading.Checked) Hobby = "Reading";
            else Hobby = "Painting";
            if (radioMarried.Checked) Status = "Married";
            else Status = "Unmarried";

            try
            {
                CustomerValidation objVal = new CustomerValidation();
                objVal.CheckCustomerName(txtName.Text);

                frmCustomerPreview objPreview = new frmCustomerPreview();
                objPreview.SetValues(txtName.Text, cmbCountry.Text, Gender, Hobby, Status);

                objPreview.Show();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }

        }

        private void frmCustomerDataEntry_Load(object sender, EventArgs e)
        {
            //Open Data Source=LAPTOP-UFJRI0F9;Initial Catalog=CustomerDB;Persist Security Info=True;User ID=sa;Pooling=False
            String strConnection = "Data Source=LAPTOP-UFJRI0F9;Initial Catalog=CustomerDB;Persist Security Info=True;User ID=sa;Password=193615lyf;Pooling=False";
            SqlConnection objConnection = new SqlConnection(strConnection);
            objConnection.Open();

            //fire
            String strCommand = "Select * From Customer";
            SqlCommand objCommand = new SqlCommand(strCommand, objConnection);

            //Bind
            DataSet objDataSet = new DataSet();
            SqlDataAdapter objAdapter = new SqlDataAdapter(objCommand);
            objAdapter.Fill(objDataSet);
            dtgCustomer.DataSource = objDataSet.Tables[0];    

            //close
            objConnection.Close();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            String Gender, Hobby, Status = "";
            if (radioMale.Checked) Gender = "Male";
            else Gender = "Female";
            if (chkReading.Checked) Hobby = "Reading";
            else Hobby = "Painting";
            if (radioMarried.Checked) Status = "1";
            else Status = "0";

            //open
            String strConnection = "Data Source=LAPTOP-UFJRI0F9;Initial Catalog=CustomerDB;Persist Security Info=True;User ID=sa;Password=193615lyf;Pooling=False";
            SqlConnection objConnection = new SqlConnection(strConnection);
            objConnection.Open();

            //Fire
            String strCommand = "insert into Customer (CustomerName ,Country ,Gender ,Hobby ,Married) values('" + txtName + "','" + cmbCountry + "','" + Gender +"','" + Hobby + "','" + Status+ "')";
            SqlCommand objCommand = new SqlCommand( strCommand, objConnection);
            objCommand.ExecuteNonQuery();

            //close
            objConnection.Close();
            loadCustomer();

        }

        private void loadCustomer()
        {
            

            //Open Data Source=LAPTOP-UFJRI0F9;Initial Catalog=CustomerDB;Persist Security Info=True;User ID=sa;Pooling=False
            String strConnection = "Data Source=LAPTOP-UFJRI0F9;Initial Catalog=CustomerDB;Persist Security Info=True;User ID=sa;Password=193615lyf;Pooling=False";
            SqlConnection objConnection = new SqlConnection(strConnection);
            objConnection.Open();

            //fire
            String strCommand = "Select * From Customer";
            SqlCommand objCommand = new SqlCommand(strCommand, objConnection);

            //Bind
            DataSet objDataSet = new DataSet();
            SqlDataAdapter objAdapter = new SqlDataAdapter(objCommand);
            objAdapter.Fill(objDataSet);
            dtgCustomer.DataSource = objDataSet.Tables[0];

            //close
            objConnection.Close();

        }

        private void dtgCustomer_CellClick(object sender, DataGridViewCellEventArgs e)
        {
           
        }
    }
}