### **Nama:**

Sasha Nabila Fortuna

### **NPM:**

2106632226

## **Tugas 7**

**1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.**

>Stateless widget adalah widget yang tidak berubah karena tindakan atau perilaku internal. Stateless widget berubah oleh external events pada parent widgets di widget tree.
>
>Stateful widget adalah widget yang dinamis. Widget dapat berubah tampilan sesuai response dari events yang dipicu baik interaksi user maupun adanya variabel atau nilai baru yang didapat.

**2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**

>Berikut widget yang saya gunakan di proyek kali ini adalah
>
>1. MaterialApp() : Widget untuk melingkupi widget-widget yang biasanya dibutuhkan aplikasi untuk mengimplementasikan Material Design.
>2. MyHomePage() : Widget yang berfungsi sebagai halamat utama aplikasi.
>3. ThemeData() : Widget untuk mengatur konfigurasi tema aplikasi.
>4. AppBar() : Widget yang terdiri atas toolbar dan beberapa widget, seperti TabBar dan FlexibleSpaceBar
>5. Scaffold : Widget ini mengimplementasikan struktur visual layout dari Material Design dasar. Widget ini menyediakan APIs untuk menampilakn drawers, snack bars, dan bottom sheets.
>6. Text: Widget untuk menampilkan teks.
>7. Center: Widget yang berfungsi untuk meletakkan child di tengah.
>8. Column: Widget yang berfungsi untuk menampilkan widget-widget tersusun secara vertikal
>9. Row: Widget yang berfungsi untuk menampilkan widget-widget tersusun secara horizontal
>10. Padding: Widget yang berfungsi untuk memberikan padding pada widget yang dimaksud.
>11. Spacer: Widget untuk membuat space yang fleksibel untuk disisipkan ke dalam Flexible widget.
>12. FloatingActionButton: Widget button berbentuk lingkaran yang mengambang
>13. Icon: Widget berupa ikon dari Material Design.

**3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**

>Fungsi dari `setState()` adalah untuk memberikan notifikasi ke framework interal state dari object tersebut telah berubah. Berdasarkan implementasi yang ada pada tugas ini, fungsi _incrementCounter() dan _decrementCounter() memanggil setState() dan mengubah nilai counter menjadi lebih besar maupun lebih kecil.

**4. Jelaskan perbedaan antara `const` dengan `final`.**

>`const` membuat variabel konstan dari compile-time sehingga variabel bersifat frozen dan immutable. Hal ini berarti nilai dari variabel tersebut harus sudah diberikan value secara langsung.
>
>`final` diinisialisasi pada saat pertama kali digunakan dan hanya disetel sekali. Denga begitu, nilai final akan diketahui saat run-time. Penggunaan keyword ini membuat variabel tidak dapat diubah dan tidak operasi apapun pada variabel ini yang dapat mengubah nilainya.

**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**

>1. Pada checklist pertama, jalankan perintah berikut:
>```
>flutter create counter_7
>```
>2. Pada checklist kedua, menggunakan Material Design bawaan dari app setelah dibuat flutter app-nya. Pada tampilan, terdapat beberapa widget yang sudah dijelaskan pada nomor 2. Terdapat penambahan button, yaitu FloatingActionButton untuk melakukan decrement counter.
>3. Pada checklist ketiga, berikut implementasinya:
>
>**Fungsi menaikkan dan menurunkan counter**
>```
>void _incrementCounter() {
>    setState(() {
>      _counter++;
>    });
>}
>
>void _decrementCounter() {
>    setState(() {
>      _counter--;
>    });
>}
>```
>**Pada pengaturan dalam menampilkan ganjil dan genap**
>```
>children: <Widget>[
>    if (_counter % 2 == 0) ...[
>        const Text(
>        'GENAP',
>        style: TextStyle(color: Colors.blue),
>        ),
>    ] else ...[
>        const Text(
>        'GANJIL',
>        style: TextStyle(color: Colors.blue),
>        ),
>    ],
>    Text(
>        '$_counter',
>        style: Theme.of(context).textTheme.headline4,
>    ),
>],
>```
>**Pada pengaturan button:**
>```
>floatingActionButton: Padding(
>    padding: const EdgeInsets.only(left: 30),
>    child: Row(
>        children: [
>        if (_counter > 0) ...[
>            FloatingActionButton(
>            onPressed: _decrementCounter,
>            backgroundColor: Colors.red,
>            child: const Icon(Icons.remove),
>            ),
>        ],
>        const Spacer(),
>        FloatingActionButton(
>            onPressed: _incrementCounter,
>            backgroundColor: Colors.blue,
>            child: const Icon(Icons.add),
>        ),
>        ],
>    ),
>),
>```
**Bagian Bonus**

Pada saat nilai _counter sama dengan nol, maka tombol decrement akan disembunyikan sehingga tidak bisa melakukan decrement saat nilai _counter = 0.

## **Tugas 8**

**1. Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.**

>`Naviagtion.push` method berfungsi untuk menambahkan layar baru ke puncak navigation stack.
>
>`Navigation.pushReplacement` method berfungsi untuk mengganti layar yang semula ada di puncak naviagtion stack, digantikan dengan layar yang baru.

**2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**
>
>1. MaterialApp() : Widget untuk melingkupi widget-widget yang biasanya dibutuhkan aplikasi untuk mengimplementasikan Material Design.
>2. MyHomePage() : Widget yang berfungsi sebagai halamat utama aplikasi.
>3. ThemeData() : Widget untuk mengatur konfigurasi tema aplikasi.
>4. AppBar() : Widget yang terdiri atas toolbar dan beberapa widget, seperti TabBar dan FlexibleSpaceBar.
>5. Scaffold : Widget ini mengimplementasikan struktur visual layout dari Material Design dasar. Widget ini menyediakan APIs untuk menampilakn drawers, snack bars, dan bottom sheets.
>6. Text : Widget untuk menampilkan teks.
>7. Column : Widget yang berfungsi untuk menampilkan widget-widget tersusun secara vertikal.
>8. Row: Widget yang berfungsi untuk menampilkan widget-widget tersusun secara horizontal.
>9. Padding : Widget yang berfungsi untuk memberikan padding pada widget yang dimaksud.
>10. Spacer : Widget untuk membuat space yang fleksibel untuk disisipkan ke dalam Flexible widget.
>11. Icon : Widget berupa ikon dari Material Design.
>12. Drawer : Widget yang menyediakan akses ke beberapa layar tujuan dan fungsionalitas yang ada di dalam aplikasi.
>13. ListTile : Widget yang memiliki tiga bagian, yaitu leading, center, dan trailing. Biasanya, ListTile digunakan untuk menampilkan informasi terkait.
>14. Form : Widget yang digunakan untuk membuat suatu formulir dan bisa menggunakan widget-widget dari form.
>15. SingleChildScrollView : Widget yang membuat sebuah box yang mana merupakan single widget, dapat di-*scroll*.
>16. TextFormField : Widget yang menampilkan field form untuk input Text.
>17. DropdownButton : Widget yang mempersilakan pengguna untuk menyeleksi sebuah item dari sebuah list item.
>18. TextButton : Button dengan text.
>19. ListView : list dari widget-widget yang dapat di-*scroll* secara linier.
>20. DropdownMenuItem : Membuat item untuk menu dropdown
>21. Card : panel dengan sudut segi empat yang tumpul dan memiliki bayangan elevasi

**3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: `onPressed`).**

>1. onPressed
>2. onTap
>3. onChanged
>4. onSaved
>5. onPointerHover
>6. onPointerUp

**4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.**

>Pada saat Navigation.push, layar baru akan masuk ke dalam navigation stack dan layar tersebut akan berada di puncak stack. Pada Naviagtion.pushReplacement, proses pergantian halaman seolah-olah melakukan pop pada layar yang berada di puncak stack, lalu melakukan push layar baru ke dalam stack. Proses Navigation pop terjadi ketika kita ingin mengeluarkan layar dari dalam stack.

**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**

>1. Pada checklist pertama dan kedua, membuat drawer serta navigasi untuk setiap layar, sebagai berikut:
```
drawer: Drawer(
    child: Column(
        children: [
        // Menambahkan clickable menu
        ListTile(
            title: const Text('counter_7'),
            onTap: () {
            // Route menu ke halaman utama
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
            },
        ),
        ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
            // Route menu ke halaman form
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyFormBudgetPage()),
            );
            },
        ),
        ListTile(
            title: const Text('Data Budget'),
            onTap: () {
            // Route menu ke halaman data budget
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyDataPage()),
            );
            },
        ),
        ],
    ),
),
```
>2. Pada checklist ketiga, buat input judul budget dengan widget TextFormField yang memiliki tipe data String, input nominal dengan widget TextFormField yang memiliki tipe data integer, input jenis budget dengan widget dropdown yang memiliki tipe data String.
>3. Pada checklist keempat, menampilkan data yang sudah kita isi dari Form Budget dan menggunakan widget ListView untuk pengurutan card hasil tiap input yang tersimpan dan ListTile untuk pengaturan text pada Card.