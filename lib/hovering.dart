library hovering;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: must_be_immutable
class HoverContainer extends StatefulWidget {
  final AlignmentGeometry alignment;
  final AlignmentGeometry hoveraAlignment;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry hoverPadding;
  final Color color;
  final Color hoverColor;
  final Decoration decoration;
  final Decoration hoverDecoration;
  final Decoration foregroundDecoration;
  final Decoration hoverForegroundDecoration;
  final double width;
  double hoverWidth;
  final double height;
  double hoverHeight;
  final BoxConstraints constraints;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry hoverMargin;
  final Matrix4 transform;
  final Matrix4 hoverTransform;
  final Widget child;
  final Clip clipBehavior;
  final MouseCursor cursor;
  HoverContainer(
      {Key key,
      this.alignment,
      this.hoveraAlignment,
      this.color,
      this.hoverColor,
      this.width,
      this.hoverWidth,
      this.height,
      this.hoverHeight,
      this.decoration,
      this.hoverDecoration,
      this.foregroundDecoration,
      this.hoverForegroundDecoration,
      this.child,
      this.clipBehavior = Clip.none,
      this.constraints,
      this.margin,
      this.hoverMargin,
      this.padding,
      this.hoverPadding,
      this.transform,
      this.cursor = SystemMouseCursors.basic,
      this.hoverTransform})
      : assert(margin == null || margin.isNonNegative),
        assert(hoverMargin == null || hoverMargin.isNonNegative),
        assert(padding == null || padding.isNonNegative),
        assert(hoverPadding == null || hoverPadding.isNonNegative),
        assert(decoration == null || decoration.debugAssertIsValid()),
        assert(hoverDecoration == null || hoverDecoration.debugAssertIsValid()),
        assert(constraints == null || constraints.debugAssertIsValid()),
        assert(clipBehavior != null),
        assert(
            color == null || decoration == null || hoverDecoration == null,
            'Cannot provide both a color and a decoration\n'
            'To provide both, use "decoration: BoxDecoration(color: color)".'),
        assert(
            hoverColor == null || decoration == null || hoverDecoration == null,
            'Cannot provide both a hoverColor and a hoverDecoration\n'
            'To provide both, use "decoration: BoxDecoration(color: color) and hoverDecoration: BoxDecoration(color: color)".'),
        super(key: key);
  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  @override
  void initState() {
    if (widget.hoverHeight == null) widget.hoverHeight = widget.height;
    if (widget.hoverWidth == null) widget.hoverWidth = widget.hoverHeight;
    super.initState();
  }

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
      child: Container(
        key: widget.key,
        width: _isHover ? widget.hoverWidth : widget.width,
        height: _isHover ? widget.hoverHeight : widget.height,
        alignment: _isHover ? widget.hoveraAlignment : widget.alignment,
        padding: _isHover ? widget.hoverPadding : widget.padding,
        color: _isHover ? widget.hoverColor : widget.color,
        decoration: _isHover ? widget.hoverDecoration : widget.decoration,
        foregroundDecoration: _isHover
            ? widget.hoverForegroundDecoration
            : widget.foregroundDecoration,
        clipBehavior: widget.clipBehavior,
        constraints: widget.constraints,
        child: widget.child,
      ),
    );
  }
}

class HoverCrossFadeWidget extends StatefulWidget {
  final MouseCursor cursor;
  final Widget firstChild;
  final Widget secondChild;
  final Duration duration;
  final Curve firstCurve;
  final Curve secondCurve;
  final Curve sizeCurve;
  final Duration reverseDuration;
  final AlignmentGeometry alignmentry;

  HoverCrossFadeWidget({
    Key key,
    this.cursor = SystemMouseCursors.basic,
    @required this.firstChild,
    @required this.secondChild,
    @required this.duration,
    this.alignmentry = Alignment.center,
    this.firstCurve = Curves.linear,
    this.reverseDuration,
    this.secondCurve = Curves.linear,
    this.sizeCurve = Curves.linear,
  })  : assert(firstChild != null && secondChild != null && duration != null,
            'These are required fields.'),
        super(key: key);

  @override
  _HoverCrossFadeWidgetState createState() => _HoverCrossFadeWidgetState();
}

class _HoverCrossFadeWidgetState extends State<HoverCrossFadeWidget> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (event) {
          //print(event.timeStamp);
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

class HoverWidget extends StatefulWidget {
  final Widget child;
  final Widget hoverChild;
  final Function(PointerEnterEvent event) onHover;
  HoverWidget(
      {Key key,
      @required this.child,
      @required this.hoverChild,
      @required this.onHover})
      : assert(child != null && hoverChild != null && onHover != null),
        super(key: key);

  @override
  _HoverWidgetState createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  bool _isHover = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHover = true;
        });
        widget.onHover(event);
      },
      onExit: (event) {
        setState(() {
          _isHover = false;
        });
      },
      child: _isHover ? widget.hoverChild : widget.child,
    );
  }
}
