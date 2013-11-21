library php_array.array_column_test.test;

import 'package:unittest/unittest.dart';
import 'package:php_array/php_array.dart';

main(){
  var testCaseList = [
    {
      'id':  10,
      'c1':  'value11',
      'c2':  'value12',
    },
    {
      'id':  20,
      'c1':  'value21',
      'c2':  'value22',
    },
    {
      'id':  30,
      'c1':  'value31',
      'c2':  'value32',
    },
    {
      'id':  40,
      'c1':  'value41',
      'c2':  'value42',
    }    
  ];  
  test("array_column()", (){
    var expactList=['value11', 'value21', 'value31', 'value41'];    
    expect(array_column(testCaseList, 'c1'), expactList);    
  });

  test("array_column() with index_key", (){
    var expactList={10: 'value11', 20: 'value21', 30: 'value31', 40: 'value41'};    
    expect(array_column(testCaseList, 'c1', 'id'), expactList);    
  });
  
}