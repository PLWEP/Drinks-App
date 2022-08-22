class Drink {
  String name;
  String weight;
  String rating;
  String calories;
  String description;
  String price;
  String imageAsset;

  Drink({
    required this.name,
    required this.weight,
    required this.rating,
    required this.calories,
    required this.description,
    required this.price,
    required this.imageAsset,
  });
}

var drinkList = [
  Drink(
    name: 'Tea',
    weight: '100gr',
    rating: '5.0',
    calories: "1 kcal",
    description:
        "Teh adalah minuman yang mengandung kafeina, sebuah infusi yang dibuat dengan cara menyeduh daun, pucuk daun, atau tangkai daun yang dikeringkan dari tanaman Camellia sinensis dengan air panas. Teh yang berasal dari tanaman teh dibagi menjadi empat kelompok: teh hitam, teh oolong, teh hijau, dan teh putih.",
    price: "Rp. 15.000",
    imageAsset:
        'https://static.republika.co.id/uploads/images/inpicture_slide/secangkir-teh-_190524103045-721.jpg',
  ),
  Drink(
    name: 'Coffe',
    weight: '100gr',
    rating: '4.5',
    calories: '0.5 kcal',
    description:
        "Kopi adalah minuman hasil seduhan biji kopi yang telah disangrai dan dihaluskan menjadi bubuk. Kopi merupakan salah satu komoditas di dunia yang dibudidayakan lebih dari 50 negara. Dua spesies pohon kopi yang dikenal secara umum yaitu Kopi Robusta dan Kopi Arabika.",
    price: "Rp. 30.000",
    imageAsset:
        'https://www.lampost.co/upload/sensasi-ngopi-di-sinia-coffe.jpg',
  ),
  Drink(
    name: 'Juice',
    weight: '100gr',
    rating: '4.0',
    calories: '54,5 kcal',
    description:
        "Jus adalah minuman yang dibuat dari ekstraksi atau pengepresan cairan alami yang terkandung dalam buah dan sayuran. Itu juga bisa merujuk pada cairan yang dibumbui dengan konsentrat atau sumber makanan biologis lainnya, seperti daging atau makanan laut, seperti jus kerang.",
    price: 'Rp. 10.000',
    imageAsset:
        'https://awsimages.detik.net.id/community/media/visual/2016/09/12/554d4843-76c1-4650-9043-e17c6ac9e7c5.jpg?w=700&q=90',
  ),
  Drink(
    name: 'Milk',
    weight: '100gr',
    rating: '5.0',
    calories: '42,3 kcal',
    description:
        "Susu adalah cairan bergizi berwarna putih yang dihasilkan oleh kelenjar susu mamalia, salah satunya manusia. Susu adalah sumber gizi utama bagi bayi sebelum mereka dapat mencerna makanan padat.",
    price: 'Rp. 10.000',
    imageAsset:
        'https://images.immediate.co.uk/production/volatile/sites/30/2020/02/Glass-and-bottle-of-milk-fe0997a.jpg?quality=90&resize=960,872',
  ),
  Drink(
    name: 'Coconut Water',
    weight: '100gr',
    rating: '4.0',
    calories: '18,9 kcal',
    description:
        "Air kelapa adalah cairan yang berada di dalam kelapa hijau muda. Air kelapa telah lama menjadi minuman populer di wilayah tropis, khususnya di India, Pesisir Brasil, Asia Tenggara, Kepulauan Pasifik, Afrika, dan Caribbean",
    price: 'Rp. 7.000',
    imageAsset:
        'https://i0.wp.com/seruni.id/wp-content/uploads/2016/11/es-kelapa.jpg?fit=800%2C600&ssl=1',
  ),
  Drink(
    name: 'Mineral Water',
    weight: '100gr',
    rating: '5.0',
    calories: '0 kcal',
    description:
        "Air mineral adalah air yang mengandung mineral atau bahan-bahan larut lain yang mengubah rasa atau memberi nilai-nilai terapi. Banyak kandungan Garam, sulfur, dan gas-gas yang larut di dalam air ini. Air mineral biasanya masih memiliki buih. Air mineral bersumber dari mata air yang berada di alam.",
    price: 'Rp. 3.000',
    imageAsset:
        'https://qph.cf2.quoracdn.net/main-qimg-7f62b98702eac42e74e62c0d8e845e05-pjlq',
  )
];
