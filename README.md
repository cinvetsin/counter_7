### **Nama:**

Sasha Nabila Fortuna

### **NPM:**

2106632226

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