import 'package:flutter/material.dart';

appSearchBar(context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(142),
    child: Material(
      elevation: 1,
      
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 98, 16, 16),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
            SizedBox(width: 16),
            Text(
              "Seach topics",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
