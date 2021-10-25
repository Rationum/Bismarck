using SimpleStaffApp.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleRecipeApp.MVVM.ViewModel
{
    class MainViewModel : ObservableObject
    {
        public RelayCommand MainsViewCommand{ get; set; }
                public RelayCommand SidesViewCommand { get; set; }

        public MainsViewModel MainsVM { get; set; }
        public SidesViewModel SidesVM { get; set;  }
        private object _currentView;


        public object CurrentView
        {
            get { return _currentView; }
            set
            {
                _currentView = value;
                Onpropertychanged();
            }
        }

        public MainViewModel()
        {
            MainsVM = new MainsViewModel();
            SidesVM = new SidesViewModel();
            
            CurrentView = MainsVM;

            MainsViewCommand = new RelayCommand(o =>
            {
                CurrentView = MainsVM;
            });

            SidesViewCommand = new RelayCommand(o =>
            {
                CurrentView = SidesVM;
            });
        }
    }
}
