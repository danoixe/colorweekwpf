using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Data.Common;
using System.Data;
using System.Globalization;
using System.ComponentModel;

namespace ColorWeekAppl
{
    /// <summary>
    /// Logika interakcji dla klasy EditDay.xaml
    /// </summary>
    public partial class EditDayAdm : Window
    {
        DbProviderFactory factory;
        DbConnection connection;
        public DateTime TestDate { get; set; }
        public string ViewDate { get; set; }
        public string UserLogin { get; set; }
        public string DayNote;
        public string DayAvail;
        bool RowExists = true;
        public bool savedNote = false;

        public void updateNotes() { }

        public EditDayAdm()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            NoteDate.Text = TestDate.ToString("dd.MM.yyyy", CultureInfo.InvariantCulture);
            factory = DbProviderFactories.GetFactory("System.Data.OracleClient");
            connection = factory.CreateConnection();
            connection.ConnectionString = "SERVER=" +
                "(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=155.158.112.45)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=oltpstud)));" +
                "uid=msbd12;" +
                "pwd=haslo2015;";
            connection.Open();

            DbCommand command = factory.CreateCommand(); //create a new command 
            command.CommandText = "SELECT * FROM Notes WHERE NoteDate like '" + ViewDate + "'"; //make the query 
            command.Connection = connection; //connect the command 
            DbDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {

                while (reader.Read())
                {
                    NoteText.Text = (reader["NoteText"].ToString());
                    NoteAvail.Text = reader["NoteAvail"].ToString().Replace(",", ".");
                    NotePriv.Text = (reader["NotePriv"].ToString());

                }
            }
            else
            {
                RowExists = false;
            }

            connection.Close(); //dont forget to close the connection 

        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            connection.Open();

            DbCommand command = factory.CreateCommand(); //create a new command 

            if (RowExists == true)
            {
                command.CommandText = "UPDATE notes " +
                    "SET notetext = '" + NoteText.Text + "', noteavail = " + NoteAvail.Text + ", notepriv = '" + NotePriv.Text + "' " +
                    "WHERE NoteDate like '" + ViewDate + "' "; //make the query 
            }
            else
            {
                command.CommandText = "INSERT INTO notes " +
                    "VALUES ('" + ViewDate + "', '" + NoteText.Text + "', " + NoteAvail.Text + ", '" + NotePriv.Text + "') ";
            }

            DayNote = NoteText.Text;
            DayAvail = NoteAvail.Text;

            command.Connection = connection; //connect the command 
            command.ExecuteNonQuery();
            connection.Close();
            MessageBox.Show("zapisano");
            savedNote = true;


        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
