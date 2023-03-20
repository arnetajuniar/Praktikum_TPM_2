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
          title: Text("Detail Page"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(50),
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Image.network(widget.identitasTerima.fotoUrls,
                          width: 310),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "${widget.identitasTerima.name}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                          "Username:\n ${widget.identitasTerima.username}"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                          "Email:\n ${widget.identitasTerima.email[0]}\n ${widget.identitasTerima.email[1]}"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                          "Company:\n ${widget.identitasTerima.company[0][0]} (${widget.identitasTerima.company[0][1]})\n ${widget.identitasTerima.company[1][0]} (${widget.identitasTerima.company[1][1]})"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
