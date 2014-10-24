/// get_part(string, section, separator)

// example:
// get_part("Newbie|Soldier|Veteran|General", 2, "|")
// result: "Soldier"

var _string = argument0;
var _section = max(argument1, 1);
var _separator = argument2;

_string = _separator+_string+_separator;

var s1 = find_char(_string, _section, _separator);
var s2 = find_char(_string, _section+1, _separator);

if s1<0
    return "";
if s2<0
    return "";

var res = string_copy(_string, s1+1, s2-s1-1);
return res;