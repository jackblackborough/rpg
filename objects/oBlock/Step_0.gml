//get the starting point so it can be reset

if sliding = false
   {
		startPointX = x;
		startPointY = y;  
	
		xspd = 0;
		yspd = 0;
   }
   
    //set on snow to true and false
   if place_meeting(x ,y, oPushBlockarena)
   {
	  pushBlockArea = true;   
   }else{
	  pushBlockArea = false;   
   }
   
   //set on ice to true and false
   if place_meeting(x ,y, oIce)
   {
	  onIce = true;   
   }else{
	  onIce = false;   
   }
   
  if sliding = true
  {
	  //get directinon and target x and y
			var _realDir = faceDir * 90;
			var _targetXDist = lengthdir_x(gridSpace, _realDir);
			var _targetYDist = lengthdir_y(gridSpace, _realDir);
			targetX = startPointX + _targetXDist;
			targetY = startPointY + _targetYDist;
			
			if onIce = true
			{
				
				targetX = startPointX;
				targetY = startPointY;
			    
				
				//make it slide when on ice
				
					while place_meeting(targetX + _targetXDist ,targetY  + _targetYDist, oIce)
					{
					   targetX += _targetXDist;
					   targetY += _targetYDist;
					}
			
			
			
			}
			
			
			
			//get the target distance and a nother speed
			var _targetDist = point_distance(x, y, targetX, targetY);
			var _finalSpeed = min(moveSpd, _targetDist);
			xspd  = lengthdir_x(_finalSpeed, _realDir)
			yspd  = lengthdir_y(_finalSpeed, _realDir)
			
			
			    //restrict it from movign out of the area 
				if pushBlockArea = true && !place_meeting(targetX, targetY, oPushBlockarena )
				{
				xspd = 0;
				yspd = 0;
				}
			
			        //staop movign
					if place_meeting(targetX , targetY , oWall)
					{
					   xspd = 0;
					   yspd = 0;
					}
			
		
  }
   
   x += xspd;
   y += yspd;
   
   if xspd == 0 && yspd == 0{sliding = false}
   
   depth = -bbox_bottom;