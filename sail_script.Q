'中間
arr_mid_x = 1147
arr_mid_y = 231
'右
arr_right_x = 1327
arr_rigth_y = 386
'左
arr_left_x = 966
arr_left_y = 386
'按鍵
button_offset_x = 20
button_offset_y = 5
'bluestack windows
bluestack_leftup_x =925
bluestack_leftup_y =8
bluestack_rightdown_x = 1362
bluestack_rightdown_y = 723
'圖片路徑
picture_fight = "C:\pictures\fight.bmp"
picture_skip = "C:\pictures\skip.bmp"
picture_score = "C:\pictures\score.bmp"
picture_rob = "C:\pictures\rob.bmp"
picture_bless = "C:\pictures\bless.bmp"
picture_confirm = "C:\pictures\confirm.bmp"
While True
	mysec = Second(Now)
	Select Case (mysec Mod 3)
	Case 0
		arx = arr_left_x
		ary = arr_left_y
    	//情況1
	Case 1
		arx = arr_right_x
		ary = arr_rigth_y
    	//情況2
	Case 2
		arx = arr_mid_x
		ary = arr_mid_y
	End Select
	
	MoveTo arx, ary
	LeftClick 1
	'海盜戰
	FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y,picture_fight,0.9,batX,batY
	If batX > 0 And batY > 0 Then
		MoveTo batX + button_offset_x, batY + button_offset_y
		'MoveTo 1148, 546
		LeftClick 3
		FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y, picture_skip, 0.9, JUMPX, JUMPY
		While JUMPX = -1 and JUMPY = -1
			FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y,picture_skip, 0.9, JUMPX, JUMPY
		Wend
		MoveTo JUMPX + button_offset_x,JUMPY + button_offset_x
		LeftClick 3
	End If
	'積分
	FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y,picture_score,0.9,pointX,pointY
	If pointX > -1 And pointY > -1 Then 
		'MoveTo 1210,543
		MoveTo pointX+button_offset_x, pointY+button_offset_y
		LeftClick 3
		FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y,picture_skip, 0.9, JUMPX, JUMPY
		While JUMPX = -1 and JUMPY = -1
			FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y, picture_skip, 0.9, JUMPX, JUMPY
		Wend
		'MoveTo 1150,642
		MoveTo JUMPX + button_offset_x,JUMPY + button_offset_x
		LeftClick 3
	End If
	
	'強取
	FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y,picture_rob,0.9,robX,robY
	If robX > -1 And robY > -1 Then 
		'MoveTo 1210,543
		MoveTo robX +button_offset_x,robY+button_offset_y
		LeftClick 3
		FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y, picture_skip, 0.9, JUMPX, JUMPY
		While JUMPX = -1 and JUMPY = -1
			FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y, picture_skip, 0.9, JUMPX, JUMPY
		Wend
		'MoveTo 1150,642
		MoveTo JUMPX + button_offset_x,JUMPY + button_offset_x
		LeftClick 3
		Delay 5000
		'confirm
		FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y, picture_confirm, 0.9, robX, robY
		While robX = -1 and robY = -1
			FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y, picture_confirm, 0.9, robX, robY
		Wend
		MoveTo robX+button_offset_x, robY+button_offset_y
		LeftClick 3
	End If
	'祈福
	FindPic bluestack_leftup_x,bluestack_leftup_y,bluestack_rightdown_x,bluestack_rightdown_y,picture_bless,0.9,bleX,bleY
	If bleX > -1 And bleY > -1 Then 
		'MoveTo 1060,546
		MoveTo bleX + button_offset_x, bleY + button_offset_y
		LeftClick 3
	End If
Wend

