   M S B A M L   `   `   `  ����D  @ColorWeek, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:ColorWeekApplColorWeekAppl  5      b ^PresentationFramework.Aero2, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes 5          ColorWeek.App   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      -localclr-namespace:ColorWeekAppl     5      ^ThemesKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2     5        �� ShutdownMode$  OnLastWindowClose=�5       �� 	Resources 5	         FocusVisual �� Property �� Value J� SnapsToDevicePixels �� StrokeDashArray  ComboBox.Static.Background �� Color  ComboBox.Static.Border ' #ComboBox.Static.Editable.Background # ComboBox.Static.Editable.Border . *ComboBox.Static.Editable.Button.Background * &ComboBox.Static.Editable.Button.Border  ComboBox.MouseOver.Glyph ! ComboBox.MouseOver.Background �� EndPoint �� 
StartPoint	 � Color
 � Offset 	 ComboBox.MouseOver.Border *
 &ComboBox.MouseOver.Editable.Background & "ComboBox.MouseOver.Editable.Border 1 -ComboBox.MouseOver.Editable.Button.Background - )ComboBox.MouseOver.Editable.Button.Border  ComboBox.Pressed.Glyph  ComboBox.Pressed.Background  ComboBox.Pressed.Border ( $ComboBox.Pressed.Editable.Background $  ComboBox.Pressed.Editable.Border / +ComboBox.Pressed.Editable.Button.Background + 'ComboBox.Pressed.Editable.Button.Border  ComboBox.Disabled.Glyph   ComboBox.Disabled.Background  ComboBox.Disabled.Border ) %ComboBox.Disabled.Editable.Background % !ComboBox.Disabled.Editable.Border 0 ,ComboBox.Disabled.Editable.Button.Background , (ComboBox.Disabled.Editable.Button.Border  ComboBox.Static.Glyph  ComboBoxToggleButton �� 
TargetType �� 
TargetType ��Name F�Name �� Triggers ^� 
Conditions �� Binding �� RelativeSource �� AncestorType �� Value �� 
TargetName P� Property P� Value  ComboBoxTemplate �Name � ColumnDefinitions �Name � AllowsTransparency �� Mode5  /Microsoft.Windows.Themes.SystemDropShadowChrome  Name   Color �� MaxDropDownHeight  �� ElementName! ��Name" �� ClearTypeHint# ��Name$ ��Name% ��Name-  'System.Windows.Input.KeyboardNavigation&   DirectionalNavigation' d�Name( d� 	IsChecked) ��Name* �� SelectionBoxItemTemplate+ �� SelectionBoxItem#, �� SelectionBoxItemStringFormat- �� ContentStringFormat. J� IsHitTestVisible/ P� 
SourceName0 ]� 
Conditions1 �� Property  TextBox.Static.Background   ComboBoxEditableTextBox ! ComboBoxEditableTemplate2 ��Name3 �� 
IsReadOnly " ComboBoxStyle14 �� Triggers��%J-  &	        &	 �     &	 �     &	 �     &	     &	 :    &	 _    &	 �    &	 �    &		 A    &	
 d    &	 �    &	 �    &	 F    &	 i    &	 �    &	 (    &	 K    &	 n    &	 �    &	 -    &	 P    &	 s    &	 �    &	 �    &	 �    &	 �    &	 $    &	 I    &	 l    7  7  7  7  7  7  7  7  7  7 	 7 
 7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  7  &	 �    7  &	     &	  *    &	! J    7  7  7   &	" �(    7   7  7  7  7 ! �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6$    . #��� ��6J   $��1��6�   $	 1 2R�6�   5      5      5      �� 5   
   $ Transparent��6=   �� 5   
   $ 	#FF272063��69   �� 5   
   $ 	#FF060606��6F   �� 5   
   $ Transparent��6B   �� 5   
   $ Transparent��6M   �� 5   
   $ 	#FF272063��6I   �� 5   
   $ 	#FF000000��6;   �� 5   
   $	 0,1&�6D   $	 0,0&�6S   .��5      � $	 	#FFECF4FC��6   $	
 0.0Q�6-   � 5      $	 	#FFDCECFC��6   $	
 1.0Q�6-   5      �� 5   
   $ 	#FF272063��6<   �� 5    
   $ 	#FFFFFFFF��6I   �� 5!   
   $ 	#FF7EB4EA��6E   �� 5"   
   $	 0,1&�6T   $	 0,0&�6c   .��5#      � $	 	#FFEBF4FC��6   $	
 0.0Q�6-   � 5$      $	 	#FFDCECFC��6   $	
 1.0Q�6-   5%      �� 5&   
   $ 	#FF7EB4EA��6L   �� 5'   
   $ 	#FF000000��69   �� 5(   
   $	 0,1&�6B   $	 0,0&�6Q   .��5)      � $	 	#FFDAECFC��6   $	
 0.0Q�6-   � 5*      $	 	#FFC4E0FC��6   $	
 1.0Q�6-   5+      �� 5,   
   $ 	#FF569DE5��6:   �� 5-   
   $ 	#FFFFFFFF��6G   �� 5.   
   $ 	#FF569DE5��6C   �� 5/   
   $	 0,1&�6R   $	 0,0&�6a   .��50      � $	 	#FFDAEBFC��6   $	
 0.0Q�6-   � 51      $	 	#FFC4E0FC��6   $	
 1.0Q�6-   52      �� 53   
   $ 	#FF569DE5��6J   �� 54   
   $ 	#FFBFBFBF��6:   �� 55   
   $ 	#FFF0F0F0��6?   �� 56   
   $ 	#FF272063��6;   �� 57   
   $ 	#FFFFFFFF��6H   �� 58   
   $ 	#FFBFBFBF��6D   �� 59   
   $ Transparent��6O   �� 5:   
   $ Transparent��6K   �� 5;   
   $ 	#FF606060��68   �� 5<   
   " d�6-   .�5=      ��  �@�OverridesDefaultStyle . 66   �� 5>       � �� .  6*   �� 5?       � |� .  6*   �� 5@       �@��	ClickMode$ Press=�6*   �� 5A       � �� 5B      �� 5C      " d�6&   .R�5D      �� $ templateRoot��6!   8��  #��z��6m   8��  . ._�5E      �� $ splitBorder��6%   
������ $��1q�6T   $��Right=�6h   $��0q�6�    . #��� r�6�   ._�5F   "   F� $ arrow��6'   F����        ���( ��( јaQ     јaQ P����̰( � �    P����        8�� $��Center=�6�   $��0q�6�   $��Center=�6�   5G      5H       5I      ^� 5J       5K   "   �� 5L   &    60   �� *
IsEditable+ �� " �� true6�   �� 5M   &    60   �� *IsMouseOver+ �� *Self+	 false6v   �� 5N   &    60   �� *	IsPressed+ �� *Self+	 false6t   �� 5O   &    60   �� *	IsEnabled+ �� *Self+ true6t   .0�5Q   "   �� $ templateRoot��6?   8   � ��6Y   �� 5R   "   $ templateRoot��6@   8   � ��6Z   �� 5S   "   $ splitBorder��6?   8   � ��6X   �� 5T   "   $ splitBorder��6@   8   � ��6Y   5U      P� 5V       �@J�IsMouseOver . . �5W   "   �� $ arrow��69   8   � ��6L   5X      ^� 5Y       5Z   "   �� 5[   &    60   �� *IsMouseOver+ �� *Self+ true6v   �� 5\   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5^   "   �� $ templateRoot��6?   8   � ��6Y   �� 5_   "   $ templateRoot��6@   8 	  � ��6Z   5`      ^� 5a       5b   "   �� 5c   &    60   �� *IsMouseOver+ �� *Self+ true6v   �� 5d   &    60   �� *
IsEditable+ �� " �� true6�   .0�5f   "   �� $ templateRoot��6?   8 
  � ��6Y   �� 5g   "   $ templateRoot��6@   8   � ��6Z   �� 5h   "   $ splitBorder��6?   8   � ��6X   �� 5i   "   $ splitBorder��6@   8   � ��6Y   5j      P� 5k       � �� . . �5l   "   �� $ arrow��69   8   � ��6L   5m      ^� 5n       5o   "   �� 5p   &    60   �� *	IsPressed+ �� *Self+ true6t   �� 5q   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5s   "   �� $ templateRoot��6?   8   � ��6Y   �� 5t   "   $ templateRoot��6@   8   � ��6Z   5u      ^� 5v       5w   "   �� 5x   &    60   �� *	IsPressed+ �� *Self+ true6t   �� 5y   &    60   �� *
IsEditable+ �� " �� true6�   .0�5{   "   �� $ templateRoot��6?   8   � ��6Y   �� 5|   "   $ templateRoot��6@   8   � ��6Z   �� 5}   "   $ splitBorder��6?   8   � ��6X   �� 5~   "   $ splitBorder��6@   8   � ��6Y   5      P� 5�       � {� .  . �5�   "   �� $ arrow��69   8   � ��6L   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsEnabled+ �� *Self+	 false6t   �� 5�   &    60   �� *
IsEditable+ �� " ��	 false6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   5�      ^� 5�       5�   "   �� 5�   &    60   �� *	IsEnabled+ �� *Self+	 false6t   �� 5�   &    60   �� *
IsEditable+ �� " �� true6�   .0�5�   "   �� $ templateRoot��6?   8   � ��6Y   �� 5�   "   $ templateRoot��6@   8   � ��6Z   �� 5�   "   $ splitBorder��6?   8   � ��6X   �� 5�   "   $ splitBorder��6@   8   � ��6Y   5�      5�      5�      5�      �� 5�   
   " ��63   .R�5�      � $ templateRoot��6    .  5�      �� 5�      $��* �6'   �� 5�      #��� r�6'   $��0 �6z   .+�5�      � $ 
PART_Popup��6    . $��2��6F   $��1q�6�   #��� .�6�   $��Bottom=�6  ��6Z   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+.��5�        $ shadow��64   $ Transparent��6D   #��z 6X   ��6�   �� *ActualWidth+$  templateRoot��._�5�      �� $ dropDownBorder��6!   #��� ��69   $��0q�6�   #��� ��6�   ._�5�      �� $! DropDownScrollViewer��6+   .��5�   "   � $
 grid��6'   $" Enabled=�65   .+�5�   &   �� $# canvas��6-   $
��Left=�6=   $��0��6X   $	��Top=�6c   $��0��6{   .+�5�   *   �� $$ 
opaqueRect��64   ��6H   �� *
Background+$  dropDownBorder����6�   �� *ActualHeight+$  dropDownBorder����6�   �� *ActualWidth+$  dropDownBorder��5�   '   �� 5�   &   $% ItemsPresenter��65   $& 	Contained=�6M   # z 6�   5�   #   5�      5�      5�      5�      d� 5�      $' toggleButton��6   #��z��65   #��z��6a   #��z��6�   $��2��6�   8��  ( 6�   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+66  �� 5�      $) contentPresenter��6#   #��z* 6=   #��z��6z   #��z+ 6�   #- z, 6�   #��z��6-  . .  #��z��6�  # z 6�  #��z��6�  5�       5�      P� 5�      $/ 
PART_Popup��63    �@�HasDropShadow . . �5�      �� $ shadow��6/    � ��$ 0,0,5,5q�6C   �� 5�      $ shadow��6.    �@ Color$ 	#71000000��6B   5�      P� 5�       �@��HasItems .  . �5�      �� $ dropDownBorder��6/    � ��$ 95��6K   5�      ]� 5�      0 5�      �� 5�      1 �@��
IsGrouping . 6:   �� 5�      "1 �@%�IsVirtualizingWhenGrouping .  6\   ./�5�      ��  � �� .  6F   5�      P� 5�      $/ DropDownScrollViewer��6C    � �� .  . �5�      �� $ 
opaqueRect��63    6K   �� *VerticalOffset+$  DropDownScrollViewer�� �@��Top�� 5�      $ 
opaqueRect��64    6L   �� *HorizontalOffset+$  DropDownScrollViewer�� �@��Left5�      5�      �� 5�   
   $ 	#FFFFFFFF��6<   �� 5�   
   " ��60   .�5�      ��  �@�OverridesDefaultStyle . 66   �� 5�       �@J�	AllowDrop . 6*   �� 5�       � ��$ 0��6)   �� 5�       � ��$ 0��6*   �� 5�       �@�FocusVisualStyle 61   Z� �� 5�       �@��PanningMode$ VerticalFirst=�69   �� 5�       �@��IsFlicksEnabled .  67   �� 5�       � �� 5�      �� 5�      " ��6&   .R�5�      �� $! PART_ContentHost��6'   
������ |�.  $��Hidden=�6l   $��Hidden=�6�   5�      5�      5�      �� 5�   
   " ��6;   .R�5�      � $ templateRoot��6    .  5�      �� 5�      $��* �6'   �� 5�      #��� r�6'   $��0 �6z   .+�5�      � $ 
PART_Popup��6    . $��2��6F   #��� .�6�   $��Bottom=�6  ��6Z   �� *IsDropDownOpen+ �� *TemplatedParent+.��5�        $ shadow��64   $ Transparent��6D   #��z 6X   ��6�   �� *ActualWidth+$  templateRoot��._�5�      �� $ dropDownBorder��6!   #��� ��69   $��0q�6�   #��� ��6�   ._�5�      �� $! DropDownScrollViewer��6+   .��5�   "   � $
 grid��6'   $" Enabled=�65   .+�5�   &   �� $# canvas��6-   $
��Left=�6=   $��0��6X   $	��Top=�6c   $��0��6{   .+�5�   *   �� $$ 
opaqueRect��64   ��6H   �� *
Background+$  dropDownBorder����6�   �� *ActualHeight+$  dropDownBorder����6�   �� *ActualWidth+$  dropDownBorder��5�   '   �� 5�   &   $% ItemsPresenter��65   $& 	Contained=�6M   # z 6�   5�   #   5�      5�      5�      5�      d� 5�      $' toggleButton��6   #��z��65   #��z��6a   #��z��6�   $��2��6�   8��  ( 6�   �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+66  �� 5�      $ border��6   8�� #��z��6a   ._�5�      �� $2 PART_EditableTextBox��6   #��z��6<   #��z��6�   8�� #��z��6-  3 6�   �� *
IsReadOnly+ �� *TemplatedParent+6-  5�      5�       5�      P� 5�       � {� .  . �5�      �� $ border��60    �@J�Opacity$
 0.56Q�6D   5�      P� 5�       �@J�IsKeyboardFocusWithin . . �5�      ��  � ��
 �   �63   5�      P� 5�      $/ 
PART_Popup��63    �@�HasDropShadow . . �5�      �� $ shadow��6/    � ��$ 0,0,5,5q�6C   �� 5�      $ shadow��6.    �@ Color$ 	#71000000��6B   5�      P� 5�       �@��HasItems .  . �5�      �� $ dropDownBorder��6/    � ��$ 95��6K   5�      ]� 5�      0 5�      �� 5      1 �@��
IsGrouping . 6:   �� 5     "1 �@%�IsVirtualizingWhenGrouping .  6\   ./�5     ��  � �� .  6F   5     P� 5     $/ DropDownScrollViewer��6C    � �� .  . �5     �� $ 
opaqueRect��63    6K   �� *VerticalOffset+$  DropDownScrollViewer�� �@��Top�� 5     $ 
opaqueRect��64    6L   �� *HorizontalOffset+$  DropDownScrollViewer�� �@��Left5     5
     �� 5  
   " ��6'   .�5     ��  �@�FocusVisualStyle8   61   �� 5      � ��8  6+   �� 5      � ��8  6,   �� 5      � ��# � ��6+   �� 5      � ��$ 0q�60   �� 5      � ��$
 Auto=�6K   �� 5      � ��$
 Auto=�6I   �� 5      � ��$ 6,3,5,3q�6(   �� 5      � �� . 6>   �� 5      �@��PanningMode$
 Both=�69   �� 5      �@��IsFlicksEnabled .  67   �� 5      � ��8  6)   4 5     P� 5      �@��
IsEditable . . �5     ��  � �� .  62   �� 5      � ��$ 2q�60   �� 5      � ��8  61   5     5      5"     5#     