import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktpm_tugas_2/detail_page.dart';
import 'package:praktpm_tugas_2/identity.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main Page"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final Identity dataIdentity = listIdentity[index];
            return Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(identitasTerima: dataIdentity);
                  }));
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.network(
                        dataIdentity.fotoUrls,
                        width: 150,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        dataIdentity.name,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: listIdentity.length,
        ),
      ),
    );
  }
}
