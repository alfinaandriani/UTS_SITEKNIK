import 'package:flutter/material.dart';
import 'prodi.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailProdi extends StatelessWidget {
  final Prodi prodi;

  const DetailProdi({Key? key, required this.prodi}) : super(key: key);

  void _launchWebsite(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0,
        title: Row(
          children: [
            Image.asset(
              prodi.imageUrl,
              height: 40,
              width: 40,
            ),
            SizedBox(width: 8),
            Text(
              prodi.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Text(
                    'SELAMAT DATANG DI LAMAN ${prodi.label}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: screenWidth,
                padding: EdgeInsets.only(top: 15.0),
                child: Center(
                  child: Text(
                    'AKREDITASI : ${prodi.akreditasi}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Image.asset(
                prodi.bannerImageUrl,
                width: screenWidth,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      prodi.desc,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Visi dan Misi',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: prodi.visiMisi.map((item) {
                        return Text(
                          item,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          prodi.imageUrl,
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 16),
                        Center(
                          child: Text(
                            prodi.label,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    flex: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ExpansionTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              'Ketua Program Studi',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                  vertical: 8.0,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      prodi.kaprodiImageUrl,
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Text(
                                        prodi.kaprodi,
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            leading: Icon(Icons.people),
                            title: Text(
                              'Dosen Pengajar',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: prodi.dosen.map((dosen) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 4.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            size: 20.0,
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Text(
                                              dosen,
                                              style: TextStyle(
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            leading: Icon(Icons.star_border),
                            title: Text(
                              'Prestasi Mahasiswa',
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            children: [
                              Column(
                                children: prodi.prestasiMahasiswa
                                    .asMap()
                                    .entries
                                    .map((entry) {
                                  int index = entry.key;
                                  String prestasi = entry.value;
                                  String fotoPrestasi = prodi.fotoPres[index];

                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 8.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          fotoPrestasi,
                                          width: 110,
                                          height: 110,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Text(
                                            prestasi,
                                            style: TextStyle(fontSize: 16.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: ElevatedButton(
                  onPressed: () => _launchWebsite(prodi.website),
                  child: Text('Kunjungi Website Resmi'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
