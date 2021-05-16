// import 'package:birderapp/screens/bird_details_screen.dart';

// import '../models/bird_model.dart';
// import 'package:flutter/material.dart';

// class BirdListWidget extends StatefulWidget {
//   BirdListWidget();

//   @override
//   _BirdListWidgetState createState() => _BirdListWidgetState();
// }

// class _BirdListWidgetState extends State<BirdListWidget> {
//   final List<BirdModel> _listOfBirds = [
//     BirdModel(
//         id: 1,
//         name: 'Hornbill',
//         scientificName: 'Bucerotidae',
//         info:
//             'The hornbills are a family of bird found in tropical and subtropical Africa, Asia and Melanesia. They are characterized by a long, down-curved bill which is frequently brightly colored and sometimes has a casque on the upper mandible',
//         imageUrl:
//             'https://zootampa.org/wp-content/uploads/2018/07/main-aviary-great-indian-hornbill-2012.jpg'),
//     BirdModel(
//         id: 2,
//         name: 'Humming Bird',
//         scientificName: 'Trochilidae',
//         info:
//             'Hummingbirds are birds native to the Americas and constitute the biological family Trochilidae. There are about 360 species. They occur from Alaska to Tierra del Fuego but the vast majority of the species are found in the tropics. They are small birds, most species measuring 7.5–13 cm in length.',
//         imageUrl:
//             'https://www.thespruce.com/thmb/6oqkvxm2kUj6Krf05h7X4qy47fU=/1500x844/smart/filters:no_upscale()/annas-d97a9a5f0321476098e7917726d2366d.jpg'),
//     BirdModel(
//         id: 3,
//         name: 'Sunbird',
//         scientificName: 'Nectariniidae',
//         info:
//             'Sunbirds and spiderhunters make up the family Nectariniidae of passerine birds. They are small, slender passerines from the Old World, usually with downward-curved bills. Many are brightly coloured, often with iridescent feathers, particularly in the males. Many species also have especially long tail feathers.',
//         imageUrl:
//             'https://wildbirdrevolution.org/wp-content/uploads/2019/08/Purple-Sunbird-Photographed-at-Hooghly-Westbengal-Nikon-Photography-by-Soumya-Chakraborty.jpg'),
//     BirdModel(
//         id: 4,
//         name: 'Indian Pitta',
//         scientificName: 'Pitta brachyura',
//         info:
//             'The Indian pitta is a passerine bird native to the Indian subcontinent. It inhabits scrub jungle, deciduous and dense evergreen forest. It breeds in the forests of the Himalayas, hills of central and western India, and migrates to other parts of the peninsula in winter.',
//         imageUrl:
//             'https://i.pinimg.com/736x/4e/e4/e5/4ee4e5e7360d77dbf10f852e5cb40f9e.jpg'),
//     BirdModel(
//         id: 5,
//         name: 'Hooded Pitta',
//         scientificName: 'Pitta sordida',
//         info:
//             'The hooded pitta is a passerine bird in the family Pittidae. It is common in eastern and southeastern Asia and maritime Southeast Asia, where it lives in several types of forests as well as on plantations and other cultivated areas. It is a green bird with a black head and chestnut crown.',
//         imageUrl:
//             'https://cdn.download.ams.birds.cornell.edu/api/v1/asset/280992861/1800')
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('List of Birds'),
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: <Widget>[
//           ..._listOfBirds.map(
//             (eachBird) => Card(
//               elevation: 10,
//               child: ListTile(
//                 leading: Hero(
//                   tag: 'birdFly-${eachBird.id}',
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => BirdDetails(
//                             theBird: eachBird,
//                           ),
//                         ),
//                       );
//                     },
//                     child: CircleAvatar(
//                       radius: 50,
//                       backgroundColor: Colors.teal,
//                       child: CircleAvatar(
//                         radius: 25,
//                         backgroundImage: NetworkImage(eachBird.imageUrl),
//                       ),
//                     ),
//                   ),
//                 ),
//                 title: Text(
//                   eachBird.name,
//                   style: TextStyle(fontSize: 25.0, fontFamily: 'Raleway'),
//                 ),
//                 subtitle: Text(
//                   eachBird.scientificName,
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//                 trailing: Theme(
//                   data: ThemeData(splashColor: Colors.red[200]),
//                   child: Material(
//                     elevation: 0,
//                     shape: CircleBorder(),
//                     clipBehavior: Clip.hardEdge,
//                     color: Colors.transparent,
//                     child: InkWell(
//                       child: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Icon(
//                           Icons.delete,
//                           color: Colors.red,
//                         ),
//                       ),
//                       onTap: () {
//                         setState(() {
//                           _listOfBirds.removeWhere((b) => b.id == eachBird.id);
//                         });
//                         print(_listOfBirds.length);
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// // Image(
// //                     image: NetworkImage(eachBird.imageUrl),
// //                     width: 100,
// //                     fit: BoxFit.fitWidth),
