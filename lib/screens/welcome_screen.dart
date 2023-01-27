import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:user_auth_getx/controller/auth_controller.dart';
import 'package:user_auth_getx/screens/cart_screen.dart';
import 'package:user_auth_getx/screens/login_screen.dart';

class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var style = Theme.of(context);
    var headstyle =
        style.textTheme.displayMedium!.copyWith(color: Colors.black);
    var subheadstyle = style.textTheme.headlineSmall!
        .copyWith(color: Colors.grey, fontSize: 20);
    var btnstyle = style.textTheme.headlineSmall!.copyWith(color: Colors.white);

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('img/loginimg.png'), fit: BoxFit.cover),
            ),
          ),
          Container(
            width: w,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Welcome',
                style: headstyle,
              ),
              Text(
                email,
                style: subheadstyle,
              ),
              const Gap(40),
              Center(
                child: Column(
                  children: [
                    //sign out
                    InkWell(
                      onTap: () {
                        HapticFeedback.selectionClick();
                        AuthController.instance.logout();
                      },
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        width: w * 0.5,
                        height: h * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('img/loginbtn.png'))),
                        child: Center(
                            child: Text(
                          'Sign out',
                          style: btnstyle,
                        )),
                      ),
                    ),
                    const Gap(20),
                    // move to shopping cart
                    InkWell(
                      onTap: () {
                        HapticFeedback.selectionClick();
                        Get.to(() => const ShoppingCart());
                      },
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        width: w * 0.5,
                        height: h * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('img/loginbtn.png'))),
                        child: Center(
                            child: Text(
                          'Shopping cart',
                          style: btnstyle,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
