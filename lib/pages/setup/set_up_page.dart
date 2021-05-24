import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/providers/pages/set_up_page_provider.dart';
import 'package:shot_client/route.dart';
import 'package:shot_client/widgets/shot_page_container_decoration.dart';
import 'package:shot_client/widgets/space_box.dart';

class SetUpPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isLoading = useProvider(setUpPageProvider).isLoading;
    final form = useProvider(setUpPageProvider).formState;
    final shotIdFocusNode = useProvider(setUpPageProvider).shotIdFocusNode;

    final startSendShotId = () async {
      form.currentState!.save();
      context.read(setUpPageProvider.notifier).loadingStart();

      final currentUserAuthUid = context.read(setUpPageProvider.notifier).getCurrentUserAuthId();
      if (currentUserAuthUid == null) {
        Navigator.restorablePopAndPushNamed(context, RouteGenerator.signInPage);
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Sorry, the session is expired. Sign in and try again.")));
      } else {
        final createShotUserResult =
            await context.read(setUpPageProvider.notifier).createShotUser(authUid: currentUserAuthUid);
        createShotUserResult.when(
          success: (createdShotUser) {
            // TODO: Navigate to user(one-person) page
            // Navigator.popAndPushNamed(context, RouteGenerator.setUpPage);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${createdShotUser.shotId}")));
          },
          failure: (e) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${e.message}")));
          },
        );
      }
      context.read(setUpPageProvider.notifier).loadingEnd();
    };

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Shot",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: shotPageContainerDecoration,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Minimal set up",
                style: TextStyle(fontSize: 32),
              ),
              const SpaceBox.height(8),
              Text(
                "What can we call you?",
                style: TextStyle(fontSize: 12),
              ),
              Container(
                padding: EdgeInsets.all(40),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 400.0,
                  ),
                  child: Form(
                    key: form,
                    child: Column(
                      children: [
                        TextFormField(
                          enabled: !isLoading,
                          focusNode: shotIdFocusNode,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(labelText: 'Shot-ID'),
                          onSaved: (shotIdValue) {
                            context.read(setUpPageProvider.notifier).saveShotId(shotIdValue);
                          },
                          onFieldSubmitted: (_) async => await startSendShotId(),
                        ),
                        const SpaceBox.height(16),
                        TextButton(
                          onPressed: isLoading ? null : startSendShotId,
                          child: Text("Submit"),
                        ),
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: Column(
                            children: [
                              if (isLoading)
                                Expanded(
                                  child: CircularProgressIndicator(strokeWidth: 2),
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
