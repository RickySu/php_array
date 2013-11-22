part of php_array;

Map array_combine ( List keys,  List values ){
  Map output = {};
  for(var i=0; i<keys.length; i++){
    output[keys[i]] = values[i];
  }
  return output;
}