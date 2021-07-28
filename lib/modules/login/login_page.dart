import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_list/modules/login/login_view_model.dart';

import '../../base/base_widget.dart';
import '../../component/input_field.dart';
import '../../component/primary_button.dart';
import '../../util/colors.dart';
import '../../util/text.dart';

class LoginPage extends BaseWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.focusScope?.unfocus();
      },
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, contraints) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: Get.width / 3,
                    child: Image.asset(assets.logo),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: Text.rich(
                      TextSpan(
                        text: 'O jeito mais fácil de ',
                        style: title.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: 'investir ',
                            style: TextStyle(
                              color: AppColors.primary,
                            ),
                          ),
                          TextSpan(
                            text: 'na Bolsa.',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: InputField(
                            label: 'CPF',
                            onChanged: viewModel?.setDocument,
                            inputMask: [
                              TextInputMask(
                                mask: '999.999.999-99',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          child: InputField(
                            label: 'Senha',
                            password: true,
                            onChanged: viewModel?.setPassword,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: PrimaryButton(
                      text: 'Entrar',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
