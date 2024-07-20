import 'package:allen/feature_box.dart';
import 'package:allen/pallet.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Allen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //assistant image
          Stack(
            children: [
              Center(
                child: Container(
                  height: 90,
                  width: 90,
                  margin: const EdgeInsets.only(top: 4.0),
                  decoration: const BoxDecoration(
                      color: Pallete.assistantCircleColor,
                      shape: BoxShape.circle),
                ),
              ),
              Container(
                  height: 93,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/virtualAssistant.png'))))
            ],
          ),
          //chat bubble
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            margin:
                const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Pallete.borderColor),
                borderRadius:
                    BorderRadius.circular(16).copyWith(topLeft: Radius.zero)),
            child: const Padding(
              padding: EdgeInsets.all(7.0),
              child: Text(
                'Good Morning , What can I do for you ?',
                style: TextStyle(
                    color: Pallete.mainFontColor,
                    fontSize: 19,
                    fontFamily: 'Cera Pro'),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(top: 10, left: 22),
            child: const Text(
              'Here are a few features ..',
              style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //features list
          const Column(
            children: [
              FeatureBox(
                color: Pallete.firstSuggestionBoxColor,
                headerText: 'Gemini',
                descText:
                    ' A smarter way to stay informed and organised with Gemini',
              ),
              FeatureBox(
                  color: Pallete.secondSuggestionBoxColor,
                  headerText: 'AI Image Generation',
                  descText:
                      'Get inspired and stay creative with your personal assitant .'),
              FeatureBox(
                  color: Pallete.thirdSuggestionBoxColor,
                  headerText: 'Smart Voice Assistant',
                  descText:
                      'Get the best of both worlds with a voice assistant .')
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
    );
  }
}
