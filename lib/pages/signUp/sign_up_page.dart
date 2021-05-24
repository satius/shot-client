import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shot_client/providers/pages/sign_up_page_provider.dart';
import 'package:shot_client/route.dart';
import 'package:shot_client/widgets/shot_page_container_decoration.dart';
import 'package:shot_client/widgets/space_box.dart';

class SignUpPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final isLoading = useProvider(signUpPageProvider).isLoading;
    final form = useProvider(signUpPageProvider).formState;
    final emailFocusNode = useProvider(signUpPageProvider).emailFocusNode;
    final passwordFocusNode = useProvider(signUpPageProvider).passwordFocusNode;

    final startSignUp = () async {
      form.currentState!.save();
      context.read(signUpPageProvider.notifier).loadingStart();

      final signUpResult = await context.read(signUpPageProvider.notifier).signUp();
      await signUpResult.when(
        success: (authUid) async {
          // TODO: Navigate to setup page
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$authUid TODO: Navigate to setup page")));
        },
        failure: (e) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${e.message}")));
        },
      );
      context.read(signUpPageProvider.notifier).loadingEnd();
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
                "Sign up",
                style: TextStyle(fontSize: 32),
              ),
              const SpaceBox.height(8),
              Text(
                "Welcome!",
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
                            context.read(signUpPageProvider.notifier).saveEmail(emailValue);
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
                            context.read(signUpPageProvider.notifier).savePassword(passwordValue);
                          },
                          onFieldSubmitted: isLoading ? null : (_) async => await startSignUp(),
                        ),
                        const SpaceBox.height(16),
                        TextButton(
                          onPressed: isLoading ? null : startSignUp,
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
                          "Do we know each other, sir?",
                          style: TextStyle(fontSize: 12),
                        ),
                        TextButton(
                          onPressed: isLoading
                              ? null
                              : () {
                                  Navigator.restorablePopAndPushNamed(context, RouteGenerator.signInPage);
                                },
                          child: Text("Use existing account"),
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
