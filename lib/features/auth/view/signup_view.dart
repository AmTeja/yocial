import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yocial/common/extensions.dart';
import 'package:yocial/features/auth/view/login_view.dart';
import 'package:yocial/features/auth/widgets/auth_field.dart';

/// Sign Up View of the app.
class SignUpView extends StatefulWidget {
  /// Creates a [SignUpView].
  const SignUpView({super.key});

  /// Returns the route to the [SignUpView].
  static MaterialPageRoute<void> route() =>
      MaterialPageRoute<void>(builder: (_) => const SignUpView());

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yocial'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AuthField(
                  controller: emailController,
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                AuthField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: context.textTheme.labelLarge,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account?',
                    style: context.textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: ' Login',
                        style: context.textTheme.labelLarge
                            ?.c(context.theme.colorScheme.tertiary),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.push(LoginView.route());
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
