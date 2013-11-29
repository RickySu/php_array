library php_array.test;

import "src/array_change_key_case_test.dart" as array_change_key_case_test;
import "src/array_chunk_test.dart" as array_chunk_test;
import "src/array_column_test.dart" as array_column_test;
import "src/array_combine_test.dart" as array_combine_test;
import "src/array_count_values_test.dart" as array_count_values_test;
import "src/array_diff_assoc_test.dart" as array_diff_assoc_test; 
import "src/array_diff_key_test.dart" as array_diff_key_test;
import "src/array_diff_uassoc_test.dart" as array_diff_uassoc_test; 
import "src/array_diff_ukey_test.dart" as array_diff_ukey_test;

main(){
  array_change_key_case_test.main();
  array_chunk_test.main();
  array_column_test.main();
  array_combine_test.main();
  array_count_values_test.main();
  array_diff_assoc_test.main();
  array_diff_key_test.main();
  array_diff_uassoc_test.main();
  array_diff_ukey_test.main();  
}

