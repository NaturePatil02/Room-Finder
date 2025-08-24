import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:room_finder/app/routes/app_route_const.dart';
import 'package:room_finder/util/common/widgets/label_text_field.dart';
import 'package:room_finder/util/common/widgets/primary_button.dart';
import 'package:room_finder/util/constants/string_const.dart';
import 'package:room_finder/util/theme/app_colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailComtroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.primaryColor, AppColors.secondaryColor],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Icon(Icons.login, size: 40, color: Colors.white),
                    Text(
                      StringConst.welcomeBack,
                      style: textTheme.displayMedium!.copyWith(
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 20),

                    _signInForm(),

                    SizedBox(height: 20),

                    GestureDetector(
                      onTap: () {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRouteConst.signUpPage);
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: StringConst.dontHaveAnAccount,
                              style: textTheme.bodySmall!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: "SignUp",
                              style: textTheme.bodySmall!.copyWith(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _signInForm() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            LabelTextField(
              label: "Email",
              hintText: "Enter your email",
              controller: _emailComtroller,
            ),
            SizedBox(height: 20),
            LabelTextField(
              label: "Password",
              hintText: "Enter your password",
              controller: _passwordController,
            ),
            SizedBox(height: 30),
            PrimaryButton(
              callBack: () {},
              label: StringConst.login,
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }
}
