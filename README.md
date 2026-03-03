
### Struktur Clean Architecture
```
lib/
├── main.dart # Entry point aplikasi
│
├── core/ # Utilitas & konfigurasi global
│ ├── routes/ # Routing konfigurasi
│ │ └── app_router.dart
│
├── features/ # Fitur-fitur aplikasi
│ └── cart/ # Fitur: Cart/Keranjang
│ ├── data/ # DATA LAYER
│ │ └── repositories/ # Implementasi repository
│ │ └── cart_repository_impl.dart
│ │
│ ├── domain/ # DOMAIN LAYER
│ │ ├── entities/ # Entity / objek bisnis murni
│ │ │ └── product.dart
│ │ └── repositories/ # Kontrak (abstract) repository
│ │ └── cart_repository.dart
│ │
│ └── presentation/ # PRESENTATION LAYER
│ ├── providers/ # Provider / State Notifier
│ │ └── cart_provider.dart
│ ├── pages/ # Halaman aplikasi
│ │ ├── catalog_page.dart # tampilan catalog
│ │ └── cart_page.dart # tampilan cart
│ └── widgets/ # untuk membuat widget
│ └── add_button_widget.dart # widget tambah
│
└── injection.dart # Dependency Injection setup
```

### Alur Kerja Saat Tombol “TAMBAH” Ditekan

1. Komponen AddButton mengeksekusi method addItem() dari provider.
2. Provider tidak menyimpan data langsung, tetapi memanggil repository.addItem() sebagai lapisan pengelolaan data.
3. Repository memproses penambahan item.
4. Setelah proses selesai, provider menjalankan notifyListeners().
5. Semua widget yang mendengarkan perubahan state menerima notifikasi.
6. UI melakukan rebuild dan jumlah item di Cart bertambah.

### Cara Menjalankan:

#### 1. **Clone**
```bash
git clone https://github.com/AryaPramudya898/week_3_1123150004.git
cd week_3_1123150004
```

#### 2. **Install Semua Dependencies**
```bash
flutter pub get
```

#### 3. **Run Projek**
```bash
flutter run
```

### Preview Aplikasi

<p align="center">
  <img src="" width="300"/>
  <img src="" width="300"/>
</p>