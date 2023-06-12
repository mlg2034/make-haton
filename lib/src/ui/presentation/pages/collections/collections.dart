import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localization/localization.dart';
import 'package:make_haton/features/lesson/presentation/ui/pages/lesson_preview_page.dart';
import 'package:ui_kit/ui_kit.dart';

import 'package:carousel_slider/carousel_slider.dart';

class Collections extends StatefulWidget {
  final List<Widget> titleList;
  final List<Widget> itemsList;

  const Collections({
    required this.titleList,
    required this.itemsList,
    super.key,
  });

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  @override
  Widget build(BuildContext context) {
    final localization = context.locale;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: DictionaryAppBar(
          onLeadingTapExit: () => Navigator.of(context).pop(),
          title: localization.collections,
          wordsCount: widget.itemsList.length,
          subtitle: localization.learned,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: CarouselSlider(
              items: widget.itemsList,
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 1,
                initialPage: 2,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 48)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.title,
                  width: 1,
                ),
              ),
              child: const Flexible(
                child: Center(
                  child: Text(
                    "Words that describe various transportation",
                    style: header_3,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: double.infinity,
            height: 20,
            child: CarouselSlider(
              items: widget.titleList,
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.3,
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Divider(),
          const SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LessonPreviewPage(),
                ),
              );
            },
            child: Container(
              width: 332,
              height: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 148, 255, 1),
                    Color.fromRGBO(0, 194, 255, 1),
                    Color.fromRGBO(0, 194, 255, 1),
                  ],
                ),
              ),
              child: Text(
                localization.learn,
                style: buttonTextTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
