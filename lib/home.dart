import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  const Home

  ({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //inisialisasi variabel dan fungsi set state
  bool _iconFavorite = false;

  _toogleFavorite() {
    setState(() {
      if (_iconFavorite) {
        _iconFavorite = false;
      } else {
        _iconFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: <Color>[Color(0xff39dbf1), Color(0xffbdeef3)],
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
                          image: AssetImage('asset_images/sembako.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 7.0,
                        left: 5.0,
                        right: 5.0,
                      ),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                  AssetImage('asset_images/sembako2.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                  AssetImage('asset_images/sembako3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                  AssetImage('asset_images/sembako4.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                  AssetImage('asset_images/sembako5.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(7),
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
                        top: 20.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Text(
                              "Usaha Sembako Bu Yuli",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Flexible(
                            child: ListView(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    "Tersedia: minyak, gula putih, gula merah, "
                                        "mie instan kemasan, beras, telur, tepung, sagu, bumbu dapur, "
                                        "margarin, susu, minyak tanah, gas elpiji, teh, kopi, "
                                        "pop ice, snack, roti, tali rapia, minuman dingin, kerupuk kulit, "
                                        "sirup, mentega, permen, ikan sarden kaleng, es krim, es batu.",
                                    style: TextStyle(
                                      fontFamily: 'Yantramanav',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ListTile(
                                  title: Text(
                                    "Aturan: Tidak bisa checkout barang apabila tagihan melebihi "
                                        "1.000.000. Tagihan bisa dicicil per hari, per bulan, dan per tahun. "
                                        "Maksimum checkout 10 barang dengan jenis yang sama dalam 1 kali check out. "
                                        "Jika terdapat kerusakan pada barang, "
                                        "barang bisa dikembalikan maksimal 3 hari setelah barang diterima. "
                                        "Hanya akun yang telah terverifikasi yang dapat check out barang dalam aplikasi ini.",
                                    style: TextStyle(
                                      fontFamily: 'Yantramanav',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ListTile(
                                  title: Text(
                                    "Besar bunga sebesar 5% dan diawasi oleh OJK. "
                                        "Terima pesan antar. Pastikan lokasi anda tidak jauh dengan lokasi usaha "
                                        "untuk menghindari kenaikan harga ongkir yang harus anda bayar.",
                                    style: TextStyle(
                                      fontFamily: 'Yantramanav',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 15.0,
                  right: 15.0,
                ),
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  elevation: 30.0,
                  splashColor:
                  _iconFavorite ? Color(0xffdcdcdc) : Colors.red[700],
                  child: Icon(
                    Icons.favorite,
                    color:
                    _iconFavorite ? Color(0xfffd1616) : Color(0xff9c9c9c),
                    size: 25.0,
                  ),
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: _iconFavorite
                          ? "Batal menyukai sembako Bu Yuli"
                          : "Kamu menyukai sembako Bu Yuli",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Color(0xff7c7c79),
                      textColor: Colors.white,
                      fontSize: 14.0,
                    );
                    _toogleFavorite();
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
