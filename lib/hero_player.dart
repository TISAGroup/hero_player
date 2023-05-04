import 'package:hero_player/utils/utils.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class HeroPlayer extends StatefulWidget {
  final String publicKey;
  final String idPlayer;
  final bool autoPlay;
  final double width;
  final double height;
  final HeroType type;
  const HeroPlayer({
    Key? key,
    required this.publicKey,
    required this.idPlayer,
    this.autoPlay = true,
    this.width = double.infinity,
    this.height = 300.0,
    this.type = HeroType.web,
  }) : super(key: key);

  @override
  State<HeroPlayer> createState() => _HeroPlayerState();
}

class _HeroPlayerState extends State<HeroPlayer> {
  @override
  Widget build(BuildContext context) {
    final url = Uri.parse('https://embed.mls.mycujoo.tv/player/${widget.idPlayer}?autoplay=${widget.autoPlay}&publicKey=${widget.publicKey}');
    final controller = WebViewController()
      ..loadRequest(url)
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    return Container(
      width: widget.width,
      height: widget.height,
      color: Colors.black,
      child: WebViewWidget(controller: controller),
    );
  }
}
