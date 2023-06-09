import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:praktpm_tugas_2/identity.dart';

class DetailPage extends StatefulWidget {
  final Identity identitasTerima;

  const DetailPage({Key? key, required this.identitasTerima}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Detail Page"),
        ),
        body: ListView(
          children: [
            Center(
              child: Column(children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(30),
                  width: 320,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Image.network(widget.identitasTerima.fotoUrls,
                            width: 310),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          widget.identitasTerima.name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                            "Username:\n ${widget.identitasTerima.username}"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                            "Email:\n ${widget.identitasTerima.email[0]}\n ${widget.identitasTerima.email[1]}"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                            "Company:\n ${widget.identitasTerima.company[0][0]} (${widget.identitasTerima.company[0][1]})"),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
