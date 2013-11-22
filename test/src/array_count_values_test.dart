library php_array.array_count_values_test.test;

import 'package:unittest/unittest.dart';
import 'package:php_array/php_array.dart';

main(){
  test("array_count_values()", (){
    List testCaseList = [1, "hello", 1, "world", "hello"];
    Map expactMap = {1: 2, "hello": 2, "world": 1};
    expect(array_count_values(testCaseList), expactMap);   
  });
  
}