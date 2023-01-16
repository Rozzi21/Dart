import 'dart:io';

void main() {
  // tryIf();
  // tryIfElse();
  // tryIfElseIf();
  //tryForLoops();
  // tryForWhile();
  // tryForDoWhile();
  // tryInputUsername();
  // tryBreak();
  // tryContinue();
  trySwitchCase();
}

void tryIf() {
  var isBlack = true;

  print('what color is it');
  if (isBlack) {
    print("oh.It,s Black");
  }
  print("try it");
}

void tryIfElse() {
  var kopinibossOpenHours = 19;
  var kopinibossCloseHours = 23;
  var now = 24;

  if (now > kopinibossOpenHours && now < kopinibossCloseHours) {
    print("hey we are open");
  } else {
    print("sorry, we've closed");
  }
}

void tryIfElseIf() {
  stdout.write('Masukkan nilai anda (1-100) :');
  var nilaicuy = num.parse(stdin.readLineSync()!);

  print('nilai anda : ${calculateScore(nilaicuy)}');
}

String calculateScore(num nilai) {
  if (nilai > 90) {
    return 'A';
  } else if (nilai > 80) {
    return 'B';
  } else if (nilai > 70) {
    return 'C';
  } else if (nilai > 60) {
    return 'D';
  } else {
    return 'E';
  }
}

void tryforLoops() {
  var x = '*';
  for (int i = 1; i <= 10; i++) {
    print(x);
    x = x + '*';
  }
}

var nilai = 5;

void tryForWhile() {
  while (nilai <= 100) {
    print(nilai);
    nilai = nilai + 5;
  }
}

void tryForDoWhile() {
  do {
    print(nilai);
    nilai = nilai + 10;
  } while (nilai <= 100);
}

void tryInputUsername() {
  String username;
  bool notValid = false;

  do {
    stdout.write('Masukkan nama Anda (min. 6 karakter): ');
    username = stdin.readLineSync() ?? "";

    if (username.length < 6) {
      notValid = true;
      print('Username Anda tidak valid');
    } else {
      notValid = false;
      print('mantap coy');
    }
  } while (notValid);
}

void tryBreak() {
  // 20 bilangan prima pertama
  var primeNumbers = [
    2,
    3,
    5,
    7,
    11,
    13,
    17,
    19,
    23,
    29,
    31,
    37,
    41,
    43,
    47,
    53,
    59,
    61,
    67,
    71
  ];
  stdout.write('Masukkan bilangan prima : ');
  var searchNumber = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i + 1}');
      break;
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }
}

void tryContinue() {
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
    }
    print(i);
  }
}

void trySwitchCase() {
  bool validasi = true;
  while (validasi) {
    validasi = false;
    stdout.write("masukaan nilai(A-E) : ");
    var nilai = stdin.readLineSync()!;
    switch (nilai) {
      case 'A':
        print('nilai $nilai tidak buruk juga');
        break;
      case 'B':
        print('$nilai standart cuy');
        break;
      case 'C':
        print("nilai $nilai cukup cuy");
        break;
      case 'D':
        print("nilai $nilai kurang lah remidi sana");
        break;
      case 'E':
        print('Nilai $nilai sangat kurang uyy Ujian lagi tahun depan');
        break;
      default:
        print('masukan nilai yang benar');
        validasi = true;
    }
  }
}
