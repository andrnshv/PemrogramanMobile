void main() {
  //Identitas & personalisasi NIM
  String nama = "Andrian Sheva Azhar Faizal";
  String nim = "244107060062";
  double nilaiUnikNIM = 62.0; // Diambil dari 062

  //List harga & menambahkan nilai unik NIM ke list
  List<double> hargaBarang = [10000, 20000, 30000, 40000, 50000];
  hargaBarang.add(nilaiUnikNIM);

  //Hitung total awal menggunakan fungsi
  double totalAwal = hitungTotal(hargaBarang);

  //Diskon & Null Safety
  double diskon = 0;
  String? pesanDiskon;

  if (totalAwal > 200000) {
    diskon = 0.1;
    pesanDiskon = "Diskon 10%";
  } else if (totalAwal >= 100000) {
    diskon = 0.05;
    pesanDiskon = "Diskon 5%";
  } else {
    pesanDiskon = "Tidak ada diskon";
  }

  // Output
  print("Nama: $nama | NIM: $nim");
  print("Total Belanja: Rp $totalAwal");
  print("Keterangan: ${pesanDiskon!}"); // Operator ! Null Safety
  double nilaiDiskon = totalAwal * diskon;
  print("Potongan: Rp $nilaiDiskon");
  print("Total Akhir: Rp ${totalAwal - nilaiDiskon}");
}

// Loop for-in
double hitungTotal(List<double> daftar) {
  double total = 0;
  for (double harga in daftar) {
    total += harga;
  }
  return total;
}