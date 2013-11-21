library php_array.array_chunk_test.test;

import 'package:unittest/unittest.dart';
import 'package:php_array/php_array.dart';

main(){
  var testCaseMap = {'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 9, 'k': 10};
  var testCaseList = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var expactList = [[0, 1], [2, 3], [4, 5], [6, 7], [8, 9], [10]];
  test("array_chunk() with List", (){        
    expect(array_chunk(testCaseList, 2), expactList);    
  });

  test("array_chunk() with List preserv_keys", (){
    var expactMap = [{0: 0, 1: 1}, {2: 2, 3: 3}, {4: 4, 5: 5}, {6: 6, 7: 7}, {8: 8, 9: 9}, {10: 10}];
    expect(array_chunk(testCaseList, 2, true), expactMap);    
  });
  
  test("array_chunk() with Map", (){       
    expect(array_chunk(testCaseMap, 2), expactList);    
  });

  test("array_chunk() with Map preserv_keys", (){    
    var expactMap = [{'a': 0, 'b': 1}, {'c': 2, 'd': 3}, {'e': 4, 'f': 5}, {'g': 6, 'h': 7}, {'i': 8, 'j': 9}, {'k': 10}];
    expect(array_chunk(testCaseMap, 2, true), expactMap);    
  });
  
}