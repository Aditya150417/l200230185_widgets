# 📱 Implementasi Common Widgets - Pemrograman Perangkat Mobile

Repositori ini memuat *source code* aplikasi Flutter yang dikembangkan sebagai bentuk penyelesaian **Tugas Mandiri Pertemuan 7** pada mata kuliah Pemrograman Perangkat Mobile. Fokus utama dari proyek ini adalah implementasi dan eksplorasi fungsionalitas *Common Widgets* secara komprehensif, responsif, dan dinamis.

## 👨‍💻 Informasi Mahasiswa
| Identitas | Keterangan |
| :--- | :--- |
| **Nama** | Aditya |
| **NIM** | L200230185 |
| **Program Studi** | Informatika |

---

## 🎯 Objektif & Kriteria Penyelesaian Tugas

Aplikasi ini dibangun menggunakan arsitektur UI yang seragam dan elegan. Setiap poin tugas yang diwajibkan telah diimplementasikan ke dalam modul halaman terpisah sebagai berikut:

### 1. Modul AppBar (Tugas No. 2)
Mengimplementasikan komponen `AppBar` lengkap yang memenuhi kriteria struktur standar:
- Mengandung `Leading` berupa navigasi *Sidebar* (*Drawer*).
- Memiliki `Title` utama aplikasi.
- Memiliki setidaknya 2 `Actions`, yaitu *Icon Button* untuk Pencarian (*Search Delegate*) dan Notifikasi (*Dialog Alert*).

### 2. Modul BoxDecoration (Tugas No. 3)
Eksplorasi mendalam terhadap gaya kontainer (*Container Styling*):
- Implementasi `borderRadius` untuk sudut seragam maupun spesifik (menggunakan properti `.only()`).
- Implementasi sistem `boxShadow` dengan kombinasi *blur radius*, *spread*, dan modifikasi *offset*.
- Implementasi pewarnaan modern menggunakan transisi warna `LinearGradient`.

### 3. Modul RichText (Tugas No. 4)
Mendemonstrasikan fleksibilitas tipografi pada satu baris tata letak:
- Menggabungkan minimal 3 jenis *style* yang berbeda dalam kalimat tunggal.
- Komposisi *styling* mencakup *Font Weight* (Bold/Normal), *Font Style* (Italic), perbedaan ukuran *font*, efek coretan (*Strikethrough*), efek bergaris bawah (*Underline*), warna *Highlight*, hingga pengaturan *Shadow*.

### 4. Modul Form & Validasi (Tugas No. 5)
Implementasi pengumpulan data (*Data Input*) yang aman dan tervalidasi secara komprehensif:
- Terdiri dari 3 *input field* utama: `Nama Lengkap`, `Email`, dan `Password`.
- Diintegrasikan dengan `AutovalidateMode.onUserInteraction` untuk memberikan status *error feedback* secara langsung (*real-time*).
- Mekanisme validasi mencakup pengecekan spasi (*null/empty*), limitasi minimal 8 karakter, *RegEx* ketat untuk format *Email*, serta keharusan penggunaan huruf kapital dan kombinasi angka pada kerahasiaan *Password*.

### 5. Modul Deteksi Orientasi (Tugas No. 6)
Penerapan arsitektur UI yang responsif dan mampu beradaptasi pada perubahan bentuk layar:
- Mendeteksi keadaan *Portrait* maupun *Landscape* dengan *listener* dari `OrientationBuilder`.
- Mengontrol kerangka `GridView` secara otomatis untuk merender **2 Kolom** ketika mendeteksi *Portrait*, dan meluas menjadi **4 Kolom** ketika diletakkan secara *Landscape*.

### 6. Modul Popup Menu & Interaksi (Tugas No. 7 / Bonus)
Implementasi interaksi menu kontekstual tingkat lanjut:
- Terdiri dari widget `PopupMenuButton` fungsional dengan 4 aksi terpisah: *Profil*, *Pengaturan*, *Bagikan*, dan *Keluar*.
- Penggunaan interaksi bawaan UI seperti pemanggilan native `showModalBottomSheet` untuk sistem *Share*.
- Pemanggilan `showDialog` untuk aksi konfirmasi pencegahan keluar paksa (*Logout*).

---

## 🚀 Panduan Eksekusi Program

Berikut langkah-langkah untuk melakukan kompilasi dan menjalankan aplikasi:

1. **Kloning Repositori:**
   ```bash
   git clone https://github.com/Aditya150417/l200230185_widgets.git
   cd l200230185_widgets
   ```

2. **Sinkronisasi Dependensi:**
   ```bash
   flutter pub get
   ```

3. **Menjalankan Build:**
   Jalankan perintah ini saat *physical device* Android atau *virtual emulator* sudah siap:
   ```bash
   flutter run
   ```

---
> Proyek ini murni menggunakan kerangka kerja [Flutter](https://flutter.dev) dan dipublikasikan untuk keperluan dokumentasi tugas akademik.
