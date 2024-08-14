import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/photos/model/photo/photo.dart';
import 'package:flutter_todo_app/photos/repository/photo_repository.dart';
import 'package:flutter_todo_app/utils/api_status.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;



final photoRepositoryProvider = Provider<PhotoRepository>((ref) {
  return PhotoRepository();
});

final photoFutureProvider = FutureProvider<List<Photo>>((ref) async {
  final repository = ref.watch(photoRepositoryProvider);
  return repository.getPhotos();
});

class PhotoRepository {
  final PhotoService _photoService = PhotoService();

  Future<List<Photo>> getPhotos() async {
    final prefs = await SharedPreferences.getInstance();
    //final isConnected = await _checkNetworkConnection();

    // if(!isConnected){

    //   return _fetchLocalPhotos(prefs);
    // }

    final response = await _photoService.fetchPhotos();
    if(response is Success){
      List<dynamic> jsonData = response.data!;
      final photos = jsonData.map((json) => Photo.fromJson((json))).toList();
      await _storePhotosLocally(photos.take(20).toList());
      return photos;
    }
    if(response is Failure){
     //instead of calling on the connectivity plugin. I leveraged on the socketException of Http which checks for internet connectivity
      return _fetchLocalPhotos(prefs);
    }
    return [];
  }

  Future<void> _storePhotosLocally(List<Photo> photos) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonPhotos = photoToJson(photos);
    await prefs.setString('photos', jsonPhotos);
  }

  List<Photo> _fetchLocalPhotos(SharedPreferences prefs) {
    final jsonPhotos = prefs.getString('photos');
    if (jsonPhotos != null) {
      return photoFromJson(jsonPhotos);
    } else {
      return [];
    }
  }

  Future<bool> _checkNetworkConnection() async {
    try {
      final result = await http.get(Uri.parse('https://www.google.com'));
      print("888888");
      return result.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}
