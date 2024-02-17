import 'package:atmtha_mobile/core/app_theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserNameField extends StatelessWidget {
  final TextEditingController controller;
  const UserNameField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        label: Text(
          "الاسم",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        contentPadding: REdgeInsets.all(10.0),
      ),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "قم بادخال الاسم";
        }
        return null;
      },
      controller: controller,
      obscureText: false,
    );
  }
}

class PhoneField extends StatelessWidget {
  String? _phoneValidation(value) {
    if (value!.isEmpty) {
      return "ادخل رقم الهاتف";
    }
    if (value.length != 10) {
      return "الرجاء إدخال رقم مكون من 10 أرقام";
    }
    return null;
  }

  final TextEditingController controller;
  const PhoneField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        label: Text(
          "رقم الهاتف",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        contentPadding: REdgeInsets.all(10.0),
      ),
      keyboardType: TextInputType.phone,
      validator: _phoneValidation,
      controller: controller,
      obscureText: false,
    );
  }
}

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  const PasswordField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  String? _passValidation(value) {
    if (value!.isEmpty) {
      return "ادخل كلمة المرور من فضلك";
    }
    if (value.length < 8) {
      return "كلمة المرور تحتوي على 8 احرف على الأقل";
    }
    return null;
  }

  bool? passwordVisible;

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: InputBorder.none,
        label: Text(
          "كلمة المرور",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            passwordVisible! ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              passwordVisible = !passwordVisible!;
            });
          },
        ),
        contentPadding: REdgeInsets.only(
          right: 20.0,
        ),
      ),
      keyboardType: TextInputType.visiblePassword,
      validator: _passValidation,
      controller: widget.controller,
      obscureText: !passwordVisible!,
    );
  }
}
class QrCodeInput extends StatelessWidget {
  const QrCodeInput({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          border: InputBorder.none,
          label: Text(
            "كود التفعيل",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          contentPadding: REdgeInsets.all( 10.0),
        ),
        keyboardType: TextInputType.text,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "قم بادخال الكود";
          }
          return null;
        },
        controller: controller,
        obscureText: false,
      ),
    );
  }
}


class SelectGender extends StatefulWidget {
  const SelectGender({Key? key}) : super(key: key);

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  @override
  Widget build(BuildContext context) {
    String? gender;
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Text("الجنس:", style: Theme.of(context).textTheme.titleSmall),
              SizedBox(
                width: 15.w,
              ),
              Expanded(
                child: RadioListTile(
                    title: Text(
                      "ذكر",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    value: "أنثى",
                    groupValue: gender,
                    hoverColor: lightColorScheme.primary,

                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
              ),
              Expanded(
                child: RadioListTile(
                    title: Text(
                      "أنثى",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    value: "ذكر",
                    activeColor: lightColorScheme.primary,
                    hoverColor: lightColorScheme.primary,
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value!;
                      });
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
