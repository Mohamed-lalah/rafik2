import 'package:flutter/cupertino.dart';

class Memories extends StatelessWidget {

  late String path;


  Memories({required this.path});

  @override
  Widget build(BuildContext context) {
   return ClipRRect(
     borderRadius: BorderRadius.circular(12),
     clipBehavior: Clip.hardEdge,
     child: Image.asset(path),
   );

  }
}
