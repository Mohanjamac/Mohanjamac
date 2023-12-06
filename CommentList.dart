import 'package:flutter/material.dart';

class CommentList extends StatefulWidget {
  const CommentList({Key? key}) : super(key: key);

  @override
  State<CommentList> createState() => _CommentListState();
}

class _CommentListState extends State<CommentList> {
  final TextEditingController _commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context); // Close the bottom sheet
                  },
                ),
                Text(
                  'Comments',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 40.0), // Adjust as needed
              ],
            ),
          ),
          Divider(), // Add a divider for separation
          ListTile(
            leading: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/arabow.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text("mohamed jamac",
                style: TextStyle(color: Colors.black54)),
            subtitle: const Column(
              children: [
                Text(
                  "that is cool . nice job eng fidow",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "1d",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Replay",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite_border),
                const SizedBox(width: 4.0),
                const Text(
                  "97",
                ),
                const SizedBox(width: 16),
                Icon(Icons.thumb_down),
              ],
            ),
          ),

          ListTile(
            leading: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/dimcad.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text(" dimacad",
                style: TextStyle(color: Colors.black54)),
            subtitle: const Column(
              children: [
                Text(
                  "that is cool . nice job eng fidow",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "1d",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Replay",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite_border),
                const SizedBox(width: 4.0),
                const Text(
                  "97",
                ),
                const SizedBox(width: 16),
                Icon(Icons.thumb_down),
              ],
            ),
          ),

          ListTile(
            leading: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/nouh.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title:
                const Text("Eng farax", style: TextStyle(color: Colors.black54)),
            subtitle: const Column(
              children: [
                Text(
                  "that is cool . nice job eng fidow",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "1d",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Replay",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite_border),
                const SizedBox(width: 4.0),
                const Text(
                  "97",
                ),
                const SizedBox(width: 16),
                Icon(Icons.thumb_down),
              ],
            ),
          ),

          ListTile(
            leading: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/nouh.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title:
                const Text("Eng Nouh", style: TextStyle(color: Colors.black54)),
            subtitle: const Column(
              children: [
                Text(
                  "that is cool . nice job eng fidow",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "1d",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Replay",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                )
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite_border),
                const SizedBox(width: 4.0),
                const Text(
                  "97",
                ),
                const SizedBox(width: 16),
                Icon(Icons.thumb_down),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(8),
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: TextFormField(
                cursorColor: Colors.blue,
                maxLength: 20,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  hintText: 'Type something...',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    borderRadius: BorderRadius.circular(
                        15.0), // Adjust the radius as needed
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(
                        15.0), // Adjust the radius as needed
                  ),
                ),
              ),
            ),
          )
        ],
     ),
);
}
}