/// string_to_array(string)

// Example:
// a = string_to_array("12,10,15,18,19,20,50,51,40,38,32,16,19,3,17,0,11,1,6,31,2") // ...etc
// Result:
// a[0] -> 12
// a[1] -> 10
// etc...

var len = string_length(argument0);
var data = argument0;
result = 0;

for (var i=1; i<len; i++)
{
    val = get_part(data, i, ",");
    if val = "" break;
    result[i-1] = real(val);
}

return result;