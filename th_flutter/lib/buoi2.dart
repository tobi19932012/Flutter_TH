// void main(List<String> args) {
//   /// Có thể sử dụng nháy đơn '' hoặc nháy kép "" để khai báo 1 string
//   String s = 'Hello world ';

//   /// Tách kí tự trong 1 chuỗi
//   List<String> splittedStrs = s.split(" ");
//   print(
//       "splittedStrs -> $splittedStrs"); // sẽ in ra: splittedStrs -> [Hello, world]

//   /// kiểm tra 1 string có chứa 1 string khác không
//   bool hasWorldStr = s.contains("world");
//   print("hasWorldStr -> $hasWorldStr"); // sẽ in ra: hasWorldStr -> true

//   /// chuyển đổi tất cả kí tự về kí tự viết hoa, viết thường
//   String sUpperCase = s.toUpperCase();
//   String sLowerCase = s.toLowerCase();
//   print("sUpperCase -> $sUpperCase"); // sẽ in ra: sUpperCase -> HELLO WORLD
//   print("sLowerCase -> $sLowerCase"); // sẽ in ra: sLowerCase -> hello world

//   /// lấy vị trí đầu tiên của kí tự 'o'
//   int sIndexOf = s.indexOf("o");
//   print("sIndexOf -> $sIndexOf"); // sẽ in ra: sIndexOf -> 4

//   /// kiểm tra xem string bắt đầu với kí tự 'H'
//   bool sStartWith = s.startsWith("H");
//   print("sStartWith -> $sStartWith"); // sẽ in ra: sStartWith -> true

//   /// thay thế các kí tự trong 1 chuỗi
//   String sReplaced = s.replaceAll("world", "everyone");
//   print("sReplaced -> $sReplaced"); // sẽ in ra: sReplaced -> Hello everyone

//   /// loại bỏ khoảng trắng ở đầu/cuối string
//   String sTrimmed = s.trim();
//   print("s -> \"$s\""); // sẽ in ra: s -> "Hello world "
//   print("sTrimmed -> $sTrimmed"); // sẽ in ra: sTrimmed -> Hello world
// }

// // dạng Int
// void main(List<String> args) {
//   int a = 10;
//   int b = -10;

//   print("a : $a"); // Sẽ in ra a: 10
//   print("b : $b"); // sẽ in ra b: -10
// }

// ignore_for_file: avoid_print

// // Dạng double
// void main(List<String> args) {
//   double a = 10;
//   double b = -10.0;

//   int c = 10;
//   int d = -10;
//   int _resultInt = (a + b + c + d).toInt();
//   double _resultDouble = (a + b + c + d);

//   print("_resultInt : $_resultInt"); // Sẽ in ra a: 10
//   print("_resultDouble : $_resultDouble"); // sẽ in ra b: -10
// }

// Dạng double
// void main(List<String> args) {
//   int a = 10;
//   double b = -10.0;

//   String _aStr = a.toString();
//   String _bStr = b.toString();

//   print("_resultInt : $_aStr"); // Sẽ in ra a: 10
//   print("_resultDouble : $_bStr"); // sẽ in ra b: -10.0
// }

// // chuyển từ int sang double
// void main(List<String> args) {
//   int a = 10;
//   double _aDouble = a.toDouble();

//   print("int a toDouble: $_aDouble"); // sẽ in ra: int a toDouble: 10.0
// }

// void main(List<String> args) {
//   bool a = true;
//   bool b = false;

//   if (a) {
//     /// các viết tắt khi so sánh bool == true
//     print("a is $a"); // sẽ in ra: a is true
//   }

//   if (a == true) {
//     /// viết kiểu này rõ nghĩa hơn
//     print("a == true"); // sẽ in ra: a == true
//   }

//   if (!b) {
//     /// cách viết tắt khi so sánh bool == false
//     print("b is $b"); // sẽ in ra: b is false
//   }

//   if (a && !b) {
//     /// so sánh nhiều mệnh đề, viết tắt
//     print("a == true and b == false"); // sẽ in ra: a == true and b == false
//   }

//   if (a || b) {
//     /// so sánh nhiều mệnh đề, viết tắt
//     print("a == true or b == true"); // sẽ in ra: a == true and b == false
//   }
// }

// import 'dart:developer';

// void main(List<String> args) {
//   List strs = ["a", "b", "c"];

//   /// cách viết tắt
//   List<String> strs_1 = <String>["a", "b", "c"];

//   /// cách viết tắt rõ nghĩa, sử dụng [generic]
//   ///
//   print('strs_1 -> ${strs_1[1]}'); // in ra mảng: strs_1 -> a

//   // thêm mới 1 phần tử
//   strs_1.add('d');
//   print('strs_1 -> ${strs_1}');

//   // thêm mới nhiều phần tử
//   strs_1.addAll(['e', 'f', 'g', 'h']);
//   print('strs_1 -> ${strs_1}');

//   // xóa 1 phần từ
//   strs_1.remove('h');
//   print('strs_1 -> ${strs_1}');

//   // Xóa 1 phần tử ở vị trí mình mong muốn
//   int index = strs_1.indexOf('a');
//   strs_1.removeAt(index);
//   print('strs_1 -> ${strs_1}');

//   List newList = strs_1.sublist(1);

//   print('newList -> ${newList}');
//   print('Length -> ${newList.length}');

//   log('Length -> ${newList.length}');
// }

import 'dart:developer';

void main(List<String> args) {
  /// cách viết ngắn gọn
  Map map = {"key": "value", "key1": "value"};
  print("map -> $map");
  // sẽ in ra: map -> {key: value}

  /// cách viết rõ nghĩa
  Map<String, String> map1 = Map<String, String>();
  map1["key"] = "value";
  print("map1 -> $map1");
  // sẽ in ra: map1 -> {key: value}

  map.addAll({'abc': 123});
  print("$map,  ${map.keys}, ${map.values}");
}
