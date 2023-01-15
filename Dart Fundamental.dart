//ini adalah singel line comment

/*
ini adlah double line comment
ya 
*/

import 'dart:io';
/*
  multi
  line
  comment
 */

/// Fungsi [main] akan menampilkan 2 output
/// Output pertama menampilkan teks dan output kedua menampilkan hasil perkalian pada library [belajar_dart]
// void main(List<String> arguments) {
//   // Mencetak Hello Dart! Dart is great. pada konsol
//   print('Hello Dart! Dart is great.');
//   // Testing documentation comment with [].
//   print(6 * 7);
// }

/*
  output:
    Hello Dart! Dart is great.
    6 * 7 = 42
 */

var greetings = 'hai cuy \u2665';

void main() {
  print(greetings);

  // remove comment tag for each function to know the result
  // pertanyaan();
  // konversi();
  // praktekException();
  // onversiSuhu();
  //tesFungsiReturn();
  //  tesScopeVariabel();
}

void pertanyaan() {
  stdout.write("Nama Kamu:");
  String name = stdin.readLineSync()!;
  stdout.write("Umur Kamu :");
  int umur = int.parse(stdin.readLineSync()!);
  print("hai kamu $name ya , apakah benar kamu berumur $umur tahun");
}

void konversi() {
  //string ke int
  var sebelas = int.parse('11');
  // string ke double
  var sebelaskedua = double.parse('11.2');
  // int ke string
  var angkakestring = 11.toString();
  // double ke string
  var doublekestring = 3.14313.toStringAsFixed(2);

  print("$sebelas $sebelaskedua $angkakestring $doublekestring");
}

void praktekException() {
  try {
    int a = 7;
    var b = 0;

    print(a ~/ b);
    // } on Exception {
    //   print('ya gabisa di bagi 0 tolol');
  } catch (e, s) {
    print('exception terjadi karena : $e');
    print('lacak status : $s');
  } finally {
    print('yaseperti itu lah');
  }
}

void konversiSuhu() {
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  var Fahrenheit = num.parse(stdin.readLineSync()!);
  var Celsius = (Fahrenheit - 32) * 5 / 9;
  var CelAsString = Celsius.toStringAsFixed(2);
  print('$Fahrenheit\u00b0Fahrenheit = $CelAsString\u00b0Celsius');
}

void tesFungsiReturn() {
  ReturnString();
  var angkaPertama = 12;
  var angkaKedua = 129;
  print(
      'rata-rata$angkaPertama & $angkaKedua adalah ${average(angkaPertama, angkaKedua)}');
}

double average(num angka1, num angka2) {
  return (angka1 + angka2) / 2;
}

ReturnString() => print('nahlo');

//

var price = 300000;
void tesScopeVariabel() {
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }

  // variabel scope controlflow

  // if (!discountApplied) { // Error
  //   if (price >= 100000) {
  //     discount = 10 / 100 * price;
  //     var discountApplied = true;
  //   }
  // }

  return discount;
}
