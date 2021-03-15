import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Creates a cross-fade animation hover widget.
///
/// The [duration] of the animation is the same for all components (fade in,
/// fade out, and size), and you can pass [Interval]s instead of [Curve]s in
/// order to have finer control, e.g., creating an overlap between the fades.
///
/// All the arguments other than [key] must be non-null.
class HoverCrossFadeWidget extends StatefulWidget {
  final MouseCursor cursor;
  final Widget firstChild;
  final Widget secondChild;
  final Duration duration;
  final Curve firstCurve;
  final Curve secondCurve;
  final Curve sizeCurve;
  final Duration? reverseDuration;
  final AlignmentGeometry alignmentry;

  HoverCrossFadeWidget({
    Key? key,
    this.cursor = SystemMouseCursors.basic,
    required this.firstChild,
    required this.secondChild,
    required this.duration,
    this.alignmentry = Alignment.center,
    this.firstCurve = Curves.linear,
    this.reverseDuration,
    this.secondCurve = Curves.linear,
    this.sizeCurve = Curves.linear,
  }) : super(key: key);

  @override
  _HoverCrossFadeWidgetState createState() => _HoverCrossFadeWidgetState();
}

class _HoverCrossFadeWidgetState extends State<HoverCrossFadeWidget> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (event) {
          setState(() {
            _isHover = true;
          });
        },
        cursor: widget.cursor,
        onExit: (event) {
          setState(() {
            _isHover = false;
          });
        },
        child: AnimatedCrossFade(
          firstChild: widget.firstChild,
          secondChild: widget.secondChild,
          crossFadeState:
              _isHover ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          duration: widget.duration,
          reverseDuration: widget.reverseDuration,
          firstCurve: widget.firstCurve,
          secondCurve: widget.secondCurve,
          sizeCurve: widget.sizeCurve,
          alignment: widget.alignmentry,
        ));
  }
}
