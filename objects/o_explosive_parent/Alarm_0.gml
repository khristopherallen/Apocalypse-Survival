/// @description  
var elements = layer_get_all_elements("Monsters");
for (i = 0; i < array_length_1d(elements); i++)
{
    var inst = layer_instance_get_instance(elements[i]);
	o_game.currentBomb = self;
    with (inst) {
		alarm[2] = 1;
	}
}

alarm[1] = 2;
o_player.alarm[2] = 1;
