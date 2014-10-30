///cmds(key,value)
//Turns two strings or real values into a command string, seperated by a ':', and returns it.

return string_replace_all(string(argument0),":","")+":"+string_replace_all(string(argument1),":","")
