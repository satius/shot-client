import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotlin_flavor/scope_functions.dart';
import 'package:shot_client/providers/pages/sign_in_page_provider.dart';
import 'package:shot_client/widgets/shot_page_container_decoration.dart';
import 'package:shot_client/widgets/space_box.dart';

class SignInPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isLoading = useProvider(signInPageProvider).isLoading;
    final form = useProvider(signInPageProvider).formState;
    final emailFocusNode = useProvider(signInPageProvider).emailFocusNode;
    final passwordFocusNode = useProvider(signInPageProvider).passwordFocusNode;

    final startSignIn = () async {
      form.currentState!.save();
      context.read(signInPageProvider.notifier).loadingStart();
      final signInResult = await context.read(signInPageProvider.notifier).signIn();
      await signInResult.when(
        success: (authUid) async {
          final userShotIdResult =
              await context.read(signInPageProvider.notifier).fetchOnpPersonUserId(authUid: authUid);
          userShotIdResult.when(success: (String? shotId) {
            shotId?.let((it) {
                  // TODO
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(it)));
                }) ??
                run(() {
                  // TODO
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("not found")));
                });
          }, failure: (e2) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${e2.message}")));
          });
        },
        failure: (e) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${e.message}")));
        },
      );
      context.read(signInPageProvider.notifier).loadingEnd();
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
                "Sign in",
                style: TextStyle(fontSize: 32),
              ),
              const SpaceBox.height(8),
              Text(
                "Welcome back!",
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
                          focusNode: emailFocusNode,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(labelText: 'Email'),
                          onSaved: (emailValue) {
                            context.read(signInPageProvider.notifier).saveEmail(emailValue);
                          },
                          onFieldSubmitted: (_) {
                            FocusScope.of(context).requestFocus(passwordFocusNode);
                          },
                        ),
                        const SpaceBox.height(8),
                        TextFormField(
                          enabled: !isLoading,
                          focusNode: passwordFocusNode,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true,
                          onSaved: (passwordValue) {
                            context.read(signInPageProvider.notifier).savePassword(passwordValue);
                          },
                          onFieldSubmitted: isLoading ? null : (_) async => await startSignIn(),
                        ),
                        const SpaceBox.height(16),
                        TextButton(
                          onPressed: isLoading ? null : startSignIn,
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
                        const SpaceBox.height(32),
                        Text(
                          "Or are you new?",
                          style: TextStyle(fontSize: 12),
                        ),
                        TextButton(
                          onPressed: isLoading
                              ? null
                              : () async {
                                  // TODO: to sign up page
                                },
                          child: Text("Create an account"),
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
