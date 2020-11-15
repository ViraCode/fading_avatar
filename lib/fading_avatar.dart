import 'package:flutter/material.dart';
import 'dart:math' as math;

class AvatarStack extends StatefulWidget {
  final ScrollController controller;
  final double top;
  final double left;
  final double radius;
  final double expandTimes;
  final Widget child;
  final bool reverse;
  final BoxBorder border;
  final ImageProvider image;

  const AvatarStack(
      {Key key,
      @required this.controller,
      this.top,
      this.left,
      this.radius = 60,
      this.reverse = false,
      this.expandTimes = 1,
      this.child,
      this.border,
      this.image})
      : super(key: key);

  @override
  _AvatarStackState createState() => _AvatarStackState();
}

class _AvatarStackState extends State<AvatarStack> {
  ScrollController controller;
  double offset = 0;
  @override
  void initState() {
    controller = widget.controller;
    controller.addListener(() {
      updater();
    });
    super.initState();
  }

  updater() {
    setState(() {
      offset = widget.reverse ? controller.offset * -1 : controller.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        Positioned(
          top: widget.top == null
              ? MediaQuery.of(context).size.height * 0.1 -
                  offset * widget.expandTimes
              : widget.top - offset * widget.expandTimes,
          left: widget.left == null
              ? MediaQuery.of(context).size.width * 0.08
              : widget.left,
          child: offset < 2 * widget.radius
              ? Container(
                  width: 2 * widget.radius,
                  height: widget.reverse
                      ? math.max(offset + 2 * widget.radius, 0)
                      : math.max(2 * widget.radius - offset, 0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: widget.border == null
                          ? Border.all(color: Colors.white, width: 1)
                          : widget.border,
                      image: DecorationImage(
                          image: widget.image == null
                              ? NetworkImage(
                                  "https://raw.githubusercontent.com/ViraCode/vira_design/master/assets/avatars/me.jpg")
                              : widget.image)),
                )
              : Text(""),
        ),
      ],
    );
  }
}
