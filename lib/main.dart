import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(title: Text("Dialog")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Show Dialog"),
                onPressed: () {
                  Get.defaultDialog(
                    title: "Dialog Title",
                    titleStyle: TextStyle(fontSize: 25),
                    middleText: "This is middle text",
                    middleTextStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.purple,
                    radius: 10,

                    // To customize the middle text
                    content: Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text("Data Loading"),
                        ),
                      ],
                    ),

                    // Default cancel and confirm action
                    textCancel: "Cancel",
                    cancelTextColor: Colors.white,
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.white,
                    onCancel: () {},
                    onConfirm: () {},
                    buttonColor: Colors.green,

                    // Customize the default cancel and confirm buttons
                    cancel: ElevatedButton(
                      child: Text("Cancel"),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    confirm: ElevatedButton(
                      child: Text("Confirm"),
                      onPressed: () {
                        Get.back();
                      },
                    ),

                    // Additional actions (optional)
                    actions: [
                      ElevatedButton(
                        child: Text("Action-1"),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      ElevatedButton(
                        child: Text("Action-2"),
                        onPressed: () {},
                      ),
                    ],
                    barrierDismissible: true,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
