import 'package:counter_7/page/addbudget.dart';
import 'package:counter_7/page/databudget.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/mywatchlist.dart';

import '../model/model_mywatchlist.dart';

class MyDataWatchPage extends StatelessWidget {
  const MyDataWatchPage(
      {super.key,
      required this.watched,
      required this.title,
      required this.rating,
      required this.releaseDate,
      required this.review});

  final Watched? watched;
  final String title;
  final int rating;
  final DateTime releaseDate;
  final String review;

  @override
  Widget build(BuildContext context) {
    var tanggal = releaseDate.toString().substring(0, 10);
    var ratingToStr = rating.toString();
    var watchedToStr;
    var watchTo = watched.toString();
    if (watchTo == "Watched.BELUM") {
      watchedToStr = "not watched";
    } else if (watchTo == "Watched.SUDAH") {
      watchedToStr = "watched";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
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
                  MaterialPageRoute(
                      builder: (context) => const MyWatchListPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20.0),
          Container(
              child: Align(
            alignment: Alignment.center,
            child: Text(title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34)),
          )),
          const SizedBox(height: 20.0),
          Row(children: [
            Text(
              'Release Date: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(tanggal),
          ]),
          const SizedBox(height: 20.0),
          Row(children: [
            Text(
              'Rating: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('$rating/5'),
          ]),
          const SizedBox(height: 20.0),
          Row(children: [
            Text(
              'Status: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(watchedToStr),
          ]),
          const SizedBox(height: 20.0),
          Text('Review:', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(review),
          Spacer(),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                  ))),
        ],
      ),
    );
  }
}
