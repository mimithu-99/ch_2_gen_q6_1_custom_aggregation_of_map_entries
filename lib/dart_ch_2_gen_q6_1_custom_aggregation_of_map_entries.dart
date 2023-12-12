/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_ch_2_gen_q6_1_custom_aggregation_of_map_entries_base.dart';

/*
Practice Question: Custom Aggregation of Map Entries

Task:

Given a map of string keys to integer values, write a function named 
aggregateMap that performs a custom aggregation operation. The function should:

Filter out entries where the key starts with a specific letter (e.g., 'a').

For the remaining entries, apply an 
aggregation operation: sum the values of the entries 
where the key has an even number of characters, 
and subtract the values where the key has an odd number of characters.

The function should use anonymous functions for the filtering and aggregation steps.



*/

// TODO: Export any libraries intended for clients of this package.

final data = {
  'apple': 5,
  'orange': 10,
  'banana': 7,
  'grape': 3,
  'kiwi': 8,
  'avocado': 6
};

int aggregateMap(Map<String, int> inputMap, {required String excludeLetter}) {
  final filtererd = inputMap.entries
      .where((element) => !element.key.startsWith(excludeLetter));
  final evenSum = filtererd
      .where((element) => element.key.length.isEven)
      .fold(0, (previousValue, element) => previousValue + element.value);
  final oddSum = filtererd
      .where((element) => element.key.length.isOdd)
      .fold(0, (previousValue, element) => previousValue + element.value);
  return evenSum - oddSum;
}
