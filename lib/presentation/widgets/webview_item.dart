import 'dart:io';

import 'package:flutter/material.dart';

import 'package:zoom_widget/zoom_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewItem extends StatefulWidget {
  final String urlVideo;
  const WebViewItem({Key? key, required this.urlVideo}) : super(key: key);

  @override
  _WebViewItemState createState() => _WebViewItemState();
}

class _WebViewItemState extends State<WebViewItem> {
  WebViewController? _webController;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();

    // _controller = VideoPlayerController.network(widget.urlVideo);
  }

  @override
  void dispose() {
    // _controller.dispose();
    // chewieController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 380,
            color: Colors.transparent,
            child: Zoom(
              maxZoomWidth: 1800,
              maxZoomHeight: 1800,
              initZoom: 0.01,
              colorScrollBars: Colors.transparent,
              backgroundColor: Colors.transparent,
              child: WebView(
                onWebViewCreated: (WebViewController webViewController) {
                  _webController = webViewController;
                },
                onProgress: (process) {},
                zoomEnabled: true,
                initialUrl: widget.urlVideo,
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
