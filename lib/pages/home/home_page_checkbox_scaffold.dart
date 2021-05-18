import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hola/providers/home/home_page_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePageCheckBoxColumn extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isChecked = useProvider(homePageProvider.state).isChecked;

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
            context.read(homePageProvider).switchCheck(isCheckedNow);
          },
        ),
      ],
    );
  }
}
