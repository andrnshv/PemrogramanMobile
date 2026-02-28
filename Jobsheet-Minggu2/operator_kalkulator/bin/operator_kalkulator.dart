import 'package:operator_kalkulator/operator_kalkulator.dart' as operator_kalkulator;
import 'dart:io';

void main() {
  print("=== Program Operator Dart (Input User) ===");

  // Input Angka Pertama
  stdout.write("Masukkan angka pertama (a): ");
  // Mengambil input string dan langsung mengubahnya ke integer
  int a = int.parse(stdin.readLineSync()!);

  // Input Angka Kedua
  stdout.write("Masukkan angka kedua (b): ");
  int b = int.parse(stdin.readLineSync()!);

  print("\n--- 1. Operator Aritmatika ---");
  print("$a + $b = ${a + b}");    // Penjumlahan
  print("$a - $b = ${a - b}");    // Pengurangan
  print("$a * $b = ${a * b}");    // Perkalian
  print("$a / $b = ${a / b}");    // Pembagian (Double)
  print("$a ~/ $b = ${a ~/ b}");  // Pembagian (Integer/Bulat)
  print("$a % $b = ${a % b}");    // Modulo (Sisa bagi)

  print("\n--- 2. Operator Perbandingan ---");
  print("Apakah $a == $b? ${a == b}"); // Sama dengan
  print("Apakah $a != $b? ${a != b}"); // Tidak sama dengan
  print("Apakah $a > $b?  ${a > b}");  // Lebih besar
  print("Apakah $a < $b?  ${a < b}");  // Lebih kecil

  print("\n--- 3. Operator Logika ---");
  // Kita buat kondisi sederhana untuk dicek
  bool cekA = a > 5;
  bool cekB = b < 10;
  print("Kondisi 1 (a > 5): $cekA");
  print("Kondisi 2 (b < 10): $cekB");
  print("Hasil AND (&&): ${cekA && cekB}");
  print("Hasil OR  (||): ${cekA || cekB}");
  print("Hasil NOT (!):  ${!cekA} (Kebalikan Kondisi 1)");

  print("\n--- 4. Operator Assignment ---");
  int c = a; // Mengisi nilai c dengan a
  print("Nilai awal c = $c");
  c += b;    // Sama dengan c = c + b
  print("Setelah c += $b, nilai c menjadi: $c");
}
