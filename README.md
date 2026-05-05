# Tugas Mandiri - Pertemuan 7 (Flutter Widgets)

Aplikasi Flutter ini dikembangkan untuk memenuhi tugas mata kuliah **Pemrograman Perangkat Mobile** (Pertemuan 7) mengenai eksplorasi dan implementasi berbagai *Common Widgets* dasar hingga lanjutan di Flutter.

## 👤 Informasi Mahasiswa
- **Nama:** Aditya
- **NIM:** L200230185
- **Program Studi:** Informatika

## 🚀 Fitur dan Implementasi Tugas

Aplikasi dirancang dengan *UI/UX* yang elegan menggunakan tema **Slate 900 (Professional Dark Navy)** secara seragam dan konsisten pada semua halaman. Berikut rincian implementasi tugas:

### 1. AppBar Lengkap (Tugas No. 2)
- Terdapat komponen `Leading` (menu laci/sidebar).
- `Title` aplikasi yang tebal dan jelas.
- Menggunakan minimal 2 `Actions` (tombol *Search* yang interaktif dan tombol Notifikasi).

### 2. BoxDecoration (Tugas No. 3)
- Memanfaatkan berbagai properti dari `BoxDecoration` seperti `color`, `border`, `borderRadius` pada seluruh sudut maupun sudut tertentu saja (`only`).
- Menggabungkan variasi efek bayangan dengan `boxShadow` (berbagai macam *blur radius*, *spread*, dan *offset*).
- Implementasi pewarnaan modern menggunakan `LinearGradient`.

### 3. RichText (Tugas No. 4)
- Menampilkan berbagai gaya teks dengan `RichText` dan `TextSpan`.
- Dalam **satu baris** kalimat, terdapat lebih dari 3 gaya berbeda, seperti modifikasi ukuran *font* (besar/kecil), pewarnaan beda, *bold*, *italic*, teks yang dicoret (*strikethrough*), teks dengan *underline*, warna *highlight*, hingga teks berbayang (*shadow*).

### 4. Form & Validasi (Tugas No. 5)
- Terdapat halaman formulir pendaftaran yang responsif.
- Menggunakan 3 buah `TextFormField` untuk *input* (Nama Lengkap, Email, dan Password).
- Dilengkapi dengan sistem **Validasi Real-time** (`onUserInteraction`), yang akan menampilkan pesan *error* otomatis (seperti format email tidak sah, panjang minimal karakter, hingga kombinasi huruf dan angka untuk proteksi *password*).

### 5. Deteksi Orientasi Layar (Tugas No. 6)
- Diimplementasikan menggunakan `OrientationBuilder` untuk membuat UI yang sangat adaptif.
- Berisi *Grid* ikon-ikon yang mana tampilannya akan berubah secara otomatis: **2 Kolom** saat layar berbentuk *Portrait* (berdiri), dan menjadi **4 Kolom** secara proporsional ketika layar dirotasi menjadi *Landscape* (mendatar).

### 6. Popup Menu (Tugas No. 7 / Bonus)
- Terletak pada halaman terpisah untuk demonstrasi *Pop-up*.
- Menggunakan `PopupMenuButton` yang menampilkan 4 buah menu interaktif (Profil, Pengaturan, Bagikan, dan Keluar).
- Tombol terhubung pada fungsi yang nyata, seperti navigasi ke halaman terpisah, memunculkan *Bottom Sheet* untuk berbagi tautan, serta dialog konfirmasi untuk keluar dari halaman.

---

## 🛠️ Prasyarat (Environment)
- [Flutter SDK](https://flutter.dev/docs/get-started/install) ter-install dengan *channel stable*.
- Android Emulator atau *physical device* yang terhubung.

## ▶️ Panduan Menjalankan

Ikuti panduan berikut untuk menjalankan program secara mandiri di komputer Anda:

```bash
# 1. Clone repository
git clone https://github.com/Aditya150417/l200230185_widgets.git

# 2. Masuk ke direktori
cd l200230185_widgets

# 3. Instal semua paket/dependensi
flutter pub get

# 4. Jalankan (Run) ke perangkat
flutter run
```

*Semua kode pada proyek ini telah dibersihkan dari komentar sisa pengembangan demi menjaga standar kerapian kode.*
