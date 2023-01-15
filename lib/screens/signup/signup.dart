import 'package:flutter/material.dart';
import 'package:learning_app/assets/assets.dart';
import '../../widgets/widgets.dart';
import '../../constants/constants.dart';
import '../../models/models.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Widget _renderSignInText() {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Text(
        "Sign up",
        style: TextStyle(
          color: ColorConstants.primaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 28,
        ),
      ),
    );
  }

  Widget _renderUserNameTextField() {
    return TextfieldWithLabel(
      label: "Name",
      labelIcon: RenderSvgIcon(
        source: avatarIcon,
      ),
    );
  }

  Widget _renderEmailTextField() {
    return TextfieldWithLabel(
      label: "Email",
      labelIcon: RenderSvgIcon(
        source: MESSAGE_SVG,
      ),
    );
  }

  Widget _renderPasswordTextField() {
    return TextfieldWithLabel(
      label: "Password",
      labelIcon: RenderSvgIcon(
        source: PASSWORD_SVG,
        height: 25,
      ),
      obscureText: true,
    );
  }

  Widget Spacer = const SizedBox(
    height: 30,
  );

  Widget _renderSubmitBtn() {
    return SubmitButton(label: "Sign In");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 30,
              right: 30,
            ),
            child: Column(
              children: [
                Spacer,
                _renderSignInText(),
                Spacer,
                _renderUserNameTextField(),
                _renderEmailTextField(),
                _renderPasswordTextField(),
                Spacer,
                _renderSubmitBtn(),
                Spacer,
                LoginFooter(componentFor: loginFooterType.signIn),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
