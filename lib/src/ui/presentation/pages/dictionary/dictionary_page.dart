import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localization/localization.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:make_haton/src/ui/presentation/pages/help_page/help_page.dart';

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

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: DictionaryAppBar(
          onLeadingTapExit: () => Navigator.of(context).pop(),
          title: localization.dictionary,
          wordsCount: widget.itemsList.length,
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
                                  )),
                                  onPressed: () {},
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
