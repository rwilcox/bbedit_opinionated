FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - ' Send Text Through Ad Hoc Shell Command     � 	 	 N   S e n d   T e x t   T h r o u g h   A d   H o c   S h e l l   C o m m a n d   
  
 l     ��  ��      by Ryan Wilcox     �      b y   R y a n   W i l c o x      l     ��  ��    $  released in the Public Domain     �   <   r e l e a s e d   i n   t h e   P u b l i c   D o m a i n      l     ��  ��           �           l     ��  ��    o i Parts of this script were derived from an early, currently unavailiable, script from Bare Bones Software     �   �   P a r t s   o f   t h i s   s c r i p t   w e r e   d e r i v e d   f r o m   a n   e a r l y ,   c u r r e n t l y   u n a v a i l i a b l e ,   s c r i p t   f r o m   B a r e   B o n e s   S o f t w a r e      l     ��������  ��  ��       !   l     ��������  ��  ��   !  " # " j     �� $�� 0 adhoccommand adhocCommand $ m      % % � & & 
 w c   - w #  ' ( ' l     ��������  ��  ��   (  )�� ) l    � *���� * O     � + , + k    � - -  . / . l   ��������  ��  ��   /  0 1 0 r    	 2 3 2 l    4���� 4 n     5 6 5 1    ��
�� 
pcnt 6 m    ��
�� 
pcli��  ��   3 o      ���� 0 oldclip oldClip 1  7 8 7 l  
 
��������  ��  ��   8  9 : 9 O   
 O ; < ; k    N = =  > ? > Z    & @ A���� @ H     B B l    C���� C I   �� D��
�� .coredoexbool        obj  D 4    �� E
�� 
TxtW E m    ���� ��  ��  ��   A k    " F F  G H G I   �� I��
�� .sysodisAaleR        TEXT I m     J J � K K R T h i s   s c r i p t   r e q u i r e s   a n   o p e n   t e x t   w i n d o w .��   H  L�� L L     "����  ��  ��  ��   ?  M N M Z   ' C O P���� O =  ' 1 Q R Q n   ' / S T S 1   - /��
�� 
leng T n   ' - U V U 1   + -��
�� 
pusl V 4   ' +�� W
�� 
TxtW W m   ) *����  R m   / 0����   P I  4 ?�� X��
�� .miscslctnull��� ��� obj  X n   4 ; Y Z Y 4   8 ;�� [
�� 
ctxt [ m   9 :����  Z 4   4 8�� \
�� 
TxtW \ m   6 7���� ��  ��  ��   N  ]�� ] r   D N ^ _ ^ c   D L ` a ` n   D J b c b 1   H J��
�� 
pusl c 4   D H�� d
�� 
TxtW d m   F G����  a m   J K��
�� 
utxt _ o      ���� 0 _selectedtext _selectedText��   < m   
  e e�                                                                                  R*ch  alis    f  OSX_Vera                   �� H+   ��
BBEdit.app                                                     *\��,@        ����  	                Applications    ��fX      ��d�     �� jR  �  .OSX_Vera:Users: aias: Applications: BBEdit.app   
 B B E d i t . a p p    O S X _ V e r a  "Users/aias/Applications/BBEdit.app  /    ��   :  f g f l  P P��������  ��  ��   g  h i h I  P U�� j��
�� .JonspClpnull���     **** j o   P Q���� 0 _selectedtext _selectedText��   i  k l k l  V V��������  ��  ��   l  m n m r   V { o p o I  V w�� q r
�� .sysodlogaskr        TEXT q m   V W s s � t t . E n t e r   y o u r   U n i x   C o m m a n d r �� u v
�� 
dtxt u o   Z _���� 0 adhoccommand adhocCommand v �� w x
�� 
btns w J   b m y y  z { z m   b e | | � } }  C a n c e l {  ~  ~ m   e h � � � � � & R u n ,   R e p l a c i n g   T e x t   ��� � m   h k � � � � � * R u n ,   R e p o r t i n g   R e s u l t��   x �� ���
�� 
dflt � m   p q���� ��   p o      ���� 0 	dialogres 	dialogRes n  � � � r   | � � � � n   | � � � � 1    ���
�� 
ttxt � 1   | ��
�� 
rslt � o      ���� 0 adhoccommand adhocCommand �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  p b p a s t e   |   � o   � ����� 0 adhoccommand adhocCommand��   � o      ���� 
0 output   �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ��� � � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 	dialogres 	dialogRes � m   � � � � � � � & R u n ,   R e p l a c i n g   T e x t � O   � � � � � r   � � � � � o   � ����� 
0 output   � n       � � � 1   � ���
�� 
pusl � 4   � ��� �
�� 
TxtW � m   � �����  � m   � � � ��                                                                                  R*ch  alis    f  OSX_Vera                   �� H+   ��
BBEdit.app                                                     *\��,@        ����  	                Applications    ��fX      ��d�     �� jR  �  .OSX_Vera:Users: aias: Applications: BBEdit.app   
 B B E d i t . a p p    O S X _ V e r a  "Users/aias/Applications/BBEdit.app  /    ��  ��   � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � �   T h e   r e s u l t   w a s :   � o   � ����� 
0 output  ��   �  � � � l  � ���������  ��  ��   �  ��� � l  � � � � � � I  � ��� ���
�� .JonspClpnull���     **** � o   � ����� 0 oldclip oldClip��   �   set it back to be nice    � � � � .   s e t   i t   b a c k   t o   b e   n i c e��   , m      � ��                                                                                  R*ch  alis    f  OSX_Vera                   �� H+   ��
BBEdit.app                                                     *\��,@        ����  	                Applications    ��fX      ��d�     �� jR  �  .OSX_Vera:Users: aias: Applications: BBEdit.app   
 B B E d i t . a p p    O S X _ V e r a  "Users/aias/Applications/BBEdit.app  /    ��  ��  ��  ��       
�� � � ��� � � �������   � ������������������ 0 adhoccommand adhocCommand
�� .aevtoappnull  �   � ****�� 0 oldclip oldClip�� 0 _selectedtext _selectedText�� 0 	dialogres 	dialogRes�� 
0 output  ��  ��   � � � � B a w k   ' { g s u b ( / , | ^ | $ / ,   " | " ) ;   p r i n t } ' � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  )����  ��  ��   �   � ! �������~�} J�|�{�z�y�x�w�v�u s�t�s | � ��r�q�p�o�n�m ��l�k�j � �
�� 
pcli
�� 
pcnt� 0 oldclip oldClip
�~ 
TxtW
�} .coredoexbool        obj 
�| .sysodisAaleR        TEXT
�{ 
pusl
�z 
leng
�y 
ctxt
�x .miscslctnull��� ��� obj 
�w 
utxt�v 0 _selectedtext _selectedText
�u .JonspClpnull���     ****
�t 
dtxt
�s 
btns
�r 
dflt�q 
�p .sysodlogaskr        TEXT�o 0 	dialogres 	dialogRes
�n 
rslt
�m 
ttxt
�l .sysoexecTEXT���     TEXT�k 
0 output  
�j 
bhit�� �� ���,E�O� B*�k/j  �j OhY hO*�k/�,�,j  *�k/�k/j Y hO*�k/�,�&E�UO�j O�a b   a a a a mva la  E` O_ a ,Ec   Oa b   %j E` O_ a ,a   � _ *�k/�,FUY a  _ %j O�j U
�� 
pcli � � � � \ N a m e ,   e m a i l ,   D a t e   S e n t   t o   S c o t t ,   T e c h s ,   S t a t u s � �i � �
�i 
ttxt � �h ��g
�h 
bhit � � � � & R u n ,   R e p l a c i n g   T e x t�g   � � � � ` | N a m e |   e m a i l |   D a t e   S e n t   t o   S c o t t |   T e c h s |   S t a t u s |��  ��  ascr  ��ޭ