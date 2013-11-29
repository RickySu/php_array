part of php_array;

Map array_diff_uassoc ( List <Map> arrays, Function callback(var a, var b)){
  if(arrays.length < 2){
    throw new FormatException("input must contain 2 elements at last!");
  }
  
  var _array_diff_assoc = (Map array1, Map array2) {
    Map output = {};
    array1.forEach((var key, var value){
      if(!array2.containsKey(key) || callback(array1[key], array2[key]) != 0){
        output[key] = value;
      }
    });
    return output;
  };
  
  Map output = arrays[0];
  
  for(var i=1; i<arrays.length; i++){
    output = _array_diff_assoc(output, arrays[i]);
  }
  
  return output;
}
