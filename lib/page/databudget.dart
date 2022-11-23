import 'package:counter_7/page/addbudget.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/mywatchlist.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  static List<String> judulData = [];
  static List<int> nominalData = [];
  static List<String?> jenisData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
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
                  MaterialPageRoute(
                      builder: (context) => const MyFormBudgetPage()),
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
            ListTile(
              title: const Text('Mywatchlist'),
              onTap: () {
                  // Route menu ke halaman to do
                  Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                  );
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: judulData.length,
        itemBuilder: ((context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  ListTile(  
                    title: Text(judulData[index]),  
                    subtitle: Text(nominalData[index].toString()),
                    trailing: Text(jenisData[index]!),
                  ), 
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

void tambahBudget(String judul, int nominal, String? jenis) {
  _MyDataPageState.judulData.add(judul);
  _MyDataPageState.nominalData.add(nominal);
  _MyDataPageState.jenisData.add(jenis);
}
