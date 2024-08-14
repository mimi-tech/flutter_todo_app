import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_app/commons/colors.dart';
import 'package:flutter_todo_app/photos/provider/photos_provider.dart';

@RoutePage()
class PhotoPage extends ConsumerWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photoAsyncValue = ref.watch(photoFutureProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Photos'),
      ),
      body: photoAsyncValue.when(
        data: (photos) => ListView.builder(
          itemCount: photos.length,
          itemBuilder: (context, index) {
            final photo = photos[index];
            return Column(
              children: [
                const SizedBox(height: 20,),
                ListTile(
                  leading: CachedNetworkImage(
                    imageUrl: photo.thumbnailUrl,
                    imageBuilder: (context, imageProvider) =>
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 5.0, color:Colors.transparent,),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                    //placeholder: (context, url) => CircularProgressIndicator(),
                    placeholder: (context, url) => Container(color: blueColor,width: 50.0,
                      height: 50.0,),
                    errorWidget: (context, url, error) =>
                        Container(color: blueColor,width: 50.0,
                          height: 50.0,),
                  ),
                  title: Text(photo.title),
                ),
              ],
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
