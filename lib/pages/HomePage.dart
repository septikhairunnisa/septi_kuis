import 'package:flutter/material.dart';

class Schedule {
  String coverageArea;
  String wasteBankName;
  String implementationDate;
  String startTime;
  String endTime;
  String imageUrl;

  Schedule({
    required this.coverageArea,
    required this.wasteBankName,
    required this.implementationDate,
    required this.startTime,
    required this.endTime,
    required this.imageUrl,
  });
}

// Dummy data schedule
var scheduleList = [
  Schedule(
    coverageArea: 'Suryodiningratan dan sekitarnya',
    wasteBankName: 'Bank Sampah Gemah Ripah',
    implementationDate: '2024-10-05',
    startTime: '08:00',
    endTime: '10:00',
    imageUrl: 'https://example.com/logo_gemah_ripah.png',
  ),
  Schedule(
    coverageArea: 'Prawirodirjan dan sekitarnya',
    wasteBankName: 'Bank Sampah Hijau Lestari',
    implementationDate: '2024-10-06',
    startTime: '09:00',
    endTime: '11:00',
    imageUrl: 'https://example.com/logo_hijau_lestari.png',
  ),
  Schedule(
    coverageArea: 'Mantrijeron dan sekitarnya',
    wasteBankName: 'Bank Sampah Bersih Sejahtera',
    implementationDate: '2024-10-07',
    startTime: '07:30',
    endTime: '09:30',
    imageUrl: 'https://pengulon-buleleng.desa.id/assets/files/artikel/sedang_1570754533Logo%20Sampah%20Pelita%20AA.jpg',
  ),
  Schedule(
    coverageArea: 'Ngupasan dan sekitarnya',
    wasteBankName: 'Bank Sampah Asri Jaya',
    implementationDate: '2024-10-08',
    startTime: '08:30',
    endTime: '10:30',
    imageUrl: 'https://kampungkb.bkkbn.go.id/storage/34/3402/340215/3402152003/6402/intervensi/2022/12/25/470841/16719960030.jpeg',
  ),
  Schedule(
    coverageArea: 'Pakuncen dan sekitarnya',
    wasteBankName: 'Bank Sampah Lestari Mandiri',
    implementationDate: '2024-10-09',
    startTime: '09:00',
    endTime: '11:00',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE1scMeVYuh99qWcbJQXmj85f3nb2Ck126Zw&s',
  ),
  Schedule(
    coverageArea: 'Wirobrajan dan sekitarnya',
    wasteBankName: 'Bank Sampah Sejahtera Abadi',
    implementationDate: '2024-10-10',
    startTime: '07:00',
    endTime: '09:00',
    imageUrl: 'https://assets-a1.kompasiana.com/items/album/2021/07/29/logo-bank-sampah-6101e3e41525104da36e21f2.png',
  ),
  Schedule(
    coverageArea: 'Notoprajan dan sekitarnya',
    wasteBankName: 'Bank Sampah Berkah',
    implementationDate: '2024-10-11',
    startTime: '08:00',
    endTime: '10:00',
    imageUrl: 'https://pengulon-buleleng.desa.id/assets/files/artikel/sedang_1570754533Logo%20Sampah%20Pelita%20AA.jpg',
  ),
];

class HomePage extends StatelessWidget {
  final String username;

  HomePage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selamat Pagi $username"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          // Card for "Apa itu bank sampah keliling?"
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutBankSampah()),
              );
            },
            child: Card(
              margin: EdgeInsets.only(bottom: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Apa itu bank sampah keliling?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Schedule List
          ...scheduleList.map((schedule) {
            return Card(
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(schedule.imageUrl), // Menampilkan gambar
                    SizedBox(height: 10),
                    Text(
                      "Wilayah: ${schedule.coverageArea}",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text("Nama Bank Sampah: ${schedule.wasteBankName}"),
                    Text("Tanggal: ${schedule.implementationDate}"),
                    Text("Waktu: ${schedule.startTime} - ${schedule.endTime}"),
                  ],
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

class AboutBankSampah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Apa itu Bank Sampah Keliling?"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            "Bank sampah keliling adalah inisiatif yang bertujuan untuk meningkatkan partisipasi masyarakat dalam pengelolaan sampah dan pencegahan pencemaran lingkungan. Biasanya dilaksanakan oleh komunitas atau organisasi non-pemerintah, bank sampah keliling menggunakan kendaraan khusus untuk mengumpulkan sampah dari rumah ke rumah atau dari lokasi yang telah ditentukan.\n\n"
            "Setelah dikumpulkan, sampah tersebut dibersihkan, dipilah, dan diolah menjadi bahan daur ulang. Melalui bank sampah keliling, masyarakat diberikan kesempatan untuk berpartisipasi aktif dalam menjaga lingkungan sekaligus memperoleh insentif berupa hadiah atau uang sebagai imbalan dari sampah yang mereka berikan.\n\n"
            "Dengan demikian, bank sampah keliling memiliki peran penting dalam mengedukasi masyarakat tentang pentingnya pengelolaan sampah yang berkelanjutan dan membantu mengurangi jumlah sampah yang masuk ke tempat pembuangan akhir.",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
