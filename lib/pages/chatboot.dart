import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:piecexpresspfe/pages/panier.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';
import 'package:piecexpresspfe/resuable_widgets/screen_utils.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({Key? key}) : super(key: key);

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenSize.width(context);
    double screenHeight = ScreenSize.height(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/flecheSortie.png',
            width: screenWidth * 0.04,
            height: screenHeight * 0.04,
          ),
          onPressed: () {},
        ),
        scrolledUnderElevation: 0,
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
      body: Stack(
        children: [
          Positioned(
            top: 0.001,
            child: Container(
              width: screenWidth,
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/icons/chatbot.png',
                      width: screenWidth * 0.2,
                    ),
                  ),
                  const Text(
                    'PieceXpress Virtual Assitant ',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat-Bold ',
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                _itemChat(
                    avatar: 'assets/icons/chatbot.png',
                    chat: 0,
                    message: 'Can you help me with my order?',
                    time: '18:04'),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                _itemChat(
                    avatar: 'assets/images/yos.png',
                    chat: 1,
                    message: 'Hello, how can I help you?',
                    time: '18:05'),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                _itemChat(
                    avatar: 'assets/icons/chatbot.png',
                    chat: 0,
                    message: 'Can you help me with my order?',
                    time: '18:04'),
              ],
            ),
          ),
          Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: _inputArea(screenWidth, screenHeight)),
        ],
      ),
    );
  }

  Widget _itemChat({
    required String avatar,
    required int chat,
    required String message,
    required String time,
  }) {
    return Row(
      mainAxisAlignment:
          chat == 0 ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: chat == 0
          ? <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: const EdgeInsets.only(right: 4, left: 10),
                  child: CircleAvatar(
                    backgroundColor: AppColors.secondaryColor,
                    backgroundImage: AssetImage(avatar),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    message,
                    style: const TextStyle(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  time,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
            ]
          : <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  time,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    message,
                    style: const TextStyle(
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: const EdgeInsets.only(left: 0.1, right: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(avatar),
                  ),
                ),
              ),
            ],
    );
  }

  Widget _inputArea(double screenWidth, double screenHeight) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      color: AppColors.secondaryColor,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 45,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Type here to talk to PieceXpress...',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  filled: true,
                  fillColor: AppColors.tertiaryColor,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  suffixIcon: IconButton(
                    icon: Image.asset(
                      'assets/icons/send.png',
                      width: screenWidth * 0.04,
                      height: screenHeight * 0.04,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
