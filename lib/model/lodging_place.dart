class LodgingPlace {
  String name;
  String location;
  String description;
  String Price;
  String imageAsset;
  String discountHotel;
  List<String> discount;
  List<String> imageUrls;

  LodgingPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.Price,
    required this.imageAsset,
    required this.imageUrls,
    required this.discount,
    required this.discountHotel,

  });
}


var lodgingPlaceList = [
  LodgingPlace(
    name: 'Novotel Bukittinggi',
    location: 'Bukittinggi,Indonesia',
    description:
    'Bukittinggi Novotel menawarkan resepsionis 24 jam, layanan concierge, dan layanan kamar. Sebagai tamu The Hills Bukittinggi Hotel, Anda dapat menikmati kolam renang dan sarapan yang tersedia di properti. Para tamu yang mengemudi memiliki akses ke tempat parkir gratis.',
    Price: 'IDR 721.500',
    imageAsset: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/58/0b/ec/exterior-hotel.jpg?w=1600&h=-1&s=1',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/3b/e3/49/novotel-bukittinggi.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0f/ea/9c/9c/novotel-bukittinggi.jpg?w=1000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/67/4c/35/swimming-pool.jpg?w=1600&h=-1&s=1'
    ],
    discount: [
      'images/discount1.jpg',
      'images/discount4.jpg',
      'images/discount5.jpg'
    ],
      discountHotel : 'images/hotel3.png',

  ),
  LodgingPlace(
    name: 'Rocky Plaza',
    location: 'Padang,Indonesia',
    description:
    'Selamat datang ke Rocky Plaza Hotel, pilihan yang tepat untuk wisatawan seperti Anda.Kamar di Rocky Plaza Hotel menawarkan tv layar datar, penyejuk udara, dan minibar memaksimalkan kenyamanan, dan para tamu dapat menggunakan internet dengan tersedianya wi-fi gratis.Resepsionis 24 jam, layanan kamar, dan layanan concierge adalah beberapa hal yang ditawarkan oleh hotel. Kolam renang dan sarapan akan membuat kunjungan Anda menjadi lebih spesial. Jika Anda mengemudi ke Rocky Plaza Hotel, parkir gratis tersedia.',
    Price: 'IDR 504.563',
    imageAsset: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/f6/fd/37/vasat-building.jpg?w=1400&h=-1&s=1',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/aa/b6/66/swimming-pool.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/aa/b6/4f/ballroom.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/aa/b6/13/rocky-plaza-hotel-padang.jpg?w=1100&h=-1&s=1',
    ],
    discount: [
    ],
    discountHotel : 'images/hotel4.png',
  ),
  LodgingPlace(
    name: 'Santinka',
    location: 'Bukittinggi,Indonesia',
    description: 'Terletak di Jl. Tuanku Nan Renceh, di jalan utama yang menghubungkan Bukittinggi dengan Padang, sembilan puluh kilometer ke arah selatan, Hotel Santika Bukittinggi berjarak kurang dari dua jam berkendara santai dari Bandara Internasional Minangkabau Padang, dan mudah dijangkau dari pusat komersial dan bisnis kota.',
    Price: 'IDR 889.000',
    imageAsset: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/56/81/b6/main-building.jpg?w=1100&h=-1&s=1',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/56/7c/f2/singgalang-lounge-located.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/56/7c/96/suite-room-king-with.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/56/7c/dc/ballroom-and-meeting.jpg?w=1100&h=-1&s=1',
    ],
    discount: [
    ],
    discountHotel : 'images/hotel5.png',
  ),
  LodgingPlace(
    name: 'Grand Zury',
    location: 'Padang,Indonesia',
    description:
    'Selamat datang di Grand Zuri Padang Hotel, pilihan tepat untuk wisatawan seperti Anda.Berdekatan dengan beberapa tempat terkenal di Padang, seperti Masjid Raya Sumatera Barat (3,4 km) dan Batu Malin Kundang (3,5 km), Grand Zuri Padang Hotel adalah destinasi yang sangat baik untuk turis.',
    Price: 'IDR 723.000',
    imageAsset: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/66/28/26/the-zhm-premiere-hotel.jpg?w=1400&h=-1&s=1',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/a0/d2/72/sky-pool.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/55/b5/a5/grand-zuri-padang-hotel.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/55/a7/49/grand-zuri-padang-hotel.jpg?w=1400&h=-1&s=1',
    ],
    discount: [
    ],
    discountHotel : 'images/hotel2.png',
  ),
  LodgingPlace(
    name: 'Truntum',
    location: 'Padang,Indonesia',
    description:
    'Truntum Padang adalah hotel yang elegan menawarkan 168 kamar yang memberikan sensasi rumah liburan serta tempat retret bisnis untuk setiap Anda. Hotel Convention & Exhibition Padang menawarkan 10 ruang pertemuan dengan desain modern minimalis dan Grand Ballroom. Setiap kamar dilengkapi dengan kamar tidur mewah, TV LCD, layanan 24 jam, akses internet, sistem kartu kunci elektronik, pengering rambut, dan pembuat teh dan akan memberi Anda kenyamanan lebih - setiap saat Anda menginap. Ballroom Truntum dapat menampung 2000 tamu untuk pertemuan bisnis Anda, peluncuran produk, dan pertemuan lainnya, kedai kopi, lobi, pijat dalam kamar, dan lebih dari 220 ruang parkir mobil.',
     Price: 'IDR 600.000',
    imageAsset: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/2a/3a/64/grand-inna-padang-hotel.jpg?w=1400&h=-1&s=1',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/1f/80/b4/truntum-padang.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/1f/7e/cc/truntum-padang.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/1f/7d/bd/truntum-padang.jpg?w=1400&h=-1&s=1',
    ],
    discount: [
    ],
    discountHotel : 'images/hotel1.png',
  ),
  LodgingPlace(
    name: 'Basko Hotel',
    location: 'Padang,Indonesia',
    description:
    'remier Basko Hotel merupakan pilihan terbaik untuk beristirahat dan memulihkan diri. Terkenal karena suasana yang dekat dengan restoran populer, Premier Basko Hotel membuat Anda mudah menikmati yang terbaik dari Padang.Kamar di Premier Basko Hotel menawarkan tv layar datar dan penyejuk udara memaksimalkan kenyamanan, dan para tamu dapat menggunakan internet dengan tersedianya wi-fi gratis.',
    Price: 'IDR 456.000',
    imageAsset: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/58/e0/30/aerowisata-premier-basko.jpg?w=2000&h=-1&s=1',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/53/24/72/president-room.jpg?w=800&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/28/f0/47/aerowisata-premier-basko.jpg?w=2000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/da/ed/0f/breakfast.jpg?w=1400&h=-1&s=1',
    ],
    discount: [
    ],
    discountHotel : '',
  ),
  LodgingPlace(
    name: 'Pangeran Beach',
    location: 'Padang,Indonesia',
    description:
    'PANGERAN BEACH HOTEL merupakan pilihan yang tepat ketika mengunjungi Padang. Merupakan perpaduan sempurna antara penghematan dan kenyamanan, properti ini menawarkan suasana yang sesuai untuk keluarga dengan fasilitas yang di desain untuk wisatawan seperti Anda.Selama menginap di PANGERAN BEACH HOTEL, para tamu dapat mengunjungi Masjid Ulakan (4,4 km), yang merupakan salah satu tempat terkenal di Padang.',
    Price: 'IDR 633.333',
    imageAsset: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/2e/47/2f/kolam-renang-sangant.jpg?w=800&h=-1&s=1',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/2e/4d/93/restoran-mentawai-tempat.jpg?w=2000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/8c/c9/5c/view-from-my-room.jpg?w=800&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/06/02/ae/pangeran-beach-hotel.jpg?w=2000&h=-1&s=1',
    ],
    discount: [
    ],
    discountHotel : '',
  ),
  LodgingPlace(
    name: 'Bumi Minang',
    location: 'Padang,Indonesia',
    description:
    'Kyriad Bumiminang Hotel merupakan pilihan yang tepat ketika mengunjungi Padang. Merupakan perpaduan sempurna antara penghematan dan kenyamanan, properti ini menawarkan suasana yang unik dengan fasilitas yang di desain untuk wisatawan seperti Anda.Karena berdekatan dengan beberapa tempat terkenal, seperti Batu Malin Kundang (3,4 km) dan Masjid Raya Sumatera Barat (3,5 km), para tamu Kyriad Bumiminang Hotel dapat mengunjungi beberapa lokasi populer di Padang',
    Price: 'IDR 350.000',
    imageAsset: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/81/6d/c9/kyriad-bumiminang-hotel.jpg?w=2000&h=-1&s=1',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/1c/18/74/meeting-room-kd-bumiminang.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/ff/fc/7a/super-deluxe-room.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/ff/fc/6e/pool.jpg?w=1100&h=-1&s=1',
    ],
    discount: [
    ],
    discountHotel : '',
  ),
  LodgingPlace(
    name: 'Ibis Padang',
    location: 'Padang,Indonesia',
    description:
    'Jika anda mencari suasana hotel menawan di Padang, coba lihat Ibis Padang.Jika ingin melihat Masjid Ulakan (4,0 km) sewaktu mengunjungi Padang, Ibis Padang jaraknya berdekatan.Wi-fi gratis ditawarkan untuk para tamu, dan kamar di Ibis Padang memiliki tv layar datar, minibar, dan penyejuk udara.Selama Anda menginap, gunakan fasilitas yang ditawarkan, seperti layanan kamar, layanan concierge, dan teras atap. Tamu Ibis Padang juga dapat menikmati kolam renang dan restoran di properti. Untuk tamu yang mengemudi, parkir gratis tersedia',
    Price: 'IDR 400.000',
    imageAsset: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/61/44/22/ibis-padang.jpg?w=1000&h=-1&s=1',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/61/43/de/ibis-padang.jpg?w=2000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/61/43/a8/ibis-padang.jpg?w=2000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/92/56/39/ibis-padang.jpg?w=1100&h=-1&s=1',
    ],
    discount: [
    ],
    discountHotel : '',
  ),

];