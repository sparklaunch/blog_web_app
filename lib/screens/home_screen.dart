import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController webViewController = WebViewController()
    ..loadRequest(Uri.parse("https://blog.codefactory.ai"))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Code Factory"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                webViewController
                    .loadRequest(Uri.parse("https://blog.codefactory.ai"));
              },
              icon: const Icon(
                Icons.home,
              )),
          IconButton(
              onPressed: () {
                webViewController.goBack();
              },
              icon: const Icon(Icons.chevron_left))
        ],
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
    );
  }
}
