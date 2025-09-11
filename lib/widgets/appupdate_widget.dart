import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<dynamic> updateDialog(BuildContext context, String updateLink) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
          title: Text('Update Available!'),
          content: Text(
              'A new app version is available.\nUpdate to get the latest features.'),
          actions: <Widget>[
            TextButton(
              child: Text('Update'),
              onPressed: () async {
                final url = Uri.parse(updateLink.trim());
                if (await canLaunchUrl(url)) {
                  launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Could not launch $updateLink'),
                    ),
                  );
                }
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            // You can enable the reject button if necessary by uncommenting
            // and updating the following section:
            /*
            TextButton(
              child: Text('Later'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            */
          ],
        ),
      );
    },
  );
}
