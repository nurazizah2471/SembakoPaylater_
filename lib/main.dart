import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mission 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //inisialisasi variabel dan fungsi set state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: <Color>[Colors.lightBlue, Colors.cyanAccent],
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('asset_images/mie_goreng_pict.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(right: 10.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'asset_images/mie_goreng_pict2.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(right: 10.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'asset_images/mie_goreng_pict3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.only(right: 10.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'asset_images/mie_goreng_pict4.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'asset_images/mie_goreng_pict5.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Keterangan Produk",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 3,
                            child: Container(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 5.0,
                                ),
                                child: ListView(
                                  children: <Widget>[
                                    ListTile(
                                      title: Text(
                                        "Indomie adalah merek mi instan yang diproduksi oleh "
                                        "Indofood CBP, anak perusahaan Indofood di Indonesia. "
                                        "Indofood sendiri merupakan produsen mi instan terbesar "
                                        "di dunia, dengan 16 pabrik, 15 miliar paket Indomie "
                                        "diproduksi setiap tahun. Indomie juga diekspor ke lebih "
                                        "dari 60 negara di dunia.",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Sedangkan Mie Sedaap adalah merek mi instan yang "
                                        "diproduksi oleh Wings Food. Produk mi instan ini "
                                        "diluncurkan pada tahun 2003 dan saat ini berada di posisi "
                                        "mi instan terpopuler kedua di Indonesia. Produk ini "
                                        "diklaim sebagai satu-satunya mi instan di pasaran yang "
                                        "memiliki sertifikat ISO 22000",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                      title: Text(
                                        "Bertepatan pada tahun 2019, salah satu mi instan "
                                        "produksi Indonesia yaitu Indomie Barbeque Chicken "
                                        "dinobatkan sebagai mie instan terbaik dan paling enak "
                                        "di dunia",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
