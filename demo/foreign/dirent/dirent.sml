(* Copyright (C) 1997 The Harlequin Group Limited.  All rights reserved.
 * 
 * This file should be generated by a stub-generator from <dirent.h>
 * The current version has been written by hand.
 *
 * Revision Log
 * ------------
 * $Log: dirent.sml,v $
 * Revision 1.2  1997/07/03 10:11:09  stephenb
 * Automatic checkin:
 * changed attribute _comment to ' *  '
 *
 *)

require "$.basis.__word";


signature DIRENT =
  sig

    type DIR 
    type struct'dirent 

    eqtype off_t
    eqtype c_char
    eqtype c_int
    eqtype c_ushort
    eqtype c_long
    eqtype c_ulong
    eqtype 'a c_ptr

    val DIR'size' : Word.word
    val DIR'addr' : DIR -> DIR c_ptr

    (* timespec field addresses *)

    val DIR'dd_fd'addr : DIR -> c_int c_ptr

    val DIR'dd_loc'addr : DIR -> c_long c_ptr 

    val DIR'dd_size'addr : DIR -> c_long c_ptr

    val DIR'dd_bsize'addr : DIR -> c_long c_ptr 

    val DIR'dd_off'addr : DIR -> c_long c_ptr 

    val DIR'dd_buff'addr : DIR -> c_char c_ptr c_ptr 


    (* DIR field values *)

    val DIR'dd_fd : DIR -> c_int 
    
    val DIR'dd_loc : DIR -> c_long 

    val DIR'dd_size : DIR -> c_long 

    val DIR'dd_bsize : DIR -> c_long 

    val DIR'dd_off : DIR -> c_long

    val DIR'dd_buff : DIR -> c_char c_ptr 


    val struct'dirent'size' : Word.word
    val struct'dirent'addr' : struct'dirent -> struct'dirent c_ptr

    val struct'dirent'd_off'addr : struct'dirent -> off_t c_ptr

    val struct'dirent'd_fileno'addr : struct'dirent -> c_ulong c_ptr

    val struct'dirent'd_reclen'addr : struct'dirent -> c_ushort c_ptr

    val struct'dirent'd_namlen'addr : struct'dirent -> c_ushort c_ptr

    val struct'dirent'd_name'addr : struct'dirent -> c_char c_ptr

    val struct'dirent'd_off : struct'dirent -> c_long

    val struct'dirent'd_fileno : struct'dirent -> c_ulong

    val struct'dirent'd_reclen : struct'dirent -> c_ushort

    val struct'dirent'd_namlen : struct'dirent -> c_ushort

    val struct'dirent'd_name : struct'dirent -> c_char c_ptr

    val opendir : c_char c_ptr -> DIR c_ptr

    val readdir : DIR c_ptr -> struct'dirent c_ptr

    val telldir : DIR c_ptr -> c_long

    val seekdir : DIR c_ptr * c_long -> unit

    val rewinddir : DIR c_ptr -> unit

    val closedir : DIR c_ptr -> unit

  end
