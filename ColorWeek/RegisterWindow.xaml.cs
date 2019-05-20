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
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Data.Common;

namespace ColorWeek
{
    /// <summary>
    /// Logika interakcji dla klasy RegisterWindow.xaml
    /// </summary>
    public partial class RegisterWindow : Window
    {
        public RegisterWindow()
        {
            InitializeComponent();
        }

        DbProviderFactory factory;
        DbConnection connection;

        private void button2_Click(object sender, RoutedEventArgs e)
        {
            Reset();
        }
        public void Reset()
        {
            textBoxFirstName.Text = "";
            textBoxLastName.Text = "";
            textBoxEmail.Text = "";
            textBoxLogin.Text = "";
            passwordBox1.Password = "";
            passwordBoxConfirm.Password = "";
        }
        private void button3_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
        private void Submit_Click(object sender, RoutedEventArgs e)
        {            
                string firstname = textBoxFirstName.Text;
                string lastname = textBoxLastName.Text;
                string email = textBoxEmail.Text;
                string password = passwordBox1.Password;
                if (textBoxFirstName.Text.Length == 0)
                {
                    errormessage.Text = "Podaj swoje imię.";
                    textBoxFirstName.Focus();
                }
                else if (textBoxLastName.Text.Length == 0)
                {
                    errormessage.Text = "Podaj swoje nazwisko.";
                    textBoxLastName.Focus();
                }
                else if (textBoxEmail.Text.Length == 0)
                {
                    errormessage.Text = "Podaj swój email.";
                    textBoxEmail.Focus();
                }
                else if (!Regex.IsMatch(textBoxEmail.Text, @"^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"))
                {
                    errormessage.Text = "Niepoprawny adres email.";
                    textBoxEmail.Select(0, textBoxEmail.Text.Length);
                    textBoxEmail.Focus();
                }
                else if (passwordBox1.Password.Length == 0)
                {
                    errormessage.Text = "Podaj hasło.";
                    passwordBox1.Focus();
                }
                else if (passwordBoxConfirm.Password.Length == 0)
                {
                    errormessage.Text = "Uzupełnij potwierdzenie hasła.";
                    passwordBoxConfirm.Focus();
                }
                else if (passwordBox1.Password != passwordBoxConfirm.Password)
                {
                    errormessage.Text = "Potwierdzenie hasła musi być takie samo jak hasło.";
                    passwordBoxConfirm.Focus();
                }
                else
                {
                    errormessage.Text = "";
                    string login = textBoxLogin.Text;

                    factory = DbProviderFactories.GetFactory("System.Data.OracleClient");
                    connection = factory.CreateConnection();
                    connection.ConnectionString = "SERVER=" +
                        "(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=155.158.112.45)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=oltpstud)));" +
                        "uid=msbd12;" +
                        "pwd=haslo2015;";
                    connection.Open();

                    DbCommand command = factory.CreateCommand();
                    command.CommandText = "INSERT INTO users VALUES ('" + login + "','" + password + "','" + firstname + "','" + lastname + "','" + email + "','IT_ST')";
                    command.Connection = connection;
                    command.ExecuteNonQuery();                    
                    connection.Close();
                    errormessage.Text = "You have Registered successfully.";
                    Reset();
                }
            
        }

        private void Login_Click(object sender, RoutedEventArgs e)
        {            
                LogInWindow login = new LogInWindow();
                login.Show();
                Close();            
        }
    }
}
