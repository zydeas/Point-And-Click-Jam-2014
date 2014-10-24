/// find_char(string, no, symbol)

// Example:
// find_char("abcabcabc", 2, "a")
// Result: 4

var sz = string_length(argument0) + 1;
var n=0;

for(var i=1; i<sz; i++)
{
    if string_char_at(argument0, i) = argument2
    {
        n++;
        if n = argument1 return i;
    }
}

return -1;