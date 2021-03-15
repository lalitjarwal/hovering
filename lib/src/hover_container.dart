import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// Creates a `Container `widget that responds to the hover effect on web.
///
/// The `height` and `width` values include the padding.
///
/// The `color` and `decoration` arguments cannot both be supplied, since
/// it would potentially result in the decoration drawing over the background
/// color. To supply a decoration with a color, use `decoration:
/// BoxDecoration(color: color)`.
class HoverContainer extends StatefulWidget {
  final AlignmentGeometry? alignment;
  final AlignmentGeometry? hoveraAlignment;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? hoverPadding;
  final Color? color;
  final Color? hoverColor;
  final Decoration? decoration;
  final Decoration? hoverDecoration;
  final Decoration? foregroundDecoration;
  final Decoration? hoverForegroundDecoration;
  final double? width;
  final double? hoverWidth;
  final double? height;
  final double? hoverHeight;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? hoverMargin;
  final Matrix4? transform;
  final Matrix4? hoverTransform;
  final Widget? child;
  final Clip clipBehavior;
  final MouseCursor cursor;
  HoverContainer(
      {Key? key,
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
        assert(
            color == null || decoration == null && hoverDecoration == null,
            'Cannot provide both a color and a decoration\n'
            'To provide both, use "decoration: BoxDecoration(color: color)".'),
        assert(
            hoverColor == null || decoration == null && hoverDecoration == null,
            'Cannot provide both a hoverColor and a hoverDecoration\n'
            'To provide both, use "decoration: BoxDecoration(color: color) and hoverDecoration: BoxDecoration(color: color)".'),
        super(key: key);
  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  @override
  void initState() {
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
        width: _isHover ? widget.hoverWidth ?? widget.width : widget.width,
        height: _isHover ? widget.hoverHeight ?? widget.height : widget.height,
        alignment: _isHover
            ? widget.hoveraAlignment ?? widget.alignment
            : widget.alignment,
        padding:
            _isHover ? widget.hoverPadding ?? widget.padding : widget.padding,
        color: _isHover ? widget.hoverColor ?? widget.color : widget.color,
        decoration: _isHover
            ? widget.hoverDecoration ?? widget.decoration
            : widget.decoration,
        foregroundDecoration: _isHover
            ? widget.hoverForegroundDecoration ?? widget.foregroundDecoration
            : widget.foregroundDecoration,
        clipBehavior: widget.clipBehavior,
        constraints: widget.constraints,
        child: widget.child,
        margin: _isHover ? widget.hoverMargin ?? widget.margin : widget.margin,
      ),
    );
  }
}
