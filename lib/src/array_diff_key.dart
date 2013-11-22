part of php_array;

Map array_diff_key ( List <Map> arrays ){
  if(arrays.length < 2){
    throw new FormatException("input must contain 2 elements at last!");
  }
  
  var _array_diff_key = (Map array1, Map array2) {
    Map output = {};
    array1.forEach((var key, var value){
      if(!array2.containsKey(key)){
        output[key] = value;
      }
    });
    return output;
  };
  
  Map output = arrays[0];
  
  for(var i=1; i<arrays.length; i++){
    output = _array_diff_key(output, arrays[i]);
  }
  
  return output;
}
