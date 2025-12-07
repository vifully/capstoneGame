var inv = instance_find(obj_inventoryController, 0);

if (inv != noone) {

    if (array_length(inv.inv_items) < inv.max_items) {

        array_push(inv.inv_items, key_id);

    
        instance_destroy();

	}
}
