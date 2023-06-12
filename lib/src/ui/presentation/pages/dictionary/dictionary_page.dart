import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/shared/di.dart';
import 'package:make_haton/src/services/app_tts.dart';
import 'package:ui_kit/ui_kit.dart';


class Dictionary extends StatefulWidget {
  final List<String> titleList;
  final List<String> itemsList;

  const Dictionary({
    required this.titleList,
    required this.itemsList,
    super.key,
  });

  @override
  State<Dictionary> createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {

  @override
  Widget build(BuildContext context) {
    final localization = context.locale;
    final tts = getIt.get<AppTTS>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: DictionaryAppBar(
          onLeadingTapExit: () => Navigator.of(context).pop(),
          title: localization.dictionary,
          wordsCount: widget.itemsList.length,
          subtitle: localization.words,
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16.0),
        itemCount: widget.titleList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  Text(widget.titleList[index]),
                  const Expanded(
                    child: Divider(),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Wrap(
                      children: [
                        for (var item in widget.itemsList)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AppOutlinedButton.square(
                                  backgroundColor: AppColors.primary,
                                  child: Center(
                                    child: SvgPicture.asset(
                                      UiKitAssets.icons.icSpeach.keyName,
                                    ),
                                  ),
                                  onPressed: () {
                                    tts.speak(item);
                                  },
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(item),
                                const SizedBox(
                                  width: 16,
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
