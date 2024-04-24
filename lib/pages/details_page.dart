// import 'package:flutter/material.dart';
// import 'package:piecexpresspfe/button_widget/buttonHeart.dart';
// import 'package:piecexpresspfe/button_widget/mybutton.dart';
// import 'package:piecexpresspfe/pages/ListePiece.dart';
// import 'package:piecexpresspfe/resuable_widgets/ColumnTable.dart';
// import 'package:piecexpresspfe/resuable_widgets/rechercheCustom.dart';

// class DetailsPage extends StatefulWidget {
//   const DetailsPage({Key? key, required this.carData}) : super(key: key);

//   final Map<String, String> carData;

//   @override
//   State<DetailsPage> createState() => _DetailsPageState();
// }

// class _DetailsPageState extends State<DetailsPage> {
//   bool frontButtonClicked = false;
//   bool sideButtonClicked = false;
//   bool rearButtonClicked = false;
//   bool degreeButtonClicked = false;

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'BMW : M Sport',
//           style: TextStyle(
//             fontFamily: 'Montserrat-Regular',
//             color: Colors.black,
//           ),
//           textAlign: TextAlign.center,
//         ),
//         leading: IconButton(
//           icon: Image.asset(
//             'assets/icons/flecheSortie.png',
//             width: screenWidth * 0.05,
//             height: screenHeight * 0.05,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         actions: [
//           HeartButton(),
//         ],
//       ),
//       body: Column(
//         children: [
//           Stack(
//             children: [
//               Visibility(
//                 visible: frontButtonClicked,
//                 child: Container(
//                   child: Image.asset(
//                     'assets/images/BMW (2).png',
//                     width: screenWidth,
//                     height: screenHeight * 0.3,
//                   ),
//                 ),
//               ),
//               Visibility(
//                 visible: sideButtonClicked,
//                 child: Container(
//                   child: Image.asset(
//                     'assets/images/bmwSide.png',
//                     width: screenWidth,
//                     height: screenHeight * 0.3,
//                   ),
//                 ),
//               ),
//               Visibility(
//                 visible: rearButtonClicked,
//                 child: Container(
//                   child: Image.asset(
//                     'assets/images/bmwRear.png',
//                     width: screenWidth,
//                     height: screenHeight * 0.3,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: screenHeight * 0.01),
//           Padding(
//             padding: EdgeInsets.all(screenWidth * 0.05),
//             child: Row(
//               children: [
//                 _buildButton(
//                   'Front',
//                   frontButtonClicked,
//                   Colors.black,
//                   () {
//                     setState(() {
//                       frontButtonClicked = true;
//                       sideButtonClicked = false;
//                       rearButtonClicked = false;
//                       degreeButtonClicked = false;
//                     });
//                   },
//                 ),
//                 SizedBox(width: screenWidth * 0.02),
//                 _buildButton(
//                   'Side',
//                   sideButtonClicked,
//                   Colors.black,
//                   () {
//                     setState(() {
//                       frontButtonClicked = false;
//                       sideButtonClicked = true;
//                       rearButtonClicked = false;
//                       degreeButtonClicked = false;
//                     });
//                   },
//                 ),
//                 SizedBox(width: screenWidth * 0.02),
//                 _buildButton(
//                   'Rear',
//                   rearButtonClicked,
//                   Colors.black,
//                   () {
//                     setState(() {
//                       frontButtonClicked = false;
//                       sideButtonClicked = false;
//                       rearButtonClicked = true;
//                       degreeButtonClicked = false;
//                     });
//                   },
//                 ),
//                 SizedBox(width: screenWidth * 0.02),
//                 _buildButton(
//                   '360°',
//                   degreeButtonClicked,
//                   Colors.black,
//                   () {
//                     setState(() {
//                       frontButtonClicked = false;
//                       sideButtonClicked = false;
//                       rearButtonClicked = false;
//                       degreeButtonClicked = true;
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: screenHeight * 0.02),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
//             child: Row(
//               children: [
//                 const Expanded(
//                   child: RechercheCustom(
//                     hintText: 'Recherche une pièce de rechange',
//                   ),
//                 ),
//                 SizedBox(width: screenWidth * 0.02),
//                 Container(
//                   height: screenWidth * 0.14,
//                   width: screenWidth * 0.14,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: IconButton(
//                     icon: Image.asset(
//                       'assets/icons/filtre.png',
//                       width: 40,
//                     ),
//                     onPressed: () {
//                       showModalBottomSheet<void>(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return SizedBox(
//                             height: MediaQuery.of(context).size.height * 0.8,
//                             child: Padding(
//                               padding: EdgeInsets.all(
//                                   MediaQuery.of(context).size.width * 0.1),
//                               child: SingleChildScrollView(
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         const Text(
//                                           'Filtrer les pièces de rechange ',
//                                           style: TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 17,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                         IconButton(
//                                           onPressed: () {},
//                                           icon: const Icon(Icons.delete),
//                                           color: Colors.grey,
//                                         ),
//                                       ],
//                                     ),
//                                     const SizedBox(
//                                       height: 25,
//                                     ),
//                                     const ColumnTable(),
//                                     const SizedBox(
//                                       height: 25,
//                                     ),
//                                     Container(
//                                       width: MediaQuery.of(context).size.width,
//                                       child: MyButton(
//                                         text: 'Confirmer',
//                                         onTap: () {},
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         },
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: screenHeight * 0.05),
//           ListePiece(),
//         ],
//       ),
//     );
//   }

//   Widget _buildButton(
//     String text,
//     bool isClicked,
//     Color buttonColor,
//     VoidCallback onPressed,
//   ) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return Expanded(
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: const Color.fromARGB(255, 236, 232, 232)),
//           color: isClicked ? buttonColor : Colors.white,
//         ),
//         height: screenWidth * 0.1,
//         child: TextButton(
//           onPressed: onPressed,
//           child: Text(
//             text,
//             style: TextStyle(
//               fontSize: screenWidth * 0.04,
//               color: isClicked ? Colors.white : Colors.black,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'package:piecexpresspfe/pages/ListePiece.dart';
import 'package:piecexpresspfe/resuable_widgets/ColumnTable.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/buttonHeart.dart';
import 'package:piecexpresspfe/resuable_widgets/button_widget/mybutton.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';

import 'package:piecexpresspfe/resuable_widgets/rechercheCustom.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool frontButtonClicked = false;
  bool sideButtonClicked = false;
  bool rearButtonClicked = false;
  bool degreeButtonClicked = false;

  @override
  void initState() {
    super.initState();
    frontButtonClicked = true;
  }

  Widget _buildCarImage() {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    if (frontButtonClicked) {
      return Image.asset(
        'assets/images/BMW (2).png',
        width: screenWidth,
        height: screenHeight * 0.2,
      );
    } else if (sideButtonClicked) {
      return Image.asset(
        'assets/images/bmwSide.png',
        width: screenWidth,
        height: screenHeight * 0.2,
      );
    } else if (rearButtonClicked) {
      return Image.asset(
        'assets/images/bmwRear.png',
        width: screenWidth,
        height: screenHeight * 0.2,
      );
    } else if (degreeButtonClicked) {
      return SizedBox(
        width: screenWidth,
        height: screenHeight * 0.2,
        child: Flutter360Carousel(
          images: [
            'assets/images/360_image_1.jpg',
            'assets/images/360_image_2.jpg',
          ],
        ),
      );
    } else {
      return Image.asset(
        'assets/images/BMW (2).png',
        width: screenWidth,
        height: screenHeight * 0.3,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'BMW : M Sport',
          style: TextStyle(
              fontFamily: 'Montserrat-bold',
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18),
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/flecheSortie.png',
            width: screenWidth * 0.04,
            height: screenHeight * 0.04,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          HeartButton(),
        ],
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                frontButtonClicked = true;
                sideButtonClicked = false;
                rearButtonClicked = false;
                degreeButtonClicked = false;
              });
            },
            child: Stack(
              children: [
                _buildCarImage(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: Row(
              children: [
                _buildButton(
                  'Front',
                  frontButtonClicked,
                  Colors.black,
                  () {
                    setState(() {
                      frontButtonClicked = true;
                      sideButtonClicked = false;
                      rearButtonClicked = false;
                      degreeButtonClicked = false;
                    });
                  },
                ),
                SizedBox(width: screenWidth * 0.02),
                _buildButton(
                  'Side',
                  sideButtonClicked,
                  Colors.black,
                  () {
                    setState(() {
                      frontButtonClicked = false;
                      sideButtonClicked = true;
                      rearButtonClicked = false;
                      degreeButtonClicked = false;
                    });
                  },
                ),
                SizedBox(width: screenWidth * 0.02),
                _buildButton(
                  'Rear',
                  rearButtonClicked,
                  Colors.black,
                  () {
                    setState(() {
                      frontButtonClicked = false;
                      sideButtonClicked = false;
                      rearButtonClicked = true;
                      degreeButtonClicked = false;
                    });
                  },
                ),
                SizedBox(width: screenWidth * 0.02),
                _buildButton(
                  '360°',
                  degreeButtonClicked,
                  Colors.black,
                  () {
                    setState(() {
                      frontButtonClicked = false;
                      sideButtonClicked = false;
                      rearButtonClicked = false;
                      degreeButtonClicked = true;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Row(
              children: [
                const Expanded(
                  child: RechercheCustom(
                    hintText: 'Recherche une pièce de rechange',
                  ),
                ),
                SizedBox(width: screenWidth * 0.02),
                Container(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.12,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.tertiaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: Image.asset(
                      'assets/icons/edit.png',
                      width: 30,
                    ),
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.8,
                            child: Padding(
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width * 0.1),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Filtrer les pièces de rechange ',
                                          style: TextStyle(
                                              color: AppColors.primaryColor,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Image.asset(
                                            'assets/icons/remove.png',
                                            height: screenHeight * 0.02,
                                            width: screenWidth * 0.04,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const ColumnTable(),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: MyButton(
                                        text: 'Confirmer',
                                        onTap: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          ListePiece(),
        ],
      ),
    );
  }

  Widget _buildButton(
    String text,
    bool isClicked,
    Color buttonColor,
    VoidCallback onPressed,
  ) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.tertiaryColor,
          ),
          color: isClicked ? buttonColor : AppColors.secondaryColor,
        ),
        height: screenWidth * 0.13,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: screenWidth * 0.04,
              color: isClicked ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

Flutter360Carousel({required List<String> images}) {}
