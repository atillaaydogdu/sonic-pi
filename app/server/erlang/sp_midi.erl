-module(sp_midi).
-export([midi_init/0, midi_deinit/0, midi_send/1, midi_ins/0, midi_outs/0, have_my_pid/0,
        set_this_pid/1, set_log_level/1, schedule_callback/3, get_current_time_microseconds/0]).
-on_load(init/0).

init() ->
    ok = erlang:load_nif("libsp_midi", 0).

midi_init() ->
    exit(nif_library_not_loaded).
midi_deinit() ->
    exit(nif_library_not_loaded).
midi_send(_) ->
    exit(nif_library_not_loaded).
midi_ins() ->
    exit(nif_library_not_loaded).
midi_outs() ->
    exit(nif_library_not_loaded).
have_my_pid() ->
    exit(nif_library_not_loaded).
get_current_time_microseconds() ->
    exit(nif_library_not_loaded).
set_log_level(_) ->
    exit(nif_library_not_loaded).
set_this_pid(_) ->
    exit(nif_library_not_loaded).
schedule_callback(_, _, _) ->
    exit(nif_library_not_loaded).
