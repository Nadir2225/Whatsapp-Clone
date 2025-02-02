import 'package:flutter/material.dart';

class Conversation extends StatelessWidget {
  final String name;
  final String imgUrl;

  const Conversation({
    super.key,
    required this.name,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            iconSize: 25.0,
            onPressed: () => Navigator.pop(context),
          ),
          leadingWidth: 40,
          titleSpacing: 0,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
                radius: 18,
              ),
              const SizedBox(width: 10),
              Text(name),
            ],
          ),
          actions: [
            Icon(Icons.phone),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Icon(Icons.more_vert)
          ],
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/wbg.jpg", // Your local asset
                fit: BoxFit.cover, // Ensures it covers the screen
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.ltr,
              bottom: 0.0,
              start: 0.0,
              end: 0.0,
              child: Container(
                height: 60,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                    Expanded(
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        child: SizedBox(
                            height: 50,
                            child: TextField(
                                maxLines: null,
                                cursorColor:
                                    Theme.of(context).colorScheme.secondary,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                      Icons.sentiment_satisfied_outlined,
                                      color:
                                          Color.fromARGB(255, 215, 215, 215)),
                                  suffixIcon: Icon(Icons.camera_alt,
                                      color:
                                          Color.fromARGB(255, 215, 215, 215)),
                                  hintText: 'Message',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 5.0,
                                      vertical:
                                          5.0), // Padding inside the text field
                                ))),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mic, color: Colors.white),
                      iconSize: 26,
                      color: Theme.of(context).colorScheme.secondary,
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(CircleBorder()),
                        padding: WidgetStateProperty.all(EdgeInsets.all(12)),
                        backgroundColor: WidgetStateProperty.all(
                            Theme.of(context).colorScheme.secondary),
                        foregroundColor: WidgetStateProperty.all(Colors.white),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
