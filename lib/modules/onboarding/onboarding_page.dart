import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../base/base_widget.dart';
import '../../component/primary_button.dart';
import '../../component/secondary_button.dart';
import '../../component/stepper.dart';
import '../../util/colors.dart';
import '../../util/text.dart';
import 'onboarding_view_model.dart';

class OnboardingPage extends BaseWidget<OnboardingViewModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      return Container(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView(
                controller: viewModel?.pageController,
                children: pages,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        child: Obx(
                          () => StepperWidget(
                            currentPage: viewModel?.currentPage ?? 0,
                            pageLength: pages.length,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            PrimaryButton(
                              text: 'Abra sua conta grátis',
                              onPressed: () {},
                            ),
                            SecondaryButton(
                              text: 'Entrar',
                              onPressed: viewModel?.goToLogin,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }));
  }

  List<Widget> get pages => [
        firstPage,
        secondPage,
        thirdPage,
        fourthPage,
      ];

  Widget get firstPage => Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Olá!\nAgora você tem o jeito mais facil de investir na Bolsa.',
                style: title,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: SvgPicture.asset(assets.intro1),
            ),
          ],
        ),
      );

  Widget get secondPage => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: SvgPicture.asset(assets.intro2),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Corretagem Zero',
                style: title,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Text.rich(
                TextSpan(
                  style: paragraph,
                  text: 'Aproveite para investir com ',
                  children: [
                    TextSpan(
                      text: 'Corretagem Zero em qualquer tipo de ativo, ',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: 'inclusive da Bolsa.',
                    )
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );

  Widget get thirdPage => Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: SvgPicture.asset(assets.intro3),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Cashback em Fundos de Investimento',
                style: title,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: Text.rich(
                TextSpan(
                  style: paragraph,
                  text: 'Receba parte da taxa de administração, ',
                  children: [
                    TextSpan(
                      text: 'em dinheiro, direto na sua conta Toro.',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      );

  Widget get fourthPage => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: SvgPicture.asset(assets.intro4),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'E tem muito mais!',
                style: title,
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    checkItem('Recomendações de investimentos.'),
                    checkItem('Cursos do iniciante ao avançado.'),
                    checkItem('Invista sabendo quanto pode ganhar.'),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  Widget checkItem(String item) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Icon(
              Icons.check,
              color: AppColors.primary,
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            child: Text(
              item,
              style: paragraph,
            ),
          )
        ],
      );
}
