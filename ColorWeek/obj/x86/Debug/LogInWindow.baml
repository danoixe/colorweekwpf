   M S B A M L   `   `   `  ����D  @ColorWeek, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ColorWeek	ColorWeek  5   	       ColorWeek.LogInWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ColorWeek     5   	     � Title$  LogInWindow��5   	   $	��500��6   $	��500��6*   $	��800��66   $	��800��6E   $	��400��6U   $	��300��6d    � WindowStartupLocation$ CenterScreen=�6t   .��5
      � ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    � MappingMode$ RelativeToBoundingBox=�63    �� 
StartPoint$ 0.5,0&�6W   .��5      �  � Color$ 	#FF342B79��6   � 5      $ 	#FF4D208B��6    � Offset$ 0.774Q�61   5      .+�5   
   �� ���	#FF17C596$��1q�6)   $��45,45,45,45q�6=    �� CornerRadius$ 30,30,30,30��6R   ��5   
   �� 5       �� Color$ 	#FF17092B��6   	 �� Opacity$		 0.6Q�60   ._�5   
   � 
 � ColumnDefinitions
 5      �� 5      $
��Auto �6#   �� 5      $��* �6#   �� 5      $
��Auto �6#   �� 5       � RowDefinitions 5      �� 5      $��* �6    �� 5      $
��Auto �6    �� 5       $
��Auto �6    �� 5!      $
��Auto �6    �� 5"      $
��Auto �6    �� 5#      $��* �6    .+�5%      �� -   5        $��LoginHeading��5%   }   $��0��6   $��2��6%   $��23��66   $��Center=�6E   $��Center=�6b   $��Zaloguj się��6�   $��17(�6�   $
��Bold"�6�   $��ExtraCondensed&�6�   
�������6�   �� 5&      -   5        $��
textBlock1��5&   {   $��1��6   $��1��6%   $��20��65   $��Right=�6D   $��Center=�6`   $��Login��6�   $��0,3,10,0q�6�   
�������$
��Bold"�6�   �� 5'      -   5        $��
textBlock2��5'   |   $��2��6   $��1��6%   $��20��65   $��Right=�6D   $��Center=�6`   $��Hasło��6�   $��0,3,10,0q�6�   
�������$
��Bold"�6�   �� 5(      -   5        $��textBoxLogin��5(   R   $��1��6   $��2��6#   $��30��63   $	��200��6B   $	��0,5q�6f   ���	#FF15FAAC$��Center=�6�   $
��Bold"�6�   G� 5)      -   5        $��passwordBox1��5)   U   $��2��6   $��2��6'   $��30��67   $	��200��6F   $��0,5,0,0q�6i   ���	#FF15FAAC$��Center=�6�   �� 5*      -   5        $��button1��5*   m   $��4��6   $��2��6"   $��Login��62   $��70��6B   $��Center=�6P   $��	5,0,10,10q�6�   ���	#FF17C596���	#FF17C596
�������$
��Bold"�6�   �� 5+      -   5         ��Name$ errormessage��5+   a   $��3��6   $��2��6%   $��23��65   $��Center=�6D   $��Center=�6x    J� OpacityMask
 �<�����	#FFE5572C6�   �� 5,      -   5        $��textBlockHeading��5,   D   $��5��6   $��2��6%   $��20��65   $��Center=�6\   $	��Top=�6y   $��12(�6�   $��Italic$�6�    �� Padding$ 0q�6�   
�������$��0,10,0,0q�6�   !Jeżeli nie masz jeszcze konta �� 5.      �� 5/      -	   5        $��12(�5/   :   $��Normal$�6H   ���	#FF17C596.�6r   Zarejestruj się6�   50      51      52      53      54      55      