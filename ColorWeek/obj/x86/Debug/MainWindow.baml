   M S B A M L   `   `   `  ����H  DColorWeekAppl, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullD2clr-namespace:ColorWeekAppl;assembly=ColorWeekApplColorWeekAppl  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	    	ColorWeek   ColorWeek.MainWindow   5   	   <Color2clr-namespace:ColorWeekAppl;assembly=ColorWeekAppl  5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	     � Title$  
MainWindow��5	   	   $	��500��6   $	��900��6)   
���������5
      
� 5   
   .��5      �  � Color$ 	#FF560B91��6    � Offset$ 0.018Q�6-   � 5      $ 	#FF050245��6   $
 0.89Q�6-   � 5      $ 	#FF05023D��6   $ 0.989Q�6-   5      .��5      � ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    � MappingMode$ RelativeToBoundingBox=�63    �� 
StartPoint$ 0.5,0&�6W   .��5      � $ 	#FF3D338C��6   � 5      $ 	#FF592C96��6   $ 0.677Q�61   5       � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5       $
��Auto �6   �� 5!      $
��Auto �6   �� 5"      $��* �6   .+�5&   
      ColorWeekAppl.Calendar  -   5          Name$ Calendar��5&      $��0��6M   $��4��6]   $��2��6q   �� 5'   
   -   5        	 ��Name$	 cboMonth��5'   0   $��1��6   $��1��6#   $��14(�6B   $��Center=�6P   $��Center=�6r   $��90��6�   $��0,0,0,0q�6�   ���	#FF030303   ComboBoxStyle1#���   6�   
���   �
�������$
��Bold"�6:  
 �� DisplayMemberPath
 6�   ��  � 	Resources 5(      ��%X   (��       5)      *,*SystemParameters.VerticalScrollBarWidthKey+)X�6   0Q�6^   5*      ��5+      �� 5,       �� 
TargetType" ��6   .�5-      ��  �� Property � �� �� Value �	#FF37276963   �� 5.       � ��$ 0q�68   5/      51      �� 52   
   -   5        $	 cboYear��52   0   $��2��6   $��1��6#   $��14(�6A   $��50��6O   $��Center=�6]   $��Center=�6   
���   �#���   6�   $��0,0,0,0q�6�   
�������$
��Bold"�6"  
 6�   ��  53      ��%X   (��       54      *,*SystemParameters.VerticalScrollBarWidthKey+)X�6   0Q�6^   55      ��56      �� 57      " ��6   .�58      ��  � �� �	#FF37276963   �� 59       � ��$ 0q�68   5:      5<      �� 5?   
   -   5        $��3��5?      $��1��6!   $	��≫��6.   $��0q�6@   $
��Left=�6T   $��25(�6o   $��10,0,0,0q�6}   $
��Bold"�6�    � UseLayoutRounding .  
������ 
�������6�   �� 5@   
   -   5        $��0��5@      $��1��6!   $	��≪��6.   $��0q�6@   $��Right=�6T   $	��Top=�6p   $��Center=�6�   $��25(�6�   $
��Bold"�6�   
������ 
�������$��0,0,10,0q�6  5B      5D      5E      