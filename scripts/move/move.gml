function move_x(_hsp,_colisao = oChao,_inst = id){
    with(_inst){
        var _dir_x = sign(_hsp)
            if place_meeting(x+_dir_x,y,_colisao){hsp = 0}
        repeat(abs(_hsp)){
            if place_meeting(x+_dir_x,y,_colisao){return false}
            else{x += _dir_x}
        }
    }
}


function move_y(_vsp,_colisao = oChao,_inst = id){
    with(_inst){
        var _dir_y = sign(_vsp)
		if place_meeting(x,y+_dir_y,_colisao){vsp = 0}
        repeat(abs(_vsp)){
            if place_meeting(x,y+_dir_y,_colisao){return false}
            else{y += _dir_y}
        }
    }
}


 