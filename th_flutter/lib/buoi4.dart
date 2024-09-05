// void main() {
//   String a = 'abcd';
//   a = a.test('Không phải a');
//   final result = a.toUpperCase();

// }

// void test111() {}

// extension _TestExt on String {
//   void test(String a) {
//     print('test: $this, $a');

//     return 'test: $this, $a';
//   }
// }

// void main(List<String> args) {
//   for (int i = 0; i <= 10; i++) {
//     print('số thứ $i');
//     if (i == 5) {
//       break;
//     }
//   }

//   final arrs = [0, 1, 2, 3, 4, 5];
//   for (var element in arrs) {
//     print('for in item = $element');
//   }
// }

// void main(List<String> args) {
//   int x = 0;
//   while (x < 10) {
//     x++;
//     print("x -> $x");
//   }
// }

// enum DayOfWeeks {
//   Monday(1, "Monday"),
//   Tuesday(2, "Tuesday"),
//   Wednesday(3, "Wednesday"),
//   Thursday(4, "Thursday"),
//   Friday(5, "Friday"),
//   Saturday(6, "Saturday"),
//   Sunday(0, "sunday"),
//   ;

//   const DayOfWeeks(this.value, this.displayName);

//   final int value;
//   final String displayName;
// }

// extension DayOfWeeksExt on DayOfWeeks {
//   String getVnName() {
//     switch (this) {
//       case DayOfWeeks.Monday:
//         return "Thứ 2";
//       case DayOfWeeks.Tuesday:
//         return "Thứ 3";
//       case DayOfWeeks.Wednesday:
//         return "Thứ 4";
//       case DayOfWeeks.Thursday:
//         return "Thứ 5";
//       case DayOfWeeks.Friday:
//         return "Thứ 6";
//       case DayOfWeeks.Saturday:
//         return "Thứ 7";
//       case DayOfWeeks.Sunday:
//         return "Chủ nhật";
//       default:
//         return "Không xác định";
//     }
//   }
// }

// void main(List<String> args) {
//   List<DayOfWeeks> dayOfWeeks = DayOfWeeks.values;
//   dayOfWeeks.forEach((element) {
//     print("day is: ${element.getVnName()} ${element.displayName}");
//     // sẽ in ra: các ngày từ thứ 2 -> chủ nhật
//     // day is: Thứ 2
//     // day is: Thứ 3
//     // day is: Thứ 4
//     // day is: Thứ 5
//     // day is: Thứ 6
//     // day is: Thứ 7
//     // day is: Chủ nhật
//   });
// }

// import 'dart:io';

// void main(List<String> args) {
//   // int b = int.parse("Hello word");
//   int a = 10;
//   try {
//     a = int.parse("Hello word");
//     print("alert parse a = $a");
//   } on FormatException {
//     print("on Format exception");
//   } on SocketException {
//     print("on Socket exception");
//   } catch (e, stask) {
//     print("exception 0 -> ${e.toString()} ${stask}");
//   } finally {
//     print('finnalu');
//   }
// }

// void main(List<String> args) {
//   void checkNumber({int? number}) {
//     if (number == null || number <= 0) {
//       throw Exception('Number must >= 0');
//     }

//     print("number is $number");
//   }

//   try {
//     checkNumber();
//   } catch (e) {
//     print('object $e');
//   }
//   // print(object);

//   void checkNumberwithAssert(int input) {
//     assert(input > 0, "Number must > 10");
//   }

//   checkNumberwithAssert(5);
// }

// void main(List<String> args) {
//   (int, int) swap((int, int) record) {
//     var (a, b) = record;
//     return (b, a);
//   }

//   (int, int) addAvalue((int, int) record, int addValue) {
//     var (a, b) = record;
//     return (a + addValue, b - addValue);
//   }

//   print(swap((10, 20)));
//   print(addAvalue((10, 20), 100));

//   ({int a, int b}) recordAB = (a: 1, b: 2);
//   ({int c, int d}) recordCD = (c: 3, d: 4);

//   print("RecordAB -> ${recordAB.a}");
// }

// typedef functionTest = String Function(String input, int d, int e, double c);

// void test(functionTest a) {
//   String result = a.call("aaaa", 2, 3, 4);
//   print('result -> $result');
// }

// void main() {
//   test((a, d, e, c) {
//     return "$a, $d, $e, $c";
//   });
// }

// void main() {
//   int giaithua(int number) {
//     if (number == 1) {
//       return 1;
//     }
//     return number * giaithua(number - 1);
//   }

//   int result = giaithua(6);
//   print(result);
// }

import 'dart:math';

// số nguyên tố
void main(List<String> args) {
  double d = sqrt(10);

  print(d);
}
