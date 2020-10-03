# hovering

A new Flutter package to enable the hover effect on Flutter web.

## Intallation :
```dart 
    dependencies:
        hovering: ^1.0.0
```

## List of Widgets :

### 1. HoverWidget: 
    simply changes one widget to another on Hover.
    Also uses on Hover Property.
### 2. HoverContainer 
    Hover effect in a Conatainer() Widget
    
### 3. HoverCrossFadeWidget
    Gives a Hover effect with a fade animation.
    Transition between two widgets.
### 4. HoverAnimatedContainer
    Creates a Container widget with an Animation.
    Duration can be provided.
### 5. HoverButton
    Creates a Button widget with hover effect.

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
```dart
HoverAnimatedContainer(
      {Key key,
      this.alignment,
      this.hoveraAlignment,
      this.color,
      this.duration=const Duration(milliseconds:200),
      this.curve=Curves.linear,
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
      this.constraints,
      this.margin,
      this.hoverMargin,
      this.padding,
      this.hoverPadding,
      this.transform,
      this.cursor = SystemMouseCursors.basic,
      this.hoverTransform});
```
```dart
HoverButton(
      {Key key,
      @required this.onpressed,
      this.animationDuration,
      this.autofocus = false,
      this.child,
      this.clipBehavior = Clip.none,
      this.color,
      this.colorBrightness,
      this.disabledColor,
      this.disabledElevation,
      this.disabledTextColor,
      this.elevation = 4.0,
      this.enableFeedback = true,
      this.focusColor,
      this.focusElevation,
      this.focusNode,
      this.height,
      this.highlightColor,
      this.highlightElevation,
      this.hoverColor,
      this.hoverElevation = 8.0,
      this.materialTapTargetSize,
      this.minWidth,
      this.mouseCursor = SystemMouseCursors.click,
      this.onHighlightChanged,
      this.onLongPress,
      this.padding,
      this.hoverPadding = const EdgeInsets.all(2.0),
      this.shape = const StadiumBorder(),
      this.splashColor,
      this.textColor,
      this.textTheme,
      this.visualDensity,
      this.hoverShape,
      this.hoverTextColor,
      this.hoverTextTheme,
      this.hoverColorBrightness});

```

