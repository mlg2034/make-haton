import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:make_haton/features/auth/ui/bloc/auth_bloc.dart';
import 'package:make_haton/features/character/data/repositories/character_respository.dart';
import 'package:make_haton/src/ui/presentation/pages/help_page/help_page.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CharacterPage extends StatefulWidget {
  final double size = 180;
  final Widget? robot;

  const CharacterPage({Key? key, this.robot}) : super(key: key);

  @override
  State<CharacterPage> createState() => CharacterPageState();
}

class CharacterPageState extends State<CharacterPage> {
  final optionRepo = CharacterRepository();
  static const color = 'Color';
  static const hats = 'Hats';
  static const clothes = 'Clothes';
  static const eyes = 'Eyes';
  Map<String, dynamic> selectedOptions = {
    color: null,
    hats: UiKitAssets.customizations.none1.keyName,
    clothes: UiKitAssets.customizations.none1.keyName,
    eyes: UiKitAssets.customizations.eyesDefault.keyName,
  };

  String? getKeyFromValue(Map<String, String> map, String? value) {
    for (var entry in map.entries) {
      if (entry.value == value) {
        return entry.key;
      }
    }

    return null;
  }

  Color? getColor() {
    String? valueToFind = selectedOptions[color];
    String? key = getKeyFromValue(optionRepo.colorMap, valueToFind);
    if (key == 'Blue') {
      return Colors.blue;
    } else if (key == 'Red') {
      return Colors.red;
    } else if (key == 'Green') {
      return Colors.green;
    } else if (key == 'Yellow') {
      return Colors.yellow;
    } else if (key == 'Purple') {
      return Colors.purple;
    }

    return null;
  }

  Widget robot (color, clothColor, hatColor){
    return SizedBox(
      height: 400,
      width: 250,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          SvgPicture.asset(
            UiKitAssets.images.icRobot.keyName,
            colorFilter: ColorFilter.mode(color, BlendMode.darken),
          ),
          Positioned(
            bottom: 0,
            child: SvgPicture.asset(
              selectedOptions[clothes],
              height: 250,
              color: clothColor,
            ),
          ),
          Positioned(
            left: 75,
            top: 0,
            child: SvgPicture.asset(
              selectedOptions[hats],
              height: 100,
              color: hatColor,
            ),
          ),
          Positioned(
            left: 35,
            top: 50,
            child: SvgPicture.asset(
              selectedOptions[eyes],
              width: 180,
              colorFilter: ColorFilter.mode(color, BlendMode.darken),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = context.read<AuthBloc>().state;
    final user = state
        .map(
          authorized: (user) => user,
          unauthorized: (user) => user,
          loading: (user) => user,
          error: (user) => user,
        )
        .userEntity;

    final color = getColor() ?? Colors.transparent;
    final clothColor = selectedOptions[clothes] == UiKitAssets.customizations.none1.keyName? Colors.transparent:null;
    final hatColor = selectedOptions[hats] == UiKitAssets.customizations.none1.keyName? Colors.transparent:null;

    return WillPopScope(
      onWillPop: () async{
        Navigator.of(context).pop(robot(color, clothColor, hatColor ));

        return true;
      },
      child: Scaffold(
        appBar: CharacterAppBar(
          title: 'CHARACTER',
          onLeadingTapExit: () => Navigator.of(context).pop(robot(color, clothColor, hatColor )),
          onLeadingTapHelp: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HelpPage(),
            ),
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            final size = MediaQuery.of(context).size;

            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: size.height*0.5,maxHeight: size.height+100, maxWidth:  size.width),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                      height: 400,
                      width: 250,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          SvgPicture.asset(
                            UiKitAssets.images.icRobot.keyName,
                            colorFilter: ColorFilter.mode(color, BlendMode.darken),
                          ),
                          Positioned(
                            bottom: 0,
                            child: SvgPicture.asset(
                              selectedOptions[clothes],
                              height: 250,
                              color: clothColor,
                            ),
                          ),
                          Positioned(
                            left: 75,
                            top: 0,
                            child: SvgPicture.asset(
                              selectedOptions[hats],
                              height: 100,
                              color: hatColor,
                            ),
                          ),
                          Positioned(
                            left: 35,
                            top: 50,
                            child: SvgPicture.asset(
                              selectedOptions[eyes],
                              width: 180,
                              colorFilter: ColorFilter.mode(color, BlendMode.darken),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // height: 80,
                      width: 177,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryInactive,
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
                              user.coins.toString(),
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
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: optionRepo.optionMap.length,
                        itemBuilder: (BuildContext context, int itemIndex) {
                          final item = optionRepo.optionMap.keys.elementAt(itemIndex);
                          final category = optionRepo.optionMapDetailed[item]!;
                          final optionItems = category.values;

                          return GestureDetector(
                            onTap: () => test(itemIndex, item, optionItems, category),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                              child: Column(
                                children: [
                                  Container(
                                    width: 102,
                                    height: 102,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: AppColors.border),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                                    child: SvgPicture.asset(optionRepo.optionMap.values.elementAt(itemIndex)),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    optionRepo.optionMap.keys.elementAt(itemIndex),
                                    style: characterTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  test(int itemIndex, String item, optionItems, Map<String, dynamic> category) async {

    final newItem = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          width: 428,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 49,
              ),
              Text(
                item,
                style: characterTitleTextStyle,
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (final w in optionItems)
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(w);
                      },
                      child: SvgPicture.asset(w),
                    ),
                ],
              ),
              const SizedBox(
                height: 64,
              ),
            ],
          ),
        );
      },
    );
   if(newItem!=null){
     selectedOptions[optionRepo.optionMap.keys.elementAt(itemIndex)] = newItem;

         setState(() {});
   }

  }
}
