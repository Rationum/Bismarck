using SimpleMenuApp.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleMenuApp.MVVM.ViewModel
{
    class MainViewModel : ObservableObject
    {
        #region /*Properties*/
        public RelayCommand MainsViewCommand{ get; set; }
        public MainsViewModel MainsVM { get; set; }

        public RelayCommand SidesViewCommand { get; set; }
        public SidesViewModel SidesVM { get; set; }

        public RelayCommand DesertsViewCommand { get; set; }
        public DesertsViewModel DesertsVM { get; set; }

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
        #endregion

        #region /*Constructor*/
        public MainViewModel()
        {
            MainsVM = new MainsViewModel();
            SidesVM = new SidesViewModel();
            DesertsVM = new DesertsViewModel();

            CurrentView = MainsVM;

            MainsViewCommand = new RelayCommand(o =>
            {
                CurrentView = MainsVM;
            });

            SidesViewCommand = new RelayCommand(o =>
            {
                CurrentView = SidesVM;
            });

            DesertsViewCommand = new RelayCommand(o =>
            {
                CurrentView = DesertsVM;
            });
        }
        #endregion
    }
}
