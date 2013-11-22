library php_array.array_diff_assoc_test.test;

import 'package:unittest/unittest.dart';
import 'package:php_array/php_array.dart';

main(){
  test("array_array_diff_assoc()", (){
    Map map1 = {'a': 'a', 'b': 'b', 'c': 'c'};
    Map map2 = {'c': 'c', 'd': 'd', 'e':'e'};
    Map map3 = {'c': 'c'};
    Map expactMap = {'a': 'a', 'b': 'b'};
    expect(array_diff_assoc([map1, map2, map3]), expactMap);   
  }); 
}