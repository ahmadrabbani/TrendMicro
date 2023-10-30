import 'package:trendmicrofrontend/presentation/get_started_screen/get_started_screen.dart';
import 'package:trendmicrofrontend/presentation/get_started_screen/binding/get_started_binding.dart';
import 'package:trendmicrofrontend/presentation/log_in_screen/log_in_screen.dart';
import 'package:trendmicrofrontend/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:trendmicrofrontend/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:trendmicrofrontend/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:trendmicrofrontend/presentation/home_screen/home_screen.dart';
import 'package:trendmicrofrontend/presentation/home_screen/binding/home_binding.dart';
import 'package:trendmicrofrontend/presentation/choose_file_screen/choose_file_screen.dart';
import 'package:trendmicrofrontend/presentation/choose_file_screen/binding/choose_file_binding.dart';
import 'package:trendmicrofrontend/presentation/scanning_your_file_screen/scanning_your_file_screen.dart';
import 'package:trendmicrofrontend/presentation/scanning_your_file_screen/binding/scanning_your_file_binding.dart';
import 'package:trendmicrofrontend/presentation/scanned_file_screen/scanned_file_screen.dart';
import 'package:trendmicrofrontend/presentation/scanned_file_screen/binding/scanned_file_binding.dart';
import 'package:trendmicrofrontend/presentation/scanned_file_one_screen/scanned_file_one_screen.dart';
import 'package:trendmicrofrontend/presentation/scanned_file_one_screen/binding/scanned_file_one_binding.dart';
import 'package:trendmicrofrontend/presentation/scanning_url_screen/scanning_url_screen.dart';
import 'package:trendmicrofrontend/presentation/scanning_url_screen/binding/scanning_url_binding.dart';
import 'package:trendmicrofrontend/presentation/scanned_url_one_screen/scanned_url_one_screen.dart';
import 'package:trendmicrofrontend/presentation/scanned_url_one_screen/binding/scanned_url_one_binding.dart';
import 'package:trendmicrofrontend/presentation/scanned_url_screen/scanned_url_screen.dart';
import 'package:trendmicrofrontend/presentation/scanned_url_screen/binding/scanned_url_binding.dart';
import 'package:trendmicrofrontend/presentation/summary_tab_container_screen/summary_tab_container_screen.dart';
import 'package:trendmicrofrontend/presentation/summary_tab_container_screen/binding/summary_tab_container_binding.dart';
import 'package:trendmicrofrontend/presentation/all_entries_screen/all_entries_screen.dart';
import 'package:trendmicrofrontend/presentation/all_entries_screen/binding/all_entries_binding.dart';
import 'package:trendmicrofrontend/presentation/all_entries_expanded_screen/all_entries_expanded_screen.dart';
import 'package:trendmicrofrontend/presentation/all_entries_expanded_screen/binding/all_entries_expanded_binding.dart';
import 'package:trendmicrofrontend/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:trendmicrofrontend/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String getStartedScreen = '/get_started_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homeScreen = '/home_screen';

  static const String chooseFileScreen = '/choose_file_screen';

  static const String scanningYourFileScreen = '/scanning_your_file_screen';

  static const String scannedFileScreen = '/scanned_file_screen';

  static const String scannedFileOneScreen = '/scanned_file_one_screen';

  static const String scanningUrlScreen = '/scanning_url_screen';

  static const String scannedUrlOneScreen = '/scanned_url_one_screen';

  static const String scannedUrlScreen = '/scanned_url_screen';

  static const String summaryPage = '/summary_page';

  static const String summaryTabContainerScreen =
      '/summary_tab_container_screen';

  static const String detectionPage = '/detection_page';

  static const String detailsPage = '/details_page';

  static const String allEntriesScreen = '/all_entries_screen';

  static const String allEntriesExpandedScreen = '/all_entries_expanded_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: getStartedScreen,
      page: () => GetStartedScreen(),
      bindings: [
        GetStartedBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: chooseFileScreen,
      page: () => ChooseFileScreen(),
      bindings: [
        ChooseFileBinding(),
      ],
    ),
    GetPage(
      name: scanningYourFileScreen,
      page: () => ScanningYourFileScreen(),
      bindings: [
        ScanningYourFileBinding(),
      ],
    ),
    GetPage(
      name: scannedFileScreen,
      page: () => ScannedFileScreen(),
      bindings: [
        ScannedFileBinding(),
      ],
    ),
    GetPage(
      name: scannedFileOneScreen,
      page: () => ScannedFileOneScreen(),
      bindings: [
        ScannedFileOneBinding(),
      ],
    ),
    GetPage(
      name: scanningUrlScreen,
      page: () => ScanningUrlScreen(),
      bindings: [
        ScanningUrlBinding(),
      ],
    ),
    GetPage(
      name: scannedUrlOneScreen,
      page: () => ScannedUrlOneScreen(),
      bindings: [
        ScannedUrlOneBinding(),
      ],
    ),
    GetPage(
      name: scannedUrlScreen,
      page: () => ScannedUrlScreen(),
      bindings: [
        ScannedUrlBinding(),
      ],
    ),
    GetPage(
      name: summaryTabContainerScreen,
      page: () => SummaryTabContainerScreen(),
      bindings: [
        SummaryTabContainerBinding(),
      ],
    ),
    GetPage(
      name: allEntriesScreen,
      page: () => AllEntriesScreen(),
      bindings: [
        AllEntriesBinding(),
      ],
    ),
    GetPage(
      name: allEntriesExpandedScreen,
      page: () => AllEntriesExpandedScreen(),
      bindings: [
        AllEntriesExpandedBinding(),
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
      page: () => GetStartedScreen(),
      bindings: [
        GetStartedBinding(),
      ],
    )
  ];
}
