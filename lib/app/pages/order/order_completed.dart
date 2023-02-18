import 'package:dw9_delivery_app/app/core/ui/helpers/size_extensions.dart';
import 'package:dw9_delivery_app/app/core/ui/styles/texts_styles.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_appbar.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class OrderCompleted extends StatelessWidget {
  const OrderCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: context.percentHeight(.2),
              ),
              Image.asset('assets/images/logo_rounded.png'),
              SizedBox(
                height: context.percentHeight(.07),
              ),
              Text(
                "Pedido realizado com sucesso, em breve você receberá a confirmação do seu pedido",
                textAlign: TextAlign.center,
                style: context.textStyles.textBold.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: context.percentHeight(.07),
              ),
              DeliveryButton(
                width: context.percentWidth(.80),
                label: 'Fechar',
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
