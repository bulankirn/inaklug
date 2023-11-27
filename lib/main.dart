import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[

            // SLIVER APP BAR (LOGO INAKLUG, TULISAN INAKLUG, ICON BURGER, 2 WARNA AGAK TRANSPARANT)
            SliverAppBar(
              pinned: true,
              expandedHeight: 80,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.withOpacity(0.9),
                      Colors.purple.withOpacity(0.9),
                    ],
                  ),
                ),
              ),
              title: Row(
                children: <Widget>[
                  Image.asset(
                    'images/Inaklug.png',
                    fit: BoxFit.contain,
                    height: 50,
                  ),
                  const Text('inaklug'),
                ],
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Builder(
                    builder: (context){
                      return IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: (){
                          Scaffold.of(context).openEndDrawer();
                        },
                      );
                    },
                  ),
                ),
              ],
              backgroundColor: Colors.transparent,
            ),

            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      child: ClipRRect(
                        child: Image.asset("images/dresden2.jpg"),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 15,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "TENTANG KAMI",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            // SLIVER LIST PROFILE
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 100, left: 15),
                  child:
                  Text(
                    "PROFIL",
                    style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
            ),

            // sliver list keterangan profile
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 15, bottom: 100),
                  child:
                  Text(
                    "Didirikan pada tahun 2018, ini membuktikan bahwa INAKLUG merupakan konsultan pendidikan internasional yang berpengalaman, terbesar, terpercaya dan juga memiliki jam terbang tinggi untuk melayani para anak-anak muda Indoensia untuk menuntut ilmu di berbagai negara maju dunia",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ]),
            ),

            // SLIVER LIST foto 1
            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: Container(
                        child: Image.asset("images/point.jpg"),
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            // SLIVERLIST VISI
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 35, left: 15),
                  child:
                  Text(
                    "VISI",
                    style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
            ),

            // sliver list keterangan visi
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 15, bottom: 30),
                  child:
                  Text(
                    "Membangun Sumber Daya Indonesia yang mempunyai daya saing tinggi, tangguh secara internasional untuk menghadapi persaingan di era globalisasi serta membangun karakter pemimpin indonesia masa depan yang tangguh, mandiri dan profesional",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ]),
            ),

            // SLIVER LIST FOTO
            SliverList(
              delegate: SliverChildListDelegate([
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                      child: Container(
                        child: Image.asset("images/glassman.jpg"),
                      ),
                    ),
                  ],
                ),
              ]),
            ),

            // SLIVER LIST MISI
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 35, left: 15),
                  child:
                  Text(
                    "MISI",
                    style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
            ),

            // SLIVERLIST KETERAGAN MISI
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 15, bottom: 30),
                  child:
                  Text(
                    "Membangun Sumber Daya Indonesia yang mempunyai daya saing tinggi, tangguh secara internasional untuk menghadapi persaingan di era globalisasi serta membangun karakter pemimpin indonesia masa depan yang tangguh, mandiri dan profesional",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ]),
            ),

            // SLIVER LIST LAYANAN KAMI
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(65.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45.0),
                          side: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                    child: Text(
                      "Layanan Kami",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ]),
            ),

            // SLIVERLIST HUBUNGI KAMI DAN ISINYA
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'Hubungi Kami',
                          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Kantor Pusat',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'MULA BY GALERIA JAKARTA, CILANDAK TOWN SQUARE, LT. BASEMENT.',
                          style: TextStyle(fontSize: 16.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'Phone : 08528674052',
                          style: TextStyle(fontSize: 16.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),

            // SLIVERLIST LOKASI KAMI
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  width: 200.0, // Adjust the width as needed
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.blue],
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Add your logic for LOKASI KAMI button
                    },
                    child: Text(
                      'LOKASI KAMI',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ]),
            ),


            // SLIVERLIST KIRIM PESAN
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  width: 200.0, // Adjust the width as needed
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue],
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Add your logic for LOKASI KAMI button
                    },
                    child: Text(
                      'KIRIM PESAN',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ]),
            ),

            // SLIVERLIST FOOTER
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.blue, Colors.purple],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Copyright 2023 - Inaklug Indonesia Hak Cipta dilindungi Undang-undang",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ]),
            ),

          ],
        ),

        // BURGER
        endDrawer: Center(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height* 0.50),
            child: Drawer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Builder(
                    builder: (BuildContext builderContext) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "images/Inaklug.png",
                          height: 70,
                          fit: BoxFit.contain,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 35,
                          ),
                          onPressed: () {
                            // Close the drawer when the close button is pressed
                            Navigator.of(builderContext).pop();
                          },
                        ),
                      ],
                    ),
                  ),

                  ListTile(
                    title: Text('HOME',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('TENTANG KAMI',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('LAYANAN KAMI',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('ARTIKEL',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                  ListTile(
                    title: Text('HUBUNGI KAMI',style: TextStyle(fontSize: 20)),
                    onTap: () {},
                    contentPadding: EdgeInsets.only(left:140),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}