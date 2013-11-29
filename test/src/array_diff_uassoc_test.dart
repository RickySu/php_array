library php_array.array_diff_uassoc_test.test;

import 'package:unittest/unittest.dart';
import 'package:php_array/php_array.dart';

main(){
  test("array_diff_uassoc()", (){
    Map map1 = {'a': 'a1', 'b': 'b1', 'c': 'c1'};
    Map map2 = {'c': 'c2', 'd': 'd2', 'e':'e2'};
    Map map3 = {'c': 'c1'};
    Map expactMap = {'a': 'a1', 'b': 'b1'};
    expect(array_diff_uassoc([map1, map2, map3], (var a, var b){
      if(a == b){
        return 0;
      }
      return 1;
    }), expactMap);   
  }); 
}