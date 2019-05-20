
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Data;
using System.Data.Common;
using System.Globalization;
using System.Reflection;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Linq;

namespace ColorWeekAppl
{
    public class Calendar : Control
    {

        public ObservableCollection<Day> Days { get; set; }
        public ObservableCollection<string> DayNames { get; set; }
        public event EventHandler<DayChangedEventArgs> DayChanged;
        public static readonly DependencyProperty CurrentDateProperty = DependencyProperty.Register("CurrentDate", typeof(DateTime), typeof(Calendar));

        public DateTime CurrentDate
        {
            get { return (DateTime)GetValue(CurrentDateProperty); }
            set { SetValue(CurrentDateProperty, value); }
        }

        DbProviderFactory factory;
        DbConnection connection;
        private EditDay window;
        private EditDayAdm windowAdm;
        public String userLogin = "nie dziala";
        public string userRole = "IT_ST";

        //public DateTime Date = new DateTime(1994, 4, 5);


        public ICommand DeleteCommand => new RelayCommand(x =>
        {
            if (userRole == "IT_KP")
            {
                windowAdm = new EditDayAdm
                {
                    TestDate = DateTime.ParseExact(x.ToString(), "yyyy-MM-dd HH:mm:ss", CultureInfo.InvariantCulture)
                };
                windowAdm.ViewDate = windowAdm.TestDate.ToString("yy/MM/dd", CultureInfo.InvariantCulture);
                windowAdm.UserLogin = userLogin;

                windowAdm.Closed += new EventHandler(UpdateNoteAdm);
                windowAdm.Show();

                MessageBox.Show(userRole);
            }
            else {
                window = new EditDay
                {
                    TestDate = DateTime.ParseExact(x.ToString(), "yyyy-MM-dd HH:mm:ss", CultureInfo.InvariantCulture)
                };
                window.ViewDate = window.TestDate.ToString("yy/MM/dd", CultureInfo.InvariantCulture);
                window.UserLogin = userLogin;

                window.Closed += new EventHandler(UpdateNote);
                window.Show();

                MessageBox.Show(userRole);
            }
        });

        public void SetRole(string role)
        {
            userLogin = role;
        }

                     
        private void UpdateNote(object sender, EventArgs e)
        {
            if (window.savedNote == true)
            {
                DataContext = window;
                window.savedNote = false;


                var item = Days.FirstOrDefault(i => i.Date.ToString("yy/MM/dd", CultureInfo.InvariantCulture).Equals(window.ViewDate));

                if (item != null)
                {
                    item.Description = window.DayNote;
                    item.Avail = window.DayAvail + 'h';

                    DataContext = this;
                    //item.PropertyChanged += Day_Changed;   
                }
            }
            
        }

        private void UpdateNoteAdm(object sender, EventArgs e)
        {
            if (windowAdm.savedNote == true)
            {
                DataContext = windowAdm;
                windowAdm.savedNote = false;


                var item = Days.FirstOrDefault(i => i.Date.ToString("yy/MM/dd", CultureInfo.InvariantCulture).Equals(windowAdm.ViewDate));

                if (item != null)
                {
                    item.Description = windowAdm.DayNote;
                    item.Avail = windowAdm.DayAvail + 'h';

                    DataContext = this;
                    //item.PropertyChanged += Day_Changed;   
                }
            }

        }

        private void Day_Changed(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName != "Description") return;
            if (DayChanged == null) return;

            DayChanged(this, new DayChangedEventArgs(sender as Day));
        }

        /// <summary>
        /// //////////////////////////////////
        /// </summary>
        static Calendar()
        {
            DefaultStyleKeyProperty.OverrideMetadata(typeof(Calendar), new FrameworkPropertyMetadata(typeof(Calendar)));
        }

        public Calendar()
        {
            DataContext = this;
            CurrentDate = DateTime.Today;

            DayNames = new ObservableCollection<string> { "Pon", "Wt", "Śr", "Czw", "Pt", "Sob", "Nd" };
            //DateTime Date = new DateTime(1994, 4, 5);
            Days = new ObservableCollection<Day>();

            CreateCalendar(DateTime.Today, userLogin);
        }

        public void CreateCalendar(DateTime targetDate, String userID) //tworzymy dany miesiac danego roku
        {

            this.userLogin = userID;
            //TODO wyjatek - brak polaczenia z baza
            
            factory = DbProviderFactories.GetFactory("System.Data.OracleClient");
            connection = factory.CreateConnection();
            connection.ConnectionString = "SERVER=" +
                "(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=155.158.112.45)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=oltpstud)));" +
                "uid=msbd12;" +
                "pwd=haslo2015;";
            connection.Open();

            DbCommand command = factory.CreateCommand(); //create a new command 
            DbCommand commandNote = factory.CreateCommand();

            Days.Clear();

            //we check which day of week is first day of month
            //and so what date is monday
            DateTime d = new DateTime(targetDate.Year, targetDate.Month, 1);
            int dayNumber = ((int)d.DayOfWeek + 6) % 7;
            if (dayNumber != 0) d = d.AddDays(-dayNumber); //np. 25.02 w marcu
            string availability;
            string description;

            command.CommandText = "SELECT notedate, notetext FROM Notes";
            //"WHERE notedate LIKE '" + firstDayDate.ToString("yy/MM/dd", CultureInfo.InvariantCulture) + "'";  //TODO - WHERE month 
            command.Connection = connection;
            DbDataAdapter adapter = factory.CreateDataAdapter(); //create new adapter 
            adapter.SelectCommand = command;
            DataTable dt = new DataTable(); //create a new table 
            DataSet ds = new DataSet(); //create a new dataset 
            adapter.Fill(ds, "Notes"); //fill the data set with the query result
            dt = ds.Tables[0]; //copy the table from the dataset to the dataTable

            command.CommandText = "SELECT notedate, notetext1, notetext2, noteavail FROM User_Notes";
            //"WHERE notedate LIKE '" + firstDayDate.ToString("yy/MM/dd", CultureInfo.InvariantCulture) + "'";  //TODO - WHERE month 
            command.Connection = connection;             
            adapter.SelectCommand = command;
            DataTable dtn = new DataTable(); //create a new table 
            ds = new DataSet(); //create a new dataset 
            adapter.Fill(ds, "User_Notes"); //fill the data set with the query result
            dtn = ds.Tables[0]; //copy the table from the dataset to the dataTable

            //6 weeks and 7 days
            for (int box = 0; box < 42; box++)
            {
                description = ""; availability = "";
                
                foreach (DataRow row in dt.Rows)
                {
                    if (DateTime.ParseExact(row["NoteDate"].ToString(), "yyyy-MM-dd HH:mm:ss",
                                           CultureInfo.InvariantCulture).ToString("yy/MM/dd", CultureInfo.InvariantCulture).Equals(d.ToString("yy/MM/dd", CultureInfo.InvariantCulture)))
                    {
                        description = row["NoteText"].ToString();
                        break;
                    }
                }

                foreach (DataRow row in dtn.Rows)
                {
                    if (DateTime.ParseExact(row["NoteDate"].ToString(), "yyyy-MM-dd HH:mm:ss",
                                           CultureInfo.InvariantCulture).ToString("yy/MM/dd", CultureInfo.InvariantCulture).Equals(d.ToString("yy/MM/dd", CultureInfo.InvariantCulture)))
                    {
                        //description = row["NoteText"].ToString();
                        availability = row["NoteAvail"].ToString();
                        break;
                    }
                }

                Day day = new Day { Date = d, Enabled = true, IsTargetMonth = targetDate.Month == d.Month, Description = description, Avail = availability };
                day.PropertyChanged += Day_Changed;
                if (availability != "")
                {
                    day.Avail += " h";
                }
                day.IsToday = d == DateTime.Today;
                day.IsWeekend = d.DayOfWeek == DayOfWeek.Saturday || d.DayOfWeek == DayOfWeek.Sunday;
                Days.Add(day);
                d = d.AddDays(1);

            }
            connection.Close();
        }
    }

    public class DayChangedEventArgs : EventArgs
    {
        public Day Day { get; private set; }

        public DayChangedEventArgs(Day day)
        {
            this.Day = day;
        }
    }
}

