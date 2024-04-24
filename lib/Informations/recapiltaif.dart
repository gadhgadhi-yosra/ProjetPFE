// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:piecexpresspfe/Informations/Adresse.dart';

// import 'package:piecexpresspfe/pages/panier.dart';
// import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonAnnuler.dart';
// import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
// import 'package:piecexpresspfe/resuable_widgets/colors.dart';
// import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

// class Recapulatif1Page extends StatefulWidget {
//   const Recapulatif1Page({super.key});
//   @override
//   State<Recapulatif1Page> createState() => _Recapulatif1PageState();
// }

// class _Recapulatif1PageState extends State<Recapulatif1Page> {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = ScreenSize.width(context);
//     double screenHeight = ScreenSize.height(context);

//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'Récapitulatif',
//           style: TextStyle(
//               color: AppColors.primaryColor,
//               fontSize: screenWidth * 0.04,
//               fontFamily: 'Montsserat',
//               fontWeight: FontWeight.bold),
//         ),
//         leading: IconButton(
//           icon: Image.asset(
//             'assets/icons/flecheSortie.png',
//             width: screenWidth * 0.05,
//             height: screenHeight * 0.05,
//           ),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const AdressePage()),
//             );
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Image.asset(
//               'assets/icons/panier.png',
//               width: screenWidth * 0.06,
//               height: screenHeight * 0.06,
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const PanierPiece()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Container(
//                   color: AppColors.primaryColor,
//                   height: 1,
//                   width: screenWidth / 3,
//                 ),
//                 Container(
//                   color: Colors.grey,
//                   height: 1,
//                   width: screenWidth,
//                 ),
//               ],
//             ),
//             const SizedBox(
//               width: 200,
//               height: 30,
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//                   child: Container(
//                     height: screenHeight * 0.15,
//                     width: screenWidth * 0.25,
//                     margin: const EdgeInsets.only(left: 8),
//                     decoration: BoxDecoration(
//                       color: AppColors.tertiaryColor,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Image.asset(
//                       'assets/images/roulement1.png',
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 const Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.only(bottom: 3),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Roulement de roue',
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 15,
//                               fontFamily: 'Montserrat-Medium',
//                               fontWeight: FontWeight.w400),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           '25.954 DT',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 12,
//                             fontFamily: 'Montserrat-Bold',
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               'Marque : ',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w200),
//                             ),
//                             Text(
//                               'BMW i3',
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w200),
//                             )
//                           ],
//                         ),
//                         SizedBox(
//                           height: 40,
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               'Qte:',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 13,
//                                 fontFamily: 'Montserrat-Bold',
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               '3',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 12,
//                                 fontFamily: 'Montserrat-Meduim',
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Divider(
//               color: AppColors.tertiaryColor,
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Text(
//               'Méthode de payment',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontFamily: 'Montserrat-Meduim',
//                   fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Text(
//               'Paiement cash à la livraison',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w300),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Divider(
//               color: AppColors.tertiaryColor,
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Text(
//               'Détails de paiement',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontFamily: 'Montserrat-Meduim',
//                   fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             const Row(
//               children: [
//                 Text(
//                   'Total des articles :',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w300),
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Text(
//                   '98.100 TDt',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             const Row(
//               children: [
//                 Text(
//                   'Frais de transport :',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w300),
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Text(
//                   '7 TDt',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             const Row(
//               children: [
//                 Text(
//                   'Total :',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w300),
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Text(
//                   '105.100 TDt',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Divider(
//               color: AppColors.tertiaryColor,
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             const Text(
//               'Adresse de livraison',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontFamily: 'Montserrat-Meduim',
//                   fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             const Text(
//               "17 avenue feuille d'érable Lac2",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w300),
//             ),
//             const SizedBox(
//               height: 125,
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Container(
//                   width: screenWidth / 2.4,
//                   child: MyButton(text: 'Suivant', onTap: () {}),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 ButtonAnnuler(onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const AdressePage(),
//                     ),
//                   );
//                 }),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:piecexpresspfe/Informations/Adresse.dart';
// import 'package:piecexpresspfe/pages/panier.dart';
// import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonAnnuler.dart';
// import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
// import 'package:piecexpresspfe/resuable_widgets/colors.dart';
// import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

// class Recapulatif1Page extends StatefulWidget {
//   const Recapulatif1Page({Key? key}) : super(key: key);

//   @override
//   State<Recapulatif1Page> createState() => _Recapulatif1PageState();
// }

// class _Recapulatif1PageState extends State<Recapulatif1Page> {
//   final List<Map<String, dynamic>> items = [
//     {
//       'image': 'assets/images/roulement1.png',
//       'title': 'Roulement de roue',
//       'price': '25.954 DT',
//       'brand': 'BMW i3',
//       'quantity': 3,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = ScreenSize.width(context);
//     double screenHeight = ScreenSize.height(context);

//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'Récapitulatif',
//           style: TextStyle(
//               color: AppColors.primaryColor,
//               fontSize: screenWidth * 0.04,
//               fontFamily: 'Montsserat',
//               fontWeight: FontWeight.bold),
//         ),
//         leading: IconButton(
//           icon: Image.asset(
//             'assets/icons/flecheSortie.png',
//             width: screenWidth * 0.05,
//             height: screenHeight * 0.05,
//           ),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const AdressePage()),
//             );
//           },
//         ),
//         actions: [
//           IconButton(
//             icon: Image.asset(
//               'assets/icons/panier.png',
//               width: screenWidth * 0.06,
//               height: screenHeight * 0.06,
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const PanierPiece()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Container(
//                       color: AppColors.primaryColor,
//                       height: 1,
//                       width: screenWidth / 3,
//                     ),
//                     Container(
//                       color: Colors.grey,
//                       height: 1,
//                       width: screenWidth,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 200,
//                   height: 30,
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 15, horizontal: 10),
//                       child: Container(
//                         height: screenHeight * 0.15,
//                         width: screenWidth * 0.25,
//                         margin: const EdgeInsets.only(left: 8),
//                         decoration: BoxDecoration(
//                           color: AppColors.tertiaryColor,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Image.asset(
//                           items[index]['image'],
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.only(bottom: 3),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               items[index]['title'],
//                               style: const TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 15,
//                                   fontFamily: 'Montserrat-Medium',
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             const SizedBox(
//                               height: 5,
//                             ),
//                             Text(
//                               items[index]['price'],
//                               style: const TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 12,
//                                 fontFamily: 'Montserrat-Bold',
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             Row(
//                               children: [
//                                 const Text(
//                                   'Marque : ',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w200),
//                                 ),
//                                 Text(
//                                   items[index]['brand'],
//                                   style: const TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w200),
//                                 )
//                               ],
//                             ),
//                             const SizedBox(
//                               height: 40,
//                             ),
//                             Row(
//                               children: [
//                                 const Text(
//                                   'Qte:',
//                                   style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 13,
//                                     fontFamily: 'Montserrat-Bold',
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 Text(
//                                   items[index]['quantity'].toString(),
//                                   style: const TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 12,
//                                     fontFamily: 'Montserrat-Meduim',
//                                   ),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Divider(
//                   color: AppColors.tertiaryColor,
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   'Méthode de payment',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 14,
//                       fontFamily: 'Montserrat-Meduim',
//                       fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 const Text(
//                   'Paiement cash à la livraison',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w300),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Divider(
//                   color: AppColors.tertiaryColor,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Détails de paiement',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 14,
//                       fontFamily: 'Montserrat-Meduim',
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'Total des articles :',
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w300),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       '98.100 TDt',
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'Frais de transport :',
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w300),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       '7 TDt',
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'Total :',
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w300),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       '105.100 TDt',
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Divider(
//                   color: AppColors.tertiaryColor,
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   'Adresse de livraison',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 14,
//                       fontFamily: 'Montserrat-Meduim',
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Text(
//                   "17 avenue feuille d'érable Lac2",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w300),
//                 ),
//                 SizedBox(
//                   height: 125,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       width: screenWidth / 2.4,
//                       child: MyButton(text: 'Suivant', onTap: () {}),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     ButtonAnnuler(onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const AdressePage(),
//                         ),
//                       );
//                     }),
//                   ],
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:piecexpresspfe/Informations/Adresse.dart';
import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonAnnuler.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class RecapulatifPage extends StatefulWidget {
  const RecapulatifPage({Key? key}) : super(key: key);

  @override
  State<RecapulatifPage> createState() => _RecapulatifPageState();
}

class _RecapulatifPageState extends State<RecapulatifPage> {
  final List<Map<String, dynamic>> items = [
    {
      'image': 'assets/images/roulement1.png',
      'title': 'Roulement de roue',
      'price': '25.954 DT',
      'brand': 'BMW i3',
      'quantity': 3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Récapitulatif',
          style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: screenWidth * 0.04,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/flecheSortie.png',
            width: screenWidth * 0.05,
            height: screenHeight * 0.05,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/panier.png',
              width: screenWidth * 0.06,
              height: screenHeight * 0.06,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PanierPiece()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      color: AppColors.primaryColor,
                      height: screenHeight * 0.0015,
                      width: screenWidth / 3,
                    ),
                    Container(
                      color: Colors.grey,
                      height: screenHeight * 0.0015,
                      width: screenWidth,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 200,
                  height: 30,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.015,
                          horizontal: screenWidth * 0.01),
                      child: Container(
                        height: screenHeight * 0.15,
                        width: screenWidth * 0.25,
                        margin: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          color: AppColors.tertiaryColor,
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.02),
                        ),
                        child: Image.asset(
                          items[index]['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: screenHeight * 0.003),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items[index]['title'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenWidth * 0.0375,
                                  fontFamily: 'Montserrat-Medium',
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              items[index]['price'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: screenWidth * 0.03,
                                fontFamily: 'Montserrat-Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Marque : ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200),
                                ),
                                Text(
                                  items[index]['brand'],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Qte:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: 'Montserrat-Bold',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  items[index]['quantity'].toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: screenWidth * 0.03,
                                    fontFamily: 'Montserrat-Medium',
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: AppColors.tertiaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Méthode de payment',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat-Medium',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Paiement cash à la livraison',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: AppColors.tertiaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Détails de paiement',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat-Medium',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Total des articles :',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '98.100 TDt',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Frais de transport :',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '7 TDt',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Total :',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '105.100 TDt',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: AppColors.tertiaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Adresse de livraison',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat-Medium',
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "17 avenue feuille d'érable Lac2",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 125,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: screenWidth / 2.4,
                      child: MyButton(text: 'Suivant', onTap: () {}),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ButtonAnnuler(onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdressePage(),
                        ),
                      );
                    }),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
