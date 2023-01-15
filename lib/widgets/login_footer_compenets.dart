import 'package:flutter/material.dart';
import 'package:learning_app/screens/screens.dart';
import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import '../../assets/assets.dart';
import '../models/models.dart';

class LoginFooter extends StatelessWidget {
  loginFooterType componentFor;

  LoginFooter({
    Key? key,
    required this.componentFor,
  }) : super(key: key);

  Widget _renderORText() {
    return const Text(
      "or",
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

  void _navigateToNextScreen(BuildContext context) {
    String navigateTo = componentFor == loginFooterType.login
        ? LoginScreen.routenName
        : SignInScreen.routeName;

    Navigator.of(context).pushReplacementNamed(navigateTo);
  }

  Widget _renderBottomBtn(BuildContext context) {
    return InkWell(
      onTap: () {
        _navigateToNextScreen(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            componentFor == loginFooterType.login
                ? "Don't have an Account?"
                : "Already have an Account?",
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 17,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            componentFor == loginFooterType.login ? "Sign Up" : 'Sign In',
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

  @override
  Widget build(BuildContext context) {
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
          child: _renderBottomBtn(context),
        )
      ],
    );
  }
}
