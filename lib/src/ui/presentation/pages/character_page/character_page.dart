import 'package:flutter/material.dart';
import 'package:make_haton/src/ui/presentation/pages/help_page/help_page.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:carousel_slider/carousel_slider.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({Key? key}) : super(key: key);

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  List<String> character = [
    'Colors',
    'Eyes',
    'Clothes',
    'Hats',
  ];
  List<SvgPicture> characterIcon = [
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CharacterAppBar(
        title: 'CHARACTER',
        onLeadingTapExit: () => Navigator.of(context).pop(),
        onLeadingTapHelp: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => HelpPage(),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 90,
          ),
          Center(
            child: SvgPicture.asset(
              UiKitAssets.images.icRobot.keyName,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 80,
            width: 177,
            decoration: BoxDecoration(
              color: AppColors.coinContainerColor,
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Row(
                children: [
                  SvgPicture.asset(
                    UiKitAssets.images.icCoin.keyName,
                    height: 42,
                    width: 22.46,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '1000',
                    style: coinsCountTextStyle,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: character.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 394,
                                width: 428,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 49,
                                    ),
                                    Text(
                                      'CLOTHES',
                                      style: characterTitleTextStyle,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Divider(),
                                    Expanded(child:ListView.builder(itemBuilder: (BuildContext context , int index){
                                      return Padding(padding: EdgeInsets.symmetric(horizontal: 24));
                                    }) )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 102,
                          height: 102,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.border),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding:const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                          child: characterIcon[index],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        character[index],
                        style: characterTextStyle,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
