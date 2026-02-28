import 'package:konversi_kalkulator/konversi_kalkulator.dart' as konversi_kalkulator;
import 'dart:io';

void main() {
  print("=== Konversi Mata Uang (IDR ke Asing) ===");

  // Data Kurs (Contoh statis)
  double kursUSD = 16802; //per 1 USD
  double kursEUR = 19855; //per 1 EUR
  double kursKRW = 11.67; // per 1 KRW

  stdout.write("Masukkan jumlah uang dalam Rupiah (IDR): ");
  double idr = double.parse(stdin.readLineSync()!);

  print("\nHasil Konversi:");
  print("1. USD: \$${(idr / kursUSD).toStringAsFixed(2)}");
  print("2. EUR: S\$${(idr / kursEUR).toStringAsFixed(2)}");
  print("3. KRW: ¥${(idr / kursKRW).toStringAsFixed(2)}");
}
