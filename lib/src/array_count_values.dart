part of php_array;

array_count_values ( List array ){
  Map output = {};
  array.forEach((var element){
    if(!output.containsKey(element)){
      output[element] = 1;
      return;
    }
    output[element]++;
  });
  return output;
}