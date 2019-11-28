import 'package:image_picker/image_picker.dart';

// Service used to manage Camera usage
class CameraService {
  // Take a picture
  Future takePicture() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    return picture;
  }

  // Get picture from gallery
  Future pictureFromGallery() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    return picture;
  }

  // Take a video
  Future takeVideo() async {
    var video = await ImagePicker.pickVideo(source: ImageSource.camera);
    return video;
  }

  // Get video from gallery
  Future videoFromGallery() async {
    var video = await ImagePicker.pickVideo(source: ImageSource.gallery);
    return video;
  }
}
