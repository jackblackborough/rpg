/// @description Insert description here
// You can write your code in this editor
var rightKey = keyboard_check(vk_right);
var leftKey = keyboard_check(vk_left);
var upKey = keyboard_check(vk_up);
var downKey = keyboard_check(vk_down);
var interactKeyPressed = keyboard_check(vk_space);



           if state = movementState
		   {
				movementControl = true;   
				autoSpriteControl = true;
				animate = true;
				
				if place_meeting(x, y, oIce2)&&(xspd != 0 || yspd != 0)
				{	
				   state = iceSlideState;
				}
		   }

           
		  if state = iceSlideState
		   {
				movementControl = false;
				autoSpriteControl = false;
			    animate = false;
					if place_meeting(x, y, oIce2)
				    {	
			          state = movementState;
			        }
		   }
		
		//testing sliding
		
		//if keyboard_check(vk_enter)
		//{
		   //if state = movementState
		   //{
			//state = iceSlideState   
		  // }else{
			   
		///	state = movementState   
		 //  }
	//}
		   
		   //make block move when interact key presssed
								  
			if interactKeyPressed
			{
				var _checkDir = face * 90;
	

				var _checkX = x + lengthdir_x(interactDist, _checkDir);
				var _checkY = y + lengthdir_y(interactDist, _checkDir);
				var _pushBlockInst = instance_place(_checkX, _checkY, oBlock)
	
				if instance_exists(_pushBlockInst)&& _pushBlockInst.sliding == false
				{
					_pushBlockInst.sliding = true;
					_pushBlockInst.faceDir = face;
		
				}
			}














//movement control
		if movementControl == true
		{

		xspd = (rightKey - leftKey)*moveSpeed;
		yspd = (downKey - upKey)*moveSpeed;

		}

		if instance_exists(oPauser)
		{
		xspd = 0;
		yspd = 0;
		}

//set sprite

						 mask_index = sprite[DOWN]
                    if autoSpriteControl = true{
						

					if yspd == 0
					{
					if xspd > 0 {face = RIGHT;}
					if xspd < 0 {face = LEFT;}
					}

					if xspd > 0 && face == LEFT{face = RIGHT;};
					if xspd < 0 && face == RIGHT{face = LEFT;};
					if xspd == 0
					{
					if yspd > 0{face = DOWN;}
					if yspd < 0{face = UP;}
					}
					if yspd > 0 && face == UP{face = DOWN};
					if yspd < 0 && face == DOWN{face = UP};
					sprite_index = sprite[face];

					}

                               
							   // stop diagi=onal ice sliding s
							   if xspd != 0 && yspd != 0
							   {
								  if place_meeting(x , y + yspd , oIce2){xspd  = 0 }
								  if place_meeting(x , y + yspd , oIce2){yspd   = 0 }  
								
								   
							   }
							   
							   
							   
							   
							   
							   
							   

					//collision with wall
							if place_meeting(x + xspd, y, oWall)
							{	
								
							    xspd = 0;	
	
							}

							if place_meeting(x , y + yspd, oWall) 
							{	
								
						        yspd = 0;	
	
						    }
							   

										x += xspd;
										y += yspd;

								//animate
                                       if animate = true
                                       {        
										    image_speed = 1;
										    if xspd ==  0 && yspd == 0
											{
	
											image_index = 0;	
	
											}
									   }else{
										   image_speed = 0;
									  }	
								
								//alternate colliosions that work with slopes
								 //var _arrayX	 = move_and_collide(x , 0, oWall); 
							    ///if array_length(_arrayX) > 0{xspd = 0;};
								
								////var _arrayY	=  move_and_collide(0 , y, oWall); 
								///////if array_length(_arrayY) > 0{yspd = 0;};
								
								
								