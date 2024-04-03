class Profile {
  String nama;
  String fotoUrl;
  String NPM;
  String TTL;
  String Alamat;
  String NoHP;
  String Email;
  String GitHub;
  List<String> Pendidikan;
  List<String> Penghargaan;
  List<String> FotoPenghargaan;

  Profile({
    required this.nama,
    required this.fotoUrl,
    required this.NPM,
    required this.TTL,
    required this.Alamat,
    required this.NoHP,
    required this.Email,
    required this.GitHub,
    required this.Pendidikan,
    required this.Penghargaan,
    required this.FotoPenghargaan,
  });

  static List<Profile> samples = [
    Profile(
      nama: 'Alfina Andriani',
      fotoUrl: 'assets/alfina.JPG',
      NPM: '22082010018',
      TTL: 'Sidoarjo, 29 Februari 2004',
      Alamat: 'Kramat Jegu, Taman, Sidoarjo',
      NoHP: '087762580748',
      Email: '22082010018@student.upnjatim.ac.id',
      GitHub: 'https://github.com/alfinaandriani',
      Pendidikan: [
        'SDN Kramatjegu 1',
        'SMP Negeri 1 Taman',
        'SMK Negeri 3 Surabaya',
      ],
      Penghargaan: [
        'Peraih Pendanaan P2MW 2023 dan KMI AWARD 2023',
        'Juara 2 Lomba UI/UX Create-In V3.0',
        'Juara 3 Lomba UI/UX Dies Natalies Fasilkom 2023',
      ],
      FotoPenghargaan: [
        'assets/fina1.jpg',
        'assets/fina2.jpg',
        'assets/fina3.jpg',
      ],
    ),
    Profile(
      nama: 'Nadiyah Syaidatus Shofa Abdul Hayat',
      fotoUrl: 'assets/nadiyah.jpg',
      NPM: '22082010038',
      TTL: 'Gresik, 13 Mei 2004',
      Alamat: 'JL. Raya Cerme Kidul No.18',
      NoHP: '081252168212',
      Email: '22082010038@student.upnjatim.ac.id',
      GitHub: 'https://github.com/NadiyahSyaidatus',
      Pendidikan: [
        'SDN 1 Cerme Kidul',
        'SMPN 1 Cerme',
        'SMAN 1 Cerme',
      ],
      Penghargaan: [
        'Finalis Lomba BMC Dies Natalis Fasilkom 2023',
        'Juara 1 Lomba UI/UX Technotaiment',
      ],
      FotoPenghargaan: [
        'assets/nanad1.jpeg',
        'assets/nanad2.jpeg',
      ],
    ),
  ];
}
