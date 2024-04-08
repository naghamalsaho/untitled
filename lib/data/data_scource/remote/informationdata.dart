import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:untitled/core/class/crud.dart';

class InformationData {
  Crud crud;
  InformationData(this.crud);

  Future<http.StreamedResponse?> postdata(
    String firstName,
    String lastName,
    String birthDate,
    String location,
    String skills,
    String certificates,
    String about,
    File? image,
  ) async {
    var uri = Uri.parse('http://192.168.25.98:8000/api/seeker/create');
    var request = http.MultipartRequest('POST', uri)
      ..fields['first_name'] = firstName
      ..fields['last_name'] = lastName
      ..fields['birth_day'] = birthDate
      ..fields['location'] = location
      ..fields['skills'] = skills
      ..fields['certificates'] = certificates
      ..fields['about'] = about;
    if (image != null) {
      request.files.add(await http.MultipartFile.fromPath(
        'image',
        image.path,
        filename: basename(image.path),
      ));
    }
    return await request.send().catchError((e) {
      print(e);
    });
  }
}
