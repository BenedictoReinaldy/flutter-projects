class Pahlawan {
  final String name;
  final String image;
  final String desc;

  Pahlawan({
    required this.name,
    required this.image,
    required this.desc,
  });
}

final List<Pahlawan> allData = [
  Pahlawan(
    name: 'Soekarno',
    image: 'assets/images/soekarno.png',
    desc: 'Bapak proklamator Indonesia',
  ),
  Pahlawan(
    name: 'Ki Hadjar Dewantara',
    image: 'assets/images/dewantara.png',
    desc: 'Bapak pendidikan Indonesia',
  ),
  Pahlawan(
    name: 'Cut Nyak Dien',
    image: 'assets/images/dien.png',
    desc: 'Pahlawan wanita Aceh yang melawan Belanda',
  ),
  Pahlawan(
    name: 'Pangeran Diponegoro',
    image: 'assets/images/diponegoro.png',
    desc: 'Pangeran pelawan penjajah Belanda',
  ),
  Pahlawan(
    name: 'Mohammad Hatta',
    image: 'assets/images/hatta.png',
    desc: 'Bapak proklamator Indonesia',
  ),
  Pahlawan(
    name: 'RA Kartini',
    image: 'assets/images/kartini.png',
    desc: 'Pejuang hak wanita bangsa Indonesia',
  ),
  Pahlawan(
    name: 'Maria Tiahahu',
    image: 'assets/images/maria.png',
    desc: 'Pejuang muda wanita Negeri Maluku',
  ),
  Pahlawan(
    name: 'Raden Soedirman',
    image: 'assets/images/soedirman.png',
    desc: 'Sang Jenderal besar Indonesia',
  ),
  Pahlawan(
    name: 'WR Supratman',
    image: 'assets/images/supratman.png',
    desc: 'Pencetus lagu kebangsaan',
  ),
  Pahlawan(
    name: 'Bung Tomo',
    image: 'assets/images/sutomo.png',
    desc: 'Pelopor perlawanan arek-arek Suroboyo',
  ),
];
