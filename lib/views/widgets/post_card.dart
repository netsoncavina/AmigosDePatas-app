import 'dart:ffi';
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  var name;
  var race;
  var age;
  var creator;
  var owner;
  var phoneNumber;
  var localization;
  var description;
  var selectedFile;
  var createdAt;

  PostCard({
    this.name,
    this.race,
    this.age,
    this.creator,
    this.owner,
    this.phoneNumber,
    this.localization,
    this.description,
    this.selectedFile,
    this.createdAt,
  });

  Image _displayImageMemory() {
    String base64Image = selectedFile;
    Uint8List bytes = base64Decode(base64Image);
    return Image.memory(bytes);
  }

  @override
  Widget build(BuildContext context) {
    var imageURL = base64Decode(selectedFile.substring(22));
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: const Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image: MemoryImage(imageURL),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            // ignore: sort_child_properties_last
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 19,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            alignment: Alignment.center,
          ),
          Align(
            // ignore: sort_child_properties_last
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person,
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color(0xffb38b6ff),
                        size: 18,
                      ),
                      const SizedBox(width: 7),
                      Text(creator),
                    ],
                  ),
                ),
              ],
            ),
            alignment: Alignment.topLeft,
          ),
          Align(
            // ignore: sort_child_properties_last
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color(0xffb38b6ff),
                        size: 18,
                      ),
                      const SizedBox(width: 7),
                      Text(localization),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.schedule,
                        // ignore: use_full_hex_values_for_flutter_colors
                        color: Color(0xffb38b6ff),
                        size: 18,
                      ),
                      const SizedBox(width: 7),
                      Text(age > 1 ? '$age anos' : '$age ano'),
                    ],
                  ),
                )
              ],
            ),
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}
