/// @description Insert description here
// You can write your code in this editor


//mp_linear_step(obj_Player.x, obj_Player.y, 0.5, 1);
//mp_linear_step_object(obj_Player.x, obj_Player.y, 0.5, obj_Wall_parent);

//path_delete()
path = path_add();
mp_linear_path(path, oPlayer.x, oPlayer.y, 0.5, 1);
mp_linear_path_object(path, oPlayer.x, oPlayer.y, 0.5, oWall2);
path_start(path, 0.5, path_action_stop, true);

//if point_distance(x, y, oCrumb.x, oCrumb.y) > 5
	{
		//move_towards_point(oCrumb.x, oCrumb.y, 5);	
	}
//else speed = 0;
