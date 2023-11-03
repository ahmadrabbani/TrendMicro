import 'package:device_info_plus/device_info_plus.dart';
import 'package:trendmicrofrontend/presentation/drawer_menu_draweritem/drawer_menu_draweritem.dart';

import 'controller/drive_controller.dart';
import 'package:flutter/material.dart';
import 'package:trendmicrofrontend/core/app_export.dart';
import 'package:trendmicrofrontend/widgets/custom_elevated_button.dart';
import 'package:trendmicrofrontend/widgets/custom_text_form_field.dart';

import 'package:trendmicrofrontend/widgets/app_bar/appbar_image.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:file_picker/file_picker.dart';


class HomeScreen extends GetWidget<DriveController> {
    // final controller =  DrawerMenuController(); // Assuming you have a controller
   GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();
   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return 
    
        Scaffold(
            key: _scaffoldKey,

          appBar: AppBar(
            
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 28.v,
            automaticallyImplyLeading: false,
            

            titleSpacing: 0,
            centerTitle: false,
              title: Text('My Home Screen'),
              leading: 
              AppbarImage(
                imagePath: '', // Provide the image path here
                svgPath: ImageConstant.imgMenu, // Provide the SVG path here
                // margin:'',
                height: 16.v,
                width: 16.h,
                onTap: () {
                  _scaffoldKey.currentState?.openDrawer();

                  print('AppbarImage tapped!');
                },
              ),
            ),
            drawer: DrawerMenuDraweritem(),
            resizeToAvoidBottomInset: false,
            body: Container(
                  
            ));
  }

  /// Navigates to the chooseFileScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the chooseFileScreen.
  navigateToChooseFile() async {
    requestPermissionMedia();
    requestPermissionStorage();
    
    // Get.toNamed(
    //   AppRoutes.chooseFileScreen,
    // );
  }
  Future<void> requestPermissionMedia() async {
    // Request external storage permission
  

    // Request media library permission
    bool permissionStatus;
final deviceInfo = await DeviceInfoPlugin().androidInfo;
    
if (deviceInfo.version.sdkInt > 32) {
    permissionStatus = await Permission.photos.request().isGranted;
} else {
    permissionStatus = await Permission.storage.request().isGranted;
}
try {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any, // You can specify the type of files you want to allow
    );
        print(result);
        if (result != null) {
          // Handle the selected file(s) here
          for (PlatformFile file in result.files) {
            print('File Name: ${file.name}');
            print('File Path: ${file.path}');
            print('File Size: ${file.size}');
          }
          Get.toNamed(
          AppRoutes.scanningYourFileScreen,
        );
        } else {
          Get.snackbar("Alert!!", " No File Selected");
          // User canceled the file selection
          // AlertDi
        }
      } catch (e) {
        // Handle errors, if any
        print('Error picking file: $e');
      }
  }

  Future<void> requestPermissionStorage() async {
    // Request external storage permission
  
    final storageStatus = await Permission.manageExternalStorage.request();
        if (storageStatus.isGranted) {
          
          // Permission granted, you can perform storage operations.
           
        } else {
          // Handle the case when the permission is denied.
          print("Permission not granted storage");
        }
  }





  /// Navigates to the scanningUrlScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the scanningUrlScreen.
  navigateToScanURL() {
    final url = controller.enteryoururlController.text;
    if(url !="" && isValidUrl(url)){
      Get.toNamed(
      AppRoutes.scanningUrlScreen,
    );
    }
    else
    {
      Get.snackbar("Error:", "Invalid URL!!");
    }
    
  }
  bool isValidUrl(String url) {
  final pattern = RegExp(
    r'^(http|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&:/~+#-]*[\w@?^=%&/~+#-])?$',
    caseSensitive: false,
    multiLine: false,
  );
  return pattern.hasMatch(url);
}

//   void showErrorDialog(BuildContext context, String errorMessage) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text('Error'),
//         content: Text(errorMessage),
//         actions: <Widget>[
//           FlatButton(
//             child: Text('OK'),
//             onPressed: () {
//               Navigator.of(context).pop(); // Close the dialog
//             },
//           ),
//         ],
//       );
//     },
//   );
// }
}
