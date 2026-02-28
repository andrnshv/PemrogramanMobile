import 'package:bmi_kalkulator/bmi_kalkulator.dart' as bmi_kalkulator;
import 'dart:io';

void main() {
  print("=== Program Hitung BMI ===");

  // Input Berat Badan
  stdout.write("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  // Input Tinggi Badan
  stdout.write("Masukkan tinggi badan (cm): ");
  double tinggiCm = double.parse(stdin.readLineSync()!);

  // Konversi cm ke meter
  double tinggiM = tinggiCm / 100;

  // Hitung BMI
  double bmi = berat / (tinggiM * tinggiM);

  print("\nHasil Perhitungan:");
  print("Skor BMI Anda: ${bmi.toStringAsFixed(2)}");

  // Kategori BMI
  if (bmi < 18.5) {
    print("Kategori: Kekurangan Berat Badan");
  } else if (bmi < 24.9) {
    print("Kategori: Normal (Ideal)");
  } else if (bmi < 29.9) {
    print("Kategori: Kelebihan Berat Badan");
  } else {
    print("Kategori: Obesitas");
  }
}
