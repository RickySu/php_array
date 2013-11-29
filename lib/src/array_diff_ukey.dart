part of php_array;

Map array_diff_ukey ( List <Map> arrays, Function callback(var a, var b)){
  if(arrays.length < 2){
    throw new FormatException("input must contain 2 elements at last!");
  }
  
  var _array_diff_key = (Map array1, Map array2) {
    Map output = {};
    array1.forEach((var key1, var value1){
      bool keyExists = false;
      array2.forEach((var key2, var value2){
        if(callback(key1, key2) == 0){
          keyExists = true;
        }
      });
      if(!keyExists){
        output[key1] = value1;
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
