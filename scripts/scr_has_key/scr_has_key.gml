function scr_has_key(keyname)
{
    var inv = instance_find(obj_inventoryController, 0);
    if (inv == noone) return false;

    for (var i = 0; i < array_length(inv.inv_items); i++)
    {
        if (inv.inv_items[i] == keyname)
        {
            return true;
        }
    }

    return false;
}
