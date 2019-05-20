using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Data.Common;

namespace ColorWeek
{
    /// <summary>
    /// Logika interakcji dla klasy LogInWindow.xaml
    /// </summary>
    public partial class LogInWindow : Window
    {
        DbProviderFactory factory;
        DbConnection connection;
        public string rola;
                
        public LogInWindow()
        {
            InitializeComponent();
        }

        private void buttonRegister_Click(object sender, RoutedEventArgs e)
        {
            RegisterWindow registration = new RegisterWindow();
            registration.Show();
            Close();
        }
                
        private void button1_Click(object sender, RoutedEventArgs e)
        {
            if (textBoxLogin.Text.Length == 0)
            {
                errormessage.Text = "Niepoprawny login";
                textBoxLogin.Focus();
            }            
            else
            {
                string login = textBoxLogin.Text;
                string password = passwordBox1.Password;

                factory = DbProviderFactories.GetFactory("System.Data.OracleClient");
                connection = factory.CreateConnection();
                connection.ConnectionString = "SERVER=" +
                    "(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=155.158.112.45)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=oltpstud)));" +
                    "uid=msbd12;" +
                    "pwd=haslo2015;";
                connection.Open();

                DbCommand command = factory.CreateCommand();
                command.CommandText = "SELECT * FROM users WHERE UserLogin='" + login + "'  and UserPassword='" + password + "'";
                command.Connection = connection;
                DbDataAdapter adapter = factory.CreateDataAdapter();//create new adapter 
                adapter.SelectCommand = command;
                DataSet dataSet = new DataSet(); //create a new dataset 
                adapter.Fill(dataSet);
                                
                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    string username = dataSet.Tables[0].Rows[0]["first_name"].ToString() + " " + dataSet.Tables[0].Rows[0]["last_name"].ToString();
                    //main.TextBlockName.Text = username;//Sending value from one form to another form.  
                    MainWindow main = new MainWindow();
                    main.userID = dataSet.Tables[0].Rows[0]["UserLogin"].ToString();
                    main.RefreshCalendar();
                    main.Show();
                    Close();
                    
                }
                else
                {
                    errormessage.Text = "Niepoprawne dane logowania";
                }
                connection.Close();                
            }
        }

        private void TextBoxLogin_TextChanged(object sender, TextChangedEventArgs e)
        {
            errormessage.Text = null;
        }
    }
}
