import 'package:flutter/material.dart';
import 'package:flutter_structure/services/local/camera_service.dart';
import 'package:flutter_structure/widgets/screens/base_screen.dart';

// First screen of the application
class HomeScreen extends StatelessWidget {
  void camera() async {
    CameraService service = CameraService();
    var picture = await service.takePicture();
    print(picture);
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: 'Home Screen',
      child: Column(children: <Widget>[
        Expanded(
          child: Center(
            child: Text('Welcome in Flutter Structure'),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ]),
    );
  }
}
