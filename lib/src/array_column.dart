part of php_array;

array_column ( var array,  var column_key, [var index_key] ){
  
  if(!(array is Map) && !(array is List)){
    throw new FormatException("input is not a map or list!");
  }
  
  if(array is Map){
    array = array.values.toList();
  }
  
  var array_column_no_index = (List arrayList) {
    List output = [];
    arrayList.forEach((var element){      
      if(element is Map && element.containsKey(column_key)){
        output.add(element[column_key]);
      }
      if(element is List && column_key is int && column_key < element.length){
        output.add(element[column_key]);
      }      
    });
    return output;
  };
  
  var array_column_with_index = (List arrayList) {
    Map output = {};
    arrayList.forEach((var element){      
      if(element is Map && element.containsKey(column_key)){
        output[element[index_key]] = element[column_key];
      }
      if(element is List && column_key is int && column_key < element.length){
        output[element[index_key]] = element[column_key];
      }      
    });
    return output;
    
  };
  
  if(index_key == null){
    return array_column_no_index(array);
  }
  
  return array_column_with_index(array);  
}