part of php_array;

const CASE_UPPER = 0;
const CASE_LOWER = 1;

array_change_key_case ( var array, [ int keyCase = CASE_LOWER ] ){
    
  if(array is List){
    return new List.from(array);
  }
  
  if(!(array is Map)){
    throw new FormatException("input is not a map or list!");
  }
  
  Map result = {};
  
  array.forEach((String key, value){
    if(keyCase == CASE_LOWER){
      result[key.toLowerCase()] = value;
    }
    else{
      result[key.toUpperCase()] = value;
    }
  });
  
  return result;
}