import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import '../../assets/assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _renderLoginText() {
    return Text(
      "Log in",
      style: TextStyle(
        color: ColorConstants.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 28,
      ),
    );
  }

  Widget _renderEmailFieldText() {
    return Column(
      children: [
        TextfieldWithLabel(
          label: "Email",
          placeholder: "info@example.com",
          labelIcon: RenderSvgIcon(
            height: 20,
            width: 20,
            source: MESSAGE_SVG,
          ),
        )
      ],
    );
  }

  Widget _renderPasswordFieldText() {
    return Column(
      children: [
        TextfieldWithLabel(
          label: "Password",
          obscureText: true,
          labelIcon: RenderSvgIcon(
            height: 25,
            width: 25,
            source: PASSWORD_SVG,
          ),
        )
      ],
    );
  }

  Widget _renderForgetPassword() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Forget Passeord?",
              style: TextStyle(color: Colors.grey.shade700),
            ),
          )
        ],
      ),
    );
  }

  Widget _renderSubmitButton() {
    return SubmitButton(label: "Log In");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _renderLoginText(),
                const SizedBox(height: 40),
                _renderEmailFieldText(),
                _renderPasswordFieldText(),
                _renderForgetPassword(),
                _renderSubmitButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
