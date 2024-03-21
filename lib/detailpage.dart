import 'package:flutter/material.dart';
import 'package:kuis_123210059/data_buku.dart';


class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.dtbuku});

  final DataBuku dtbuku;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.dtbuku.author),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  widget.dtbuku.imageLink,
                  width: 150,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Penulis        : ${widget.dtbuku.author}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Bahasa         : ${widget.dtbuku.language}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Negara         : ${widget.dtbuku.country}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Jumlah Halaman : ${widget.dtbuku.pages}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Tahun Terbit   : ${widget.dtbuku.year}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Status         : ${widget.dtbuku.isAvailable == true? "Tersedia" : "Tidak Tersedia"}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      _lendButton(context)
                    ],
                  ),
                )
              ],
            ),
          )
        )
    );
  }

  Widget _lendButton(BuildContext context){
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical:10),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                widget.dtbuku.isAvailable = false;
              });
            },
            child: const Text('Pinjam'),
        ),
    );
  }  
}
