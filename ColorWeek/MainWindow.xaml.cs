using System;
using System.Windows;
using System.Windows.Input;
using System.Data.Common;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using ColorWeekAppl;
using System.Globalization;

namespace ColorWeek
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        public string userID;
        
        public MainWindow()
        {
            InitializeComponent();
            

            List<string> months = new List<string> { "Styczeń", "Luty", "Marzec", "Kwiecień", "Maj", "Czerwiec", "Lipiec", "Sierpień", "Wrzesień", "Październik", "Listopad", "Grudzień" };
            cboMonth.ItemsSource = months;

            for (int i = -50; i < 50; i++)
            {
                cboYear.Items.Add(DateTime.Today.AddYears(i).Year);
            }

            cboMonth.SelectedIndex = DateTime.Today.Month - 1;
            cboYear.SelectedItem = DateTime.Today.Year;
            
            cboMonth.SelectionChanged += (o, e) => RefreshCalendar();
            cboYear.SelectionChanged += (o, e) => RefreshCalendar();
        }

        public void RefreshCalendar()
        {
            if (cboYear.SelectedItem == null) return;
            if (cboMonth.SelectedItem == null) return;

            int year = (int)cboYear.SelectedItem;

            int month = cboMonth.SelectedIndex + 1;

            DateTime targetDate = new DateTime(year, month, 1);

            Calendar.CreateCalendar(targetDate, userID);
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            DateTime targetDate = DateTime.Today;
            //Calendar.CreateCalendar(targetDate);
        }

        private void Calendar_DayChanged(object sender, DayChangedEventArgs e)
        {
            //save the text edits to persistant storage
        }

        private void Next_Click(object sender, RoutedEventArgs e)
        {
            cboMonth.SelectedIndex++;
            
        }

        private void Prev_Click(object sender, RoutedEventArgs e)
        {
            cboMonth.SelectedIndex--;
        }
    }
}
