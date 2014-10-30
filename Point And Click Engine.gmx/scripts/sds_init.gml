/*
    SDS:
        SDS (short for smart data structures) are a way to keep track of and gracefully destroy
        GM's inbuilt data structures.
        
        System Terms:
            GC: Garbage Collecter. This is the part of the system that will destroy structures
                that arn't needed anymore. The GC can be turned on or off.
                     
        There are two types of SDS's. Global, and Local.
            Global:
                Structures that generally last the length of the game. The GC picks them up when 
            Local:
                Structures that last as long as an instance lasts, and are automatically collected
                by the SDS GC.
        
    Global functions:
        sds_global_map_create();
        sds_global_list_create();
        sds_global_grid_create(w,h); 
*/

global.sds_debug = true;

//GLOBALS
global.sds_globals[ds_type_map] = ds_list_create();
global.sds_globals[ds_type_grid] = ds_list_create();
global.sds_globals[ds_type_list] = ds_list_create();
global.sds_globals[ds_type_stack] = ds_list_create();
global.sds_globals[ds_type_queue] = ds_list_create();
global.sds_globals[ds_type_priority] = ds_list_create();
global.sds_global_log = ds_list_create();

//LOCALS
global.sds_locals = ds_map_create();
global.sds_locals_reg = ds_list_create();
global.sds_local_log = ds_list_create();

//GARBAGE COLLECTOR
global.sds_gc_enabled = true;
global.sds_gc_global_enabled = true;
global.sds_gc_local_enabled = true;
global.sds_gc_freeAllOnExit = true;
sds_gc_log = ds_list_create();

sds_gc_tick_seconds = 5;
sds_gc_tick_progress = sds_gc_tick_seconds*room_speed;
