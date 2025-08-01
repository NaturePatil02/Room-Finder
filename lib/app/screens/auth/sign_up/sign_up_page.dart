import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:room_finder/app/routes/app_route_const.dart';
import 'package:room_finder/util/common/widgets/label_text_field.dart';
import 'package:room_finder/util/common/widgets/primary_button.dart';
import 'package:room_finder/util/theme/app_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailComtroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    Text(
                      "Create account and find The",
                      style: textTheme.displayMedium!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Dream Room or House",
                      style: textTheme.displayMedium!.copyWith(
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: 20),

                    _signInForm(),

                    SizedBox(height: 20),

                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).pop();
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Already have an Account? ",
                              style: textTheme.bodySmall!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: "SignIn",
                              style: textTheme.bodySmall!.copyWith(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 20),
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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              LabelTextField(
                label: "Name",
                hintText: "Enter FullName",
                controller: _nameController,
              ),
              SizedBox(height: 20),
              LabelTextField(
                label: "Phone",
                hintText: "Enter your Contact number",
                controller: _phoneController,
              ),
              SizedBox(height: 20),
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
                callBack: () {
                  GoRouter.of(
                    context,
                  ).pushNamed(AppRouteConst.roleBasedAccessPage);
                },
                label: "Sign Up",
                isLoading: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
