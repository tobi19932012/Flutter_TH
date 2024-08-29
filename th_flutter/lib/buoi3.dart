// void main(List<String> args) {
//   // Định nghĩ inline funtion hàm trong hàm
//   void test(String test, double d) {
//     print('Đây là màn test, param test: $test & $d');
//   }

//   test("Màn hình test truyền tham số", 10);

//   function();
//   function.call();
// }

// // tham số đầu tiên string thì truyền vào  string
// String function() {
//   return '12321';
// }

// void diToiCaiCua(
//   Function reTrai,
//   Function(String a, int b) rePhai,
// ) {
//   reTrai();
//   reTrai.call();

//   rePhai('99999', 123123123);
//   rePhai.call('10000', 11111);

//   String a = 'aaaaaaa';
//   a = a.toUpperCase();
//   print('a -> $a');
// }

// void main(List<String> args) {
//   diToiCaiCua(() {
//     print('re trai thanh cong');
//   }, (a, b) {
//     print('Re phải thành công a-> $a, $b \n xuống dòng \n thêm 1 dòng');
//   });
// }

// void functionWithOptionalParam({String a = "a", String b = "b"}) {
//   print("params a=$a, b=$b");
// }
// void functionWithPositionalParam(String a, [String b = "", c = "", d = ""]) {
//   print("params a=$a, b=$b, b=$c, d=$d");
// }
// void main(List<String> args) {
/// function trong dart hỗ trợ optional params,
/// - nếu không truyền params vào function: params sẽ nhận giá trị mặc định
/// - nếu truyền params vào function: params sẽ nhận giá trị được truyền vào từ function
// functionWithOptionalParam();
// // sẽ in ra: params a=a, b=b

// functionWithOptionalParam(
//     b: "không phải giá trị b", a: "không phải giá trị a");
// sẽ in ra: params a=không phải giá trị a, b=không phải giá trị b

// functionWithPositionalParam("a", "b", "c", 'd');
// sẽ in ra: params a=a, b=b, b=c, d=
/// vì không truyền vào d, nên d=""
// }

// void main(List<String> args) {
//   int value = 0;
//   void test(int value) {
//     value = 10;
//     print("trong funtion test value -> $value");
//   }

//   test(1);

//   print("giá trị truyền ngoài $value");
// }

// void main(List<String> args) {
//   /// Khai báo biến dynamic
//   /// Giống var, nhưng có thể thay đổi variable type
//   dynamic dynamicA = 10;
//   print(
//       "dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> 10, loại dữ liệu (variableType) -> int

//   dynamicA = 10.0;
//   print(
//       "dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> 10.0, loại dữ liệu (variableType) -> double

//   dynamicA = "A";
//   print(
//       "dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> A, loại dữ liệu (variableType) -> String

//   dynamicA = true;
//   print(
//       "dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> true, loại dữ liệu (variableType) -> bool

//   dynamicA = [1, 2, 3];
//   print(
//       "dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> [1, 2, 3], loại dữ liệu (variableType) -> List<int>

//   dynamicA = {"key": "value"};
//   print(
//       "dynamicA -> $dynamicA, loại dữ liệu (variableType) -> ${dynamicA.runtimeType}");
//   // sẽ in ra: dynamicA -> {key: value}, loại dữ liệu (variableType) -> _InternalLinkedHashMap<String, String>

//   /// error khi chạy, vì dynamicA hiện tại là Map, không có phương thức toInt()
//   var a = dynamicA.toInt();
//   print("a -> $a");
//   // sẽ in ra: Class '_InternalLinkedHashMap<String, String>' has no instance method 'toInt'

//   /*
//    - dynamic đúng với cái tên của nó, có thể sử dụng linh hoạt trong rất nhiều trường hợp
//    - Nhưng đây vừa là ưu điểm, vừa là nhược điểm:
//       - Trong ví dụ trên, nếu không check [runtimeType] thì khó mà biết được variable type của dynamic,
//       điều này dễ dẫn tới việc sử dụng sai phương thức
//   */
// }

// void test({String? param}) {
//   print(param);
// }

// void test1({required String param}) {
//   print(param);
// }

// void test2({String param = 'default'}) {
//   print(param);
// }

// void main(List<String> args) {
//   // String s = null;
//   String? snull;

//   print("String có null -> $snull");

//   test();
//   test1(param: '.....');
//   test2();
// }

// void main(List<String> args) {
//   String? sCanBeNull = null;
//   List<String> splitteds_3 = sCanBeNull?.split("") ?? [];

//   /// ở đây, sẽ thực thi như sau:
//   /// Nếu `sCanBeNull` != null sẽ gọi hàm split("") và trả về giá trị
//   /// Nếu `sCanBeNull` == null sẽ trả về giá trị []

//   /// 1 vài ví dụ về `Null-aware`
//   sCanBeNull ??= "Value"; // nếu sCanBeNull = null, sCanBeNull = "Value"
//   sCanBeNull ??=
//       "Test"; // sCanBeNull sẽ không được cập nhật, vì giá trị hiện tại = "Value"
//   print("sCanBeNull -> $sCanBeNull");
// }

// Ép kiểu
// void main(List<String> args) {
//   int a = 10;
//   double b = a as double; // ép kiểu int -> double mà không dùng toDouble
//   print("b -> $b");
//   bool isInt = a is int;
//   print("a isInt -> $isInt"); // sẽ in ra: true
// }


