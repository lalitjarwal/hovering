# hovering

A new Flutter package to enable the hover effect on Flutter web.

## Widgets :

### 1. HoverWidget: 
    simply changes one widget to another on Hover.
    Also uses on Hover Property.
### 2. HoverContainer 
    Hover effect in a Conatainer() Widget
    
### 3. HoverCrossFadeWidget
    Gives a Hover effect with a fade animation.
    Transition between two widgets.

## Constructors :
```dart
HoverWidget(
      {Key key,
      @required this.child,
      @required this.hoverChild,
      @required this.onHover});
```
```dart
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
  });
```
```dart
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
      this.hoverTransform});
      
```

