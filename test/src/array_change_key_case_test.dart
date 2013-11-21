library php_array.array_change_key_case_test.test;

import 'package:unittest/unittest.dart';
import 'package:php_array/php_array.dart';

main(){
  test("array_change_key_case()", (){
    var testCaseMap = {
        "lowercase":  0,
        "UPPERCASE":  1,
        "MixedCase":  2,
        "0": 3
    };

    var testCaseList = [0, 1, 2, 3, 4];
    
    var result = array_change_key_case(testCaseMap);
    var i;
    
    for(i=0; i<testCaseMap.keys.length; i++){
      expect(testCaseMap.keys.toList()[i].toLowerCase(), equals(result.keys.toList()[i]));
    }
    
    result = array_change_key_case(testCaseMap, CASE_UPPER);
    
    for(i=0; i<testCaseMap.keys.length; i++){
      expect(testCaseMap.keys.toList()[i].toUpperCase(), equals(result.keys.toList()[i]));
    }
    
    result = array_change_key_case(testCaseList, CASE_LOWER);
    expect(result, equals(testCaseList));
  });
}