import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPasswordWidget extends StatefulWidget {
  const EmailAndPasswordWidget({super.key});

  @override
  State<EmailAndPasswordWidget> createState() => _EmailAndPasswordWidgetState();
}

class _EmailAndPasswordWidgetState extends State<EmailAndPasswordWidget> {
  late TextEditingController passwordController;
  bool isObsecureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  !AppRegex.isEmailValid(value) ||
                  value.isEmpty) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'PassWord',
            isObscureText: isObsecureText,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObsecureText = !isObsecureText;
                });
              },
              child: Icon(
                  isObsecureText ? Icons.visibility_off : Icons.visibility),
            ),
          ),
          verticalSpace(24),
          PasswordValidation(
            hasUppercase: hasUppercase,
            hasLowercase: hasLowercase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacters,
            hasMinLength: hasMinLength,
          )
        ],
      ),
    );
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }
}
