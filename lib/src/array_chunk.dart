part of php_array;

array_chunk ( var array,  int size, [bool preserve_keys = false] ){
    
  if(!(array is Map) && !(array is List)){
    throw new FormatException("input is not a map or list!");
  }     
   
  var array_chunk_list = (List arrayList){
    List output=[];
    for(int i=0; i<arrayList.length; i+=size){
      Map item = {};
      for(var j=0; j<size; j++){
        if(i+j == arrayList.length ){
          break;
        }
        item[i+j] = arrayList[i+j];
      }
      if(preserve_keys){
        output.add(item);
      }
      else{
        output.add(item.values.toList());
      }
    }
    return output;
  };
  
  var array_chunk_map = (Map arrayMap){
    List output=[];
    List keys = arrayMap.keys.toList();
    List values = arrayMap.values.toList();
    
    for(int i=0; i<keys.length; i+=size){
      Map item = {};
      for(var j=0; j<size; j++){
        if(i+j == keys.length ){
          break;
        }
        item[keys[i+j]] = values[i+j];
      }
      output.add(item);
    }
    return output;
  };
  
  if(array is Map && !preserve_keys){
    array = array.values.toList();
  }
  if(array is List){
    return array_chunk_list(array);    
  }    
  
  return array_chunk_map(array);
}