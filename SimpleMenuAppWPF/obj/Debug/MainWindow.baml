   M S B A M L   `   `   `  ����K  GSimpleMenuAppWPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:SimpleMenuAppWPFSimpleMenuAppWPF  5   	   Q-clr-namespace:SimpleMenuAppWPF.MVVM.ViewModelSimpleMenuAppWPF.MVVM.ViewModel  5   	   !    SimpleMenuAppWPF.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:SimpleMenuAppWPF     5   	   C	viewModel-clr-namespace:SimpleMenuAppWPF.MVVM.ViewModel     5   	   $	��600��5	   	   $	��920��5
   	     � WindowStyle$
  None=�5   	    � 
ResizeMode$ NoResize=�5   	   
������  � AllowsTransparency .  � DataContext 5      3  -SimpleMenuAppWPF.MVVM.ViewModel.MainViewModel  5   
   .��5      �� ���#272537 �� CornerRadius$ 10��5      ._�5   
   �  � ColumnDefinitions 5      �� 5      $	��200 �6#   �� 5       � RowDefinitions 5      �� 5      $��75 �6    �� 5      .+�5"      �� $��SampleProject��6   $��center=�5#      $��Center=�5$      
�������$��20(�5&      �� 5(      $��1��6   .+�5)      	� $��Mains��6   $��50��5*      
�������$��14(�5,         MenuButtonTheme#��[  5-       d� 	IsChecked$
 TrueY�5/      ��5.      �� *MainsViewCommand+5/      	� 50      $��Sides��6   $��50��51      
�������$��14(�53      #��[  54      ��55      �� *SidesViewCommand+	� 56      $��Desserts��6   $��50��57      
�������$��14(�59      #��[  5:      ��5;      �� *DesertsViewCommand+	� 5<      -   5        $��
Close Menu��5<      $��50��5=      
�������$��14(�5?      #��[  5@      6G   5A      �� 5C      $��1��6   $��1��5D      $��10q�5E      ��5F      �� *CurrentView+5G      5H      5I      5J      