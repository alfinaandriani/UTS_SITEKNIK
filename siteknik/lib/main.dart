import 'package:flutter/material.dart';
import 'prodi.dart';
import 'detail_prodi.dart';
import 'profile.dart';
import 'detail_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakultas Teknik UPNVJT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.8),
        toolbarHeight: 75.0,
        title: Column(
          children: [
            Text(
              'Fakultas Teknik',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'UPN Veteran Jawa Timur',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(3.0),
          child: Image.asset(
            'assets/Logo UPNVJT.png',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Image.asset(
                'assets/ft.jpg',
                width: MediaQuery.of(context).size.width,
                height: 300.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Sejarah Fakultas Teknik',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Universitas Pembangunan Nasional Veteran Jawa Timur (UPN "Veteran" Jawa Timur) didirikan pada tanggal 5 Juli 1959 dengan nama Awal Akademi Administrasi Pembangunan Veteran (AAPV). Pada bulan Juli 1959 hingga tahun 1965, AAPV cabang Surabaya diubah namanya menjadi Perguruan Tinggi Pembangunan Nasionnal (PTPN) Veteran. Pada awalnya, PTPN Veteran Cabang Jawa Timur memiliki tiga fakultas, yaitu Fakultas Ekonomi, Fakultas Teknik Kimia, dan Fakultas Pertanian.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Fakultas Teknik Kimia didirikan pada tanggal 17 Mei 1968, berdasarkan surat keputusan Kementerian Transmigrasi, Urusan Veteran, dan Demobilisasi nomor: 062/KPTS/MENTRANVED/68. Pada tahun 1989, Fakultas Teknik Kimia berubah menjadi Fakultas Teknologi Industri dengan dua program studi, yaitu Program Studi Teknik Kimia dan Program Studi Teknik Manajemen Industri.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Pada tahun 2016, UPN "Veteran" Jawa Timur mengalami pengembangan dan perubahan rumpun ilmu ke-Teknikan, Arsitektur, dan Desain, serta Ilmu Komputer. Fakultas Teknologi Industri (FTI) dan Fakultas Teknik Sipil dan Perencanaan (FTSP) berkembang menjadi Fakultas Teknik (FT) dan Fakultas Arsitektur dan Desain (FAD), serta Fakultas Ilmu Komputer (FIK). Beberapa program studi yang sebelumnya dalam satu fakultas, seperti Arsitektur dan Desain Komunikasi Visual, Teknik Lingkungan, dan Teknik Sipil, dipindahkan ke fakultas yang sesuai.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Sesuai dengan aturan Kementerian Pendidikan Kebudayaan Riset dan Teknologi, UPN "Veteran" Jawa Timur resmi menjadi Perguruan Tinggi Negeri berdasarkan Peraturan Presiden Republik Indonesia Nomor 122 Tahun 2014 pada tanggal 6 Oktober 2014. Pada tahun akademik 2016/2017, FTI dan FTSP bergabung menjadi Fakultas Teknik, dengan penambahan beberapa program studi baru seperti Teknik Mesin, Magister Ilmu Lingkungan, dan Fisika. Hingga tahun 2023, Fakultas Teknik memiliki enam Program Studi S1 Teknik, satu Prodi S1 Sains, dan satu Program Magister (S2)',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Visi',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '"Menjadi Fakultas Teknik Unggul Berkarakter Bela Negara"',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Misi',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '1. Menyelenggarakan program pendidikan dengan kurikulum berbasis kompetensi di bidang rekayasa industri, sipil dan lingkungan yang dilandasi semangat bela negara.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '2. Mengembangkan penelitian guna menunjang pembangunan di bidang teknologi, industri dan sipil yang berkelanjutan dan berwawasan lingkungan.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '3. Menyelenggarakan pengabdian/ pelayanan kepada masyarakat dalam bidang teknologi, industri, sipil dan lingkungan.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    '4. Menjalin dan mengembangkan kerjasama dibidang Pendidikan, Penelitian dan Pengabdian kepada Masyarakat.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    'Program Studi',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (Prodi prodi in Prodi.samples)
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ProdiCard(
                              prodi: prodi,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailProdi(
                                      prodi: prodi,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32.0),
                  Text(
                    'Developer',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (Profile profile in Profile.samples)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DeveloperCard(
                              profile: profile,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailProfile(
                                      profile: profile,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProdiCard extends StatelessWidget {
  final Prodi prodi;
  final VoidCallback onTap;

  const ProdiCard({
    required this.prodi,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 250.0,
        height: 410.0,
        child: Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  prodi.imageUrl,
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 8.0),
                Text(
                  prodi.label,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  prodi.akreditasi,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  prodi.shortDes,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DeveloperCard extends StatelessWidget {
  final Profile profile;
  final VoidCallback onTap;

  const DeveloperCard({
    required this.profile,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 250.0,
        height: 250.0,
        child: Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(profile.fotoUrl),
                ),
                SizedBox(height: 8.0),
                Text(
                  profile.nama,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  profile.NPM,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
