import 'package:flutter/material.dart';
import 'package:make_haton/features/practice/presentation/practice_choose_icon.dart';
import 'package:ui_kit/ui_kit.dart';

class PracticeChooseWord extends StatefulWidget {
  const PracticeChooseWord({super.key});

  @override
  State<PracticeChooseWord> createState() => _PracticeChooseWordState();
}

class _PracticeChooseWordState extends State<PracticeChooseWord> {
  List<String> words = ['book', 'newspaper', 'magazine', 'cow', 'red'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Practice',
      ),
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 64,
          ),
          Image.asset(UiKitAssets.icons.book.keyName),
          const SizedBox(
            height: 64,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'He promised to read the ',
                style: subtitle,
              ),
              Text('____'),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Wrap(
              children: words.map((word) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.border),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      word,
                      style: subtitle,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const Divider(
            color: AppColors.border,
          ),
          CheckButton(
              onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PracticeChooseIcon(),
                    ),
                  ),
              color: AppColors.border,
              title: 'Check',),
        ],
      ),
    );
  }
}
