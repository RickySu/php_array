library php_array.array_combine_test.test;

import 'package:unittest/unittest.dart';
import 'package:php_array/php_array.dart';

main(){
  test("array_combine()", (){
    Map expactMap={'key1': 'value1', 'key2': 'value2', 'key3': 'value3', 'key4': 'value4'};    
    expect(array_combine(expactMap.keys.toList(), expactMap.values.toList()), expactMap);   
  });
  
}