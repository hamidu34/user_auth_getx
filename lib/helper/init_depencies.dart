import 'package:get/get.dart';
import 'package:user_auth_getx/controller/tapcontroller.dart';

class InitDep implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TapController());
  }
}
