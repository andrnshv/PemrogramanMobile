import 'package:konversi_unit/konversi_unit.dart' as konversi_unit;
import 'dart:io';

void main() {
  print("=== Aplikasi Konversi Unit Serbaguna ===");

  // Menggunakan Map untuk menyimpan faktor konversi (Basis ke unit lain)
  // Contoh: Panjang berbasis Meter (m)
  Map<String, Map<String, double>> konversiData = {
    'Panjang': {
      'Meter': 1.0,
      'Kilometer': 0.001,
      'Centimeter': 100.0,
      'Milimeter': 1000.0,
      'Inch': 39.3701,
    },
    'Massa': {
      'Gram': 1.0,
      'Kilogram': 0.001,
      'Miligram': 1000.0,
      'Ons': 0.035274,
      'Pound': 0.00220462,
    },
    'Volume': {
      'Liter': 1.0,
      'Mililiter': 1000.0,
      'Meter Kubik': 0.001,
      'Galon': 0.264172,
      'Centiliter': 100.0,
    }
  };

  print("\nPilih Kategori Konversi:");
  print("1. Panjang\n2. Massa\n3. Volume\n4. Suhu");
  stdout.write("Pilihan (1-4): ");
  String pilihan = stdin.readLineSync()!;

  if (pilihan == '4') {
    konversiSuhu(); // Fungsi khusus suhu
  } else {
    String kategori = "";
    if (pilihan == '1') kategori = 'Panjang';
    else if (pilihan == '2') kategori = 'Massa';
    else if (pilihan == '3') kategori = 'Volume';
    else {
      print("Pilihan tidak valid!");
      return;
    }

    prosesKonversi(kategori, konversiData[kategori]!);
  }
}

void prosesKonversi(String namaKategori, Map<String, double> unitMap) {
  print("\n--- Konversi $namaKategori ---");
  var daftarUnit = unitMap.keys.toList();

  for (int i = 0; i < daftarUnit.length; i++) {
    print("${i + 1}. ${daftarUnit[i]}");
  }

  stdout.write("Pilih unit asal (1-5): ");
  int asalIdx = int.parse(stdin.readLineSync()!) - 1;

  stdout.write("Masukkan nilai: ");
  double nilai = double.parse(stdin.readLineSync()!);

  // Validasi Input Negatif (Hindari nilai negatif untuk massa, volume, dll)
  if (nilai < 0) {
    print("Kesalahan: Nilai tidak boleh negatif!");
    return;
  }

  print("\nHasil Konversi:");
  double nilaiDalamBasis = nilai / unitMap[daftarUnit[asalIdx]]!;

  unitMap.forEach((unit, faktor) {
    double hasil = nilaiDalamBasis * faktor;
    // Tampilkan hasil dengan format 2 desimal
    print("${hasil.toStringAsFixed(2)} $unit");
  });
}

void konversiSuhu() {
  print("\n--- Konversi Suhu (Celsius ke Lainnya) ---");
  stdout.write("Masukkan suhu dalam Celsius: ");
  double c = double.parse(stdin.readLineSync()!);

  print("\nHasil Konversi:");
  print("Fahrenheit: ${(c * 9 / 5) + 32} °F");
  print("Kelvin: ${c + 273.15} K");
  print("Reamur: ${c * 4 / 5} °R");
}
