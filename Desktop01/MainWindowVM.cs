using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Desktop01.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;
using Prism.Mvvm;
using Prism.Commands;

namespace Desktop01
{
    public  partial class MainWindowVM : ObservableObject
    {
        [ObservableProperty]
        public  ObservableCollection<User> users;
    

       private DelegateCommand<User> delete_command;
        public DelegateCommand<User> DeleteCommand =>
            delete_command ?? (delete_command = new DelegateCommand<User>(executeDeleteCommand));
        void executeDeleteCommand(User parameter)
        {
            var hm = MessageBox.Show($"Are you sure want to delete {parameter.FirstName}", "Delete Confirmation", MessageBoxButton.YesNo, MessageBoxImage.Warning, MessageBoxResult.No);
            if(hm == MessageBoxResult.Yes)
            {
                Users.Remove(parameter);
            }
        }



        private DelegateCommand<User> _editCommand;
        public DelegateCommand<User> EditCommand =>
            _editCommand ?? (_editCommand = new DelegateCommand<User>(ExecuteEditCommand));

        void ExecuteEditCommand(User parameter)
        {


            var vm = new AddUserVM(parameter);
            vm.title = "EDIT USER";
            var window = new AddUserWindow(vm);

            window.ShowDialog();


            int index = users.IndexOf(parameter);
            users.RemoveAt(index);
            users.Insert(index, vm.Student);
        }


       

        [RelayCommand]
        public void AddStudent()
        {
            var vm = new AddUserVM();
            vm.title = "ADD USER";
            AddUserWindow window = new AddUserWindow(vm);
            window.ShowDialog();

            if (vm.Student != null)
            {
                users.Add(vm.Student);
            }
        }

    
    

        public  MainWindowVM()
        {
            users = new ObservableCollection<User>();
            BitmapImage image1 = new BitmapImage(new Uri("/Model/Images/1.png", UriKind.Relative));
            users.Add(new User(25, "Tom", "Black", "10/01/1998",image1));
            BitmapImage image2 = new BitmapImage(new Uri("/Model/Images/2.png", UriKind.Relative));
            users.Add(new User(23, "Carl", "Johnson", "06/23/2000",image2));
            BitmapImage image3 = new BitmapImage(new Uri("/Model/Images/3.png", UriKind.Relative));
            users.Add(new User(24, "Ann", "White", "04/15/1999",image3));
            BitmapImage image4= new BitmapImage(new Uri("/Model/Images/4.png", UriKind.Relative));
            users.Add(new User(28, "Michel", "Ricky", "12/05/1995", image4));

        }
    }
}
