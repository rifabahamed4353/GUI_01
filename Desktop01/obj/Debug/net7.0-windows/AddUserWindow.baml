   M S B A M L   `   `   `  ����D  @Desktop01, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Desktop01	Desktop01  5   	       Desktop01.AddUserWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Desktop01     5   	     � WindowStartupLocation$  CenterScreen=�5   	   $	��450��5	   E   $	��500��6R   $
��Bold"�6^    � Title 6	   �� *Title+ �� UpdateSourceTrigger$ PropertyChanged=� � DataContext 5
         Desktop01.AddUserVM  5   
   .��5      �� $��1q�6   
�����_�._�5   
   � 
�����w� � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6     � ColumnDefinitions 5      �� 5      $
��Auto �6#   �� 5      $��* �6#   .+�5      �� $	��500��5      $	��450��6   $��Center=�6&   $	��Top=�5       �� Orientation$ Vertical=�6%   .+�5      �� $��5q�6    �� TextAlignment$ Center=�6'   $��Center=�6y   $	��200��6�   ��6>   �� *Title+$ PropertyChanged=�6�   �� 5      $��First Name:��6   $��5q�6/      
Buttontext#��[  6:   $
��Left=�6^   �� 5      $��Medium"�6[   $��5q�6o   $��1��6z   $	��400��6�   $
��Left=�6�   ��6   �� *	Firstname+$ PropertyChanged=�6�   �� 5      $��
Last Name:��6   $��5q�6.   $��1��69   #��[  6F   $
��Left=�6j   �� 5       $��Medium"�6Z   $��5q�6n   $��1��6y   $	��400��6�   $
��Left=�6�   ��6   �� *
Lastname+$ PropertyChanged=�6�   �� 5!      $
��Age:��6   $��5q�6(   $��1��63   #��[  6@   $
��Left=�6d   �� 5"      $��Medium"�6T   $��5q�6h   $��1��6s   $��1��6�   $	��400��6�   $
��Left=�6�   ��6   �� *Age+$ PropertyChanged=�6�   �� 5#      $��Date Of Birth:��6   $��5q�62   $��1��6=   #��[  6J   $
��Left=�6n   (  "System.Windows.Controls.DatePicker  5$      $��5q�6�   $��1��6�   $��1��6�   $	��300��6�   $
��Left=�6�      SelectedDateFormat$ Short=�6�   	   SelectedDate	 6   �� *Dob+$ PropertyChanged=�
 �� StringFormat$
 
dd/mm/yyyy��   Text 6z   �� *Dateofbirth+6�   �� 5&      $	��GPA��6   $��5q�6'   $��1��62   #��[  6?   $
��Left=�6c   �� 5'      $��Medium"�6q   $��5q�6�   $��1��6�   $��1��6�   $	��400��6�   $
��Left=�6�   ��6   �� *Gpa+$ PropertyChanged=� �� TargetNullValue$  �� �� Delay$	 800��6�   �� 5(      $��Insert Picture��6     RoundedRectButton#��[ 62   $	��100��6]   $
��Left=�6i   $��	5,0,5,-30q�6�   $��3��6�   $��Bottom=�6�   $��2��6�   ��6�   �� *UploadPhotoCommand+6�   �� 5)      $��40��6   $
��Left=�6$   $	��100��6?   $	��Top=�6K   $��
120 12 0 0q�6c   ��6w   �� *SelectedImage+$ PropertyChanged=��� 5+      $
��Save��6   #��[ 6)   $
��0 10q�6t   $��3��6�   $��Bottom=�6�   $��2��6�   $	��150��6�   $��Center=�6�   ��6T   �� *SaveCommand+6�   5.      50      52      54      