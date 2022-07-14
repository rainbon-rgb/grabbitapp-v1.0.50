import 'package:grabbitapp/presentation/edit_details_screen/edit_details_screen.dart';
import 'package:grabbitapp/presentation/edit_details_screen/binding/edit_details_binding.dart';
import 'package:grabbitapp/presentation/quick_rabbit_generated_info_screen/quick_rabbit_generated_info_screen.dart';
import 'package:grabbitapp/presentation/quick_rabbit_generated_info_screen/binding/quick_rabbit_generated_info_binding.dart';
import 'package:grabbitapp/presentation/sell_a_rabbit_screen/sell_a_rabbit_screen.dart';
import 'package:grabbitapp/presentation/sell_a_rabbit_screen/binding/sell_a_rabbit_binding.dart';
import 'package:grabbitapp/presentation/check_cages_screen/check_cages_screen.dart';
import 'package:grabbitapp/presentation/check_cages_screen/binding/check_cages_binding.dart';
import 'package:grabbitapp/presentation/rabbit_details_for_meat_selling_screen/rabbit_details_for_meat_selling_screen.dart';
import 'package:grabbitapp/presentation/rabbit_details_for_meat_selling_screen/binding/rabbit_details_for_meat_selling_binding.dart';
import 'package:grabbitapp/presentation/selected_cage_screen/selected_cage_screen.dart';
import 'package:grabbitapp/presentation/selected_cage_screen/binding/selected_cage_binding.dart';
import 'package:grabbitapp/presentation/homepage_screen/homepage_screen.dart';
import 'package:grabbitapp/presentation/homepage_screen/binding/homepage_binding.dart';
import 'package:grabbitapp/presentation/scan_screen/scan_screen.dart';
import 'package:grabbitapp/presentation/scan_screen/binding/scan_binding.dart';
import 'package:grabbitapp/presentation/add_a_cage_screen/add_a_cage_screen.dart';
import 'package:grabbitapp/presentation/add_a_cage_screen/binding/add_a_cage_binding.dart';
import 'package:grabbitapp/presentation/rabbit_generated_info_screen/rabbit_generated_info_screen.dart';
import 'package:grabbitapp/presentation/rabbit_generated_info_screen/binding/rabbit_generated_info_binding.dart';
import 'package:grabbitapp/presentation/selected_rabbit_screen/selected_rabbit_screen.dart';
import 'package:grabbitapp/presentation/selected_rabbit_screen/binding/selected_rabbit_binding.dart';
import 'package:grabbitapp/presentation/qucikscan_screen/qucikscan_screen.dart';
import 'package:grabbitapp/presentation/qucikscan_screen/binding/qucikscan_binding.dart';
import 'package:grabbitapp/presentation/welcome_screen/welcome_screen.dart';
import 'package:grabbitapp/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:grabbitapp/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:grabbitapp/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String editDetailsScreen = '/edit_details_screen';

  static String quickRabbitGeneratedInfoScreen =
      '/quick_rabbit_generated_info_screen';

  static String sellARabbitScreen = '/sell_a_rabbit_screen';

  static String checkCagesScreen = '/check_cages_screen';

  static String rabbitDetailsForMeatSellingScreen =
      '/rabbit_details_for_meat_selling_screen';

  static String selectedCageScreen = '/selected_cage_screen';

  static String homepageScreen = '/homepage_screen';

  static String scanScreen = '/scan_screen';

  static String addACageScreen = '/add_a_cage_screen';

  static String rabbitGeneratedInfoScreen = '/rabbit_generated_info_screen';

  static String selectedRabbitScreen = '/selected_rabbit_screen';

  static String qucikscanScreen = '/qucikscan_screen';

  static String welcomeScreen = '/welcome_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: editDetailsScreen,
      page: () => EditDetailsScreen(),
      bindings: [
        EditDetailsBinding(),
      ],
    ),
    GetPage(
      name: quickRabbitGeneratedInfoScreen,
      page: () => QuickRabbitGeneratedInfoScreen(),
      bindings: [
        QuickRabbitGeneratedInfoBinding(),
      ],
    ),
    GetPage(
      name: sellARabbitScreen,
      page: () => SellARabbitScreen(),
      bindings: [
        SellARabbitBinding(),
      ],
    ),
    GetPage(
      name: checkCagesScreen,
      page: () => CheckCagesScreen(),
      bindings: [
        CheckCagesBinding(),
      ],
    ),
    GetPage(
      name: rabbitDetailsForMeatSellingScreen,
      page: () => RabbitDetailsForMeatSellingScreen(),
      bindings: [
        RabbitDetailsForMeatSellingBinding(),
      ],
    ),
    GetPage(
      name: selectedCageScreen,
      page: () => SelectedCageScreen(),
      bindings: [
        SelectedCageBinding(),
      ],
    ),
    GetPage(
      name: homepageScreen,
      page: () => HomepageScreen(),
      bindings: [
        HomepageBinding(),
      ],
    ),
    GetPage(
      name: scanScreen,
      page: () => ScanScreen(),
      bindings: [
        ScanBinding(),
      ],
    ),
    GetPage(
      name: addACageScreen,
      page: () => AddACageScreen(),
      bindings: [
        AddACageBinding(),
      ],
    ),
    GetPage(
      name: rabbitGeneratedInfoScreen,
      page: () => RabbitGeneratedInfoScreen(),
      bindings: [
        RabbitGeneratedInfoBinding(),
      ],
    ),
    GetPage(
      name: selectedRabbitScreen,
      page: () => SelectedRabbitScreen(),
      bindings: [
        SelectedRabbitBinding(),
      ],
    ),
    GetPage(
      name: qucikscanScreen,
      page: () => QucikscanScreen(),
      bindings: [
        QucikscanBinding(),
      ],
    ),
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    )
  ];
}
