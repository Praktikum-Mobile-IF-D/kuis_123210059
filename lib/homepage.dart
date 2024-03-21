import 'package:flutter/material.dart';
import 'package:kuis_123210059/detailpage.dart';
import 'package:kuis_123210059/data_buku.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: listBuku.length,
          itemBuilder: (BuildContext context, int index) {
            DataBuku dtbuku = listBuku[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailPage(dtbuku: listBuku[index])));
              },
              child: Card(
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(4)),
                        child: Image.network(
                          dtbuku.imageLink,
                          width: 150,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dtbuku.title,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            dtbuku.author,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Pages: ${dtbuku.pages}",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
