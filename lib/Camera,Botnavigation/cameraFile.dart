import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_one/AppUtils/Utils.dart';

import '../AppColors/AllColors.dart';

class ImagePickerPage extends StatefulWidget {
  @override
  _ImagePickerPageState createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _takePicture() async {
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.camera);
    // Add your logic to handle the taken picture
  }

  Future<void> _pickImage() async {
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.gallery);
    // Add your logic to handle the picked image
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appUser(blueColor900),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text_one('Identify Verification', TextStyle(fontWeight: xBold, fontSize: headingFontSize)),
                text_one('Take or upload photo', TextStyle(fontWeight: normal, fontSize: labelSize)),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _takePicture,
                  child: Text('Take Picture'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _pickImage,
                  child: Text('Pick from Gallery'),
                ),
              ],
            ),
          ),
          Spacer(),
          buttonuser('Continue',accountdone),
        ],

      ),


    );


  }
}
