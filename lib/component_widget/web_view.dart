import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final url;

  // ignore: use_key_in_widget_constructors
  const WebViewContainer(this.url);

  @override
  // ignore: no_logic_in_create_state
  createState() => _WebViewContainerState(url);
}

class _WebViewContainerState extends State<WebViewContainer> {
  // ignore: prefer_typing_uninitialized_variables
  final _url;
  final _key = UniqueKey();

  _WebViewContainerState(this._url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _url))
          ],
        ));
  }
}
