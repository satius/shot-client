import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/models/util/develop_util.dart';
import 'package:shot_client/providers/pages/redirect_page_provider.dart';
import 'package:shot_client/route.dart';
import 'package:shot_client/widgets/shot_page_container_decoration.dart';

class RedirectPage extends HookWidget {
  RedirectPage(this._destinationRouteName);

  final String? _destinationRouteName;

  @override
  Widget build(BuildContext context) {
    final navigateToNext = () async {
      if (DevelopUtil.isDebug()) {
        await Future.delayed(Duration(seconds: 1));
      }
      final finalizedRouteName = await context
          .read(redirectPageProvider.notifier)
          .createRouteNameFinalized(_destinationRouteName ?? RouteGenerator.homePage);
      print(_destinationRouteName);

      Navigator.popAndPushNamed(
        context,
        finalizedRouteName,
        arguments: RouteArguments(true),
      );
    };

    useEffect(
      () {
        WidgetsBinding.instance!.addPostFrameCallback((_) {
          navigateToNext();
        });
      },
      const [],
    );

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: shotPageContainerDecoration,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.1,
                child: Text(
                  "Shot",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 160),
                ),
              ),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
