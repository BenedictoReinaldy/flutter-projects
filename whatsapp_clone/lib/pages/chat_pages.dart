import 'package:flutter/material.dart';

class ChatPages extends StatelessWidget {
  ChatPages({super.key});
  final List data = [
    {
      'photoUrl': 'https://i.pravatar.cc/300?img=1',
      'name': 'Noah Sanders',
      'desc':
          'Selamat pagi rekan-rekan mahasiswa angkatan 2019, mohon bantuann untuk mengisi tracer study  dalam link ini: https://forms.gle/nwdJyRJzbECUtArD7 ',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=2',
      'name': 'Emily Foster',
      'desc':
          'Jalok tolong bantu share ya gae arek" ukdc bee awakmu due kenalan" prodi" laine',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=3',
      'name': 'Lucas Bailey',
      'desc':
          'https://www.instagram.com/p/C-UOKv1u9df/?igsh=MW5paDNkcnNkdjB1eg==',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=4',
      'name': 'Grace Porter',
      'desc':
          'happy birthdayy yaa mbak shella🥳sukses selalu dalam pekerjaan membimbing bocil" wkwkw, panjang umurr, semangat trs studi menuju s2nyaa. God bless',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=5',
      'name': 'Elijah Murphy',
      'desc': 'dannn benerann aku disiwak',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=6',
      'name': 'Marselino',
      'desc': 'Fero Walandouw itu saudara ku jauh 🤣',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=7',
      'name': 'Yessi Hanna',
      'desc': 'AKU SAMA ADIK KU ITU SAUDARA TIRI. TIDAK BOLEH',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=8',
      'name': 'Benedicta',
      'desc':
          'Mohon diperhatikan yah teman-teman, kepada setiap pemenang juara 1,2,3 putra dan putri',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=9',
      'name': 'Kenny',
      'desc':
          'Halo guys dikarena  untuk kebutuhan admisitrasi keuangan besok, Selasa 20 Agustus 2024 diharapkan datang ke Ruang BEM di sebelah kantin Jam 12 siang, untuk mentanda tangani kwitansi uang pemenang lomba Juara 1,2,3 bagi Ganda Putri dan Putra dari setiap tim mengirim perwakilannya Terima Kasih',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=10',
      'name': 'Harper Scott',
      'desc': 'Thanks guys',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=11',
      'name': 'Ethan Hill',
      'desc':
          'Udh ditanya kkku,,tp blom dijawab dari awal kk ngabarin pesan chat it sampe skarng kak',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=12',
      'name': 'Sophia Bennett',
      'desc': 'Awmu ngkok sore jam 4an free ta?',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=13',
      'name': 'Mason Reed',
      'desc': 'Langsung GKI nya Jean yo gapopo',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=14',
      'name': 'Olivia Brooks',
      'desc': 'Thank you yaa Ben',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=15',
      'name': 'Logan Cooper',
      'desc':
          'Kalo ga konsisten dan gatau mana yang mau dibakar, pola makan masih ngawur ya sama aja',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=16',
      'name': 'Ava Hayes',
      'desc': 'emg lambat kalo ga gym',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=17',
      'name': 'Jackson Foster',
      'desc': 'seminggu sekali badmin+jogging padahal',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=18',
      'name': 'Mia Powell',
      'desc': 'ga ngaruh wkwkwkwkw',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=19',
      'name': 'Liam Morgan',
      'desc': 'Ikut pertemuan ga Ben?',
    },
    {
      'photoUrl': 'https://picsum.photos/200?img=20',
      'name': 'Isabella Ross',
      'desc': 'Terus pilih yg my applicant',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 24,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.search_outlined,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: Icon(
                    Icons.more_vert_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'All',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'Unread',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'Favorites',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      'Groups',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Colors.amber,
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      data[index]['photoUrl'],
                    ),
                    radius: 30,
                  ),
                  title: Text(
                    data[index]['name'],
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    data[index]['desc'],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Yesterday',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 10,
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 1,
                );
              },
              itemCount: data.length,
            ),
          ),
        ],
      ),
    );
  }
}
