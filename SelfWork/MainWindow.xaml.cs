using Microsoft.EntityFrameworkCore;
using SelfWork.Database;
using SelfWork.Models;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SelfWork
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow :Window
    {
        public MainWindow ()
        {
            InitializeComponent( );
            using (var context = new StudentsContext())
            {
                studentsListView.ItemsSource = context
                    .Students
                    .Include(s => s.Group)
                    .ToList( );
            }
        }

        private void searchBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (searchBox.Text.Length == 0)
            {
                using (var context = new StudentsContext())
                {
                    studentsListView.ItemsSource = context
                        .Students
                        .Include(s => s.Group)
                        .ToList();
                }
            }
            else
            {
                using (var context = new StudentsContext())
                {
                    studentsListView.ItemsSource = context
                        .Students
                        .Include(s => s.Group)
                        .Where(s => s.Fullname.Contains(searchBox.Text) || s.Group.Title.Contains(searchBox.Text))
                        .ToList();
                }
            }
        }

        private void comboSort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            using (var context = new StudentsContext())
            {
                switch (comboSort.SelectedIndex)
                {
                    case 0:
                        studentsListView.ItemsSource = context
                        .Students
                        .Include(s => s.Group)
                        .Where(s => s.Fullname.Contains(searchBox.Text) || s.Group.Title.Contains(searchBox.Text))
                        .ToList();
                        break;
                    case 1:
                        studentsListView.ItemsSource = context
                        .Students
                        .Include(s => s.Group)
                        .Where(s => s.Fullname.Contains(searchBox.Text) || s.Group.Title.Contains(searchBox.Text))
                        .OrderBy(s => s.Fullname)
                        .ToList();
                        break;
                    case 2:
                        studentsListView.ItemsSource = context
                        .Students
                        .Include(s => s.Group)
                        .Where(s => s.Fullname.Contains(searchBox.Text) || s.Group.Title.Contains(searchBox.Text))
                        .OrderBy(s => s.Birthday)
                        .ToList();
                        break; 
                    case 3:
                        studentsListView.ItemsSource = context
                        .Students
                        .Include(s => s.Group)
                        .Where(s => s.Fullname.Contains(searchBox.Text) || s.Group.Title.Contains(searchBox.Text))
                        .OrderBy(s => s.Group.Title)
                        .ToList();
                        break;
                    default:
                        break;
                }
            }
        }
    }
}
