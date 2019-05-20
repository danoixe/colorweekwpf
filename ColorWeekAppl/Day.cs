using System;
using System.ComponentModel;

namespace ColorWeekAppl
{
    public class Day : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;


        private bool isToday;
        private bool isWeekend;
        private DateTime date;
        private bool isTargetMonth;
        private string notes;
        private bool enabled;
        private string avail;
        private string description;

        public DateTime Date
        {
            get { return date; }
            set
            {
                date = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("Date"));
            }
        }

        public bool IsToday
        {
            get { return isToday; }
            set
            {
                isToday = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("IsToday"));
            }
        }

        public bool IsWeekend
        {
            get { return isWeekend; }
            set
            {
                isWeekend = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("IsToday"));
            }
        }

        public bool IsTargetMonth
        {
            get { return isTargetMonth; }
            set
            {
                isTargetMonth = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("IsTargetMonth"));
            }
        }

        public string Notes
        {
            get { return notes; }
            set
            {
                notes = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("Notes"));
            }
        }

        public bool Enabled
        {
            get { return enabled; }
            set
            {
                enabled = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("Enabled"));
            }
        }

        public string Description
        {
            get { return description; }
            set
            {
                description = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("Decription"));
            }
        }

        public string Avail
        {
            get { return avail; }
            set
            {
                avail = value;
                if (PropertyChanged != null) PropertyChanged(this, new PropertyChangedEventArgs("Avail"));
            }
        }

    }
}
