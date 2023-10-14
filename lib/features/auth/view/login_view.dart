import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yocial/common/extensions.dart';
import 'package:yocial/features/auth/view/signup_view.dart';
import 'package:yocial/features/auth/widgets/auth_field.dart';

/// Login View of the app.
class LoginView extends StatefulWidget {
  /// Creates a [LoginView].
  const LoginView({super.key});

  /// Returns the route to the [LoginView].
  static MaterialPageRoute<void> route() =>
      MaterialPageRoute<void>(builder: (_) => const LoginView());

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                    text: "Don't have an account?",
                    style: context.textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: ' Sign up',
                        style: context.textTheme.labelLarge
                            ?.c(context.theme.colorScheme.tertiary),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.push(
                              SignUpView.route(),
                              avoidDuplicates: true,
                            );
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
