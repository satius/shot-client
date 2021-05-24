import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shot_client/providers/home/home_page_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotlin_flavor/scope_functions.dart';

class HomePageCheckBoxColumn extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isChecked = useProvider(homePageProvider).isChecked;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.thumb_up,
          color: isChecked ? Theme.of(context).accentColor : Colors.grey[500],
          size: 100.0,
        ),
        Checkbox(
          activeColor: Colors.blue,
          value: isChecked,
          onChanged: (isCheckedNow) {
            isCheckedNow?.let((it) {
              context.read(homePageProvider.notifier).switchCheck(it);
            });
          },
        ),
      ],
    );
  }
}
