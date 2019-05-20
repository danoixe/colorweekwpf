/*
    Jarloo
    http://www.jarloo.com
 
    This work is licensed under a Creative Commons Attribution-ShareAlike 3.0 Unported License  
    http://creativecommons.org/licenses/by-sa/3.0/ 

*/

using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;

namespace ColorWeekAppl
{
    public class ColorBorder : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string description = (string)value;

            if (string.IsNullOrEmpty(description)) return null;

            if (description.Length > 0) return new LinearGradientBrush(Color.FromRgb(21, 250, 172), Color.FromRgb(21, 250, 172), new Point(0.5, 0), new Point(0.5, 1));

            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }


}