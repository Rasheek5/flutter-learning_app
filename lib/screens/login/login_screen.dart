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
    return FractionallySizedBox(
      widthFactor: 1,
      child: Text(
        "Log in",
        style: TextStyle(
          color: ColorConstants.primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 28,
        ),
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

  Widget _renderOtherLoginOptionsCard(
    String label,
    String icon,
  ) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: ColorConstants.darkCerulean,
                width: 2.5,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: RenderSvgIcon(
              source: icon,
              height: 50,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }

  Widget _renderSubmitButton() {
    return SubmitButton(label: "Log In");
  }

  Widget _renderORText() {
    return const Text(
      "or",
    );
  }

  Widget _renderSignUpBtn() {
    return InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Don't have an Account? ",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 17,
            ),
          ),
          Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: ColorConstants.darkCerulean,
            ),
          )
        ],
      ),
    );
  }

  Widget _rendreFooterContent() {
    return Column(
      children: [
        _renderORText(),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _renderOtherLoginOptionsCard("Google", GoogleIcon),
            _renderOtherLoginOptionsCard("Apple", appleICON),
          ],
        ),
        const SizedBox(height: 30),
        SizedBox(
          child: _renderSignUpBtn(),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            child: Column(
              children: [
                _renderLoginText(),
                const SizedBox(height: 40),
                _renderEmailFieldText(),
                _renderPasswordFieldText(),
                _renderForgetPassword(),
                _renderSubmitButton(),
                const SizedBox(height: 40),
                _rendreFooterContent()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
