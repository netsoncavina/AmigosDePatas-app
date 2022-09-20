import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String name;
  final String race;
  final String age;
  final String creator;
  final String owner;
  final String phoneNumber;
  final String localization;
  final String description;
  final String selectedFile;
  final DateTime createdAt;

  PostCard({
    required this.name,
    required this.race,
    required this.age,
    required this.creator,
    required this.owner,
    required this.phoneNumber,
    required this.localization,
    required this.description,
    required this.selectedFile,
    required this.createdAt,
  });
  @override
  Widget build(BuildContext context) {
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
          image: NetworkImage(selectedFile),
          // image: AssetImage(thumbnailUrl),
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
                      Text(owner),
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
                      Text(age),
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
