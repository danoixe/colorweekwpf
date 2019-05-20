
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;

namespace ColorWeek
{
    public class Calendar : Control
    {
        static void Main(string[] args)
        {
            
        }
        public ObservableCollection<Day> Days { get; set; }

        public Calendar()
        {
        }

        

        public void CreateCalendar(DateTime targetDate) //tworzymy dany miesiac danego roku
            {
                //Days.Clear();

                //we check which day of week is first day of month
                //and so what date is monday
                DateTime date = new DateTime(targetDate.Year, targetDate.Month, 1);
                int dayNumber = ((int)date.DayOfWeek + 6) % 7;
                if (dayNumber != 0) date = date.AddDays(-dayNumber); 

                //6 weeks and 7 days
                
            }
        
    }
}