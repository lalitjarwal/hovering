# hovering


### A new Flutter package to enable the hover effect on Flutter web.


<img src="https://raw.githubusercontent.com/lalitjarwal/hovering/master/snaps/hoverGrow.gif"  height = "250" alt="Hover Grow Effect">
<img src="https://raw.githubusercontent.com/lalitjarwal/hovering/master/snaps/hoverShrink.gif"  height = "250" alt="Hover Shrink Effect">
<img src="https://raw.githubusercontent.com/lalitjarwal/hovering/master/snaps/hoverFade.gif"  height = "250" alt="Hover Fade Effect">
<img src="https://raw.githubusercontent.com/lalitjarwal/hovering/master/snaps/hoverButton.gif"  height = "250" alt="Hoverbutton Effect">
<img src="https://raw.githubusercontent.com/lalitjarwal/hovering/master/snaps/hoverBar.gif"  height = "250" alt="Hover SnackBar Effect">

## Intallation :
### Add Dependency: 

```dart 
    dependencies:
        hovering: ^1.0.4
```
### Import Package:
```dart
import"package:hovering/hovering.dart";
```
## List of Widgets :

### 1. HoverWidget: 
    -Simply changes one widget to another on Hover.
    -Also uses onHover property.
### 2. HoverContainer 
    -Hover effect on a Container Widget
    
### 3. HoverCrossFadeWidget
    -Gives a Hover effect with a fade animation.
    -Transition between two widgets.
### 4. HoverAnimatedContainer
    -Creates a Container widget with an Animation.
    -Duration can be provided.
### 5. HoverButton
    -Creates a Button widget with hover effect.

## Constructors :
```dart
HoverWidget({
    Key? key,
    required Widget child, 
    required Widget hoverChild, 
    required void Function(PointerEnterEvent) onHover
    })
```
```dart
HoverCrossFadeWidget({
     Key? key, 
     MouseCursor cursor = SystemMouseCursors.basic, 
     required Widget firstChild, 
     required Widget secondChild, 
     required Duration duration, 
     AlignmentGeometry alignmentry = Alignment.center, 
     Curve firstCurve = Curves.linear, 
     Duration? reverseDuration, 
     Curve secondCurve = Curves.linear, 
     Curve sizeCurve = Curves.linear})
```
```dart
HoverContainer({
    Key? key, 
    AlignmentGeometry? alignment, 
    AlignmentGeometry? hoveraAlignment, 
    Color? color, 
    Color? hoverColor, 
    double? width, 
    double? hoverWidth, 
    double? height, 
    double? hoverHeight, 
    Decoration? decoration, 
    Decoration? hoverDecoration, 
    Decoration? foregroundDecoration, 
    Decoration? hoverForegroundDecoration, 
    Widget? child, 
    Clip clipBehavior = Clip.none, 
    BoxConstraints? constraints, 
    EdgeInsetsGeometry? margin, 
    EdgeInsetsGeometry? hoverMargin, 
    EdgeInsetsGeometry? padding, 
    EdgeInsetsGeometry? hoverPadding, 
    Matrix4? transform, 
    MouseCursor cursor = SystemMouseCursors.basic, 
    Matrix4? hoverTransform})
```
```dart
HoverAnimatedContainer({
    Key? key, 
    AlignmentGeometry? alignment, 
    AlignmentGeometry? hoveraAlignment, 
    Color? color, 
    Duration duration = const Duration(milliseconds: 200), 
    Color? hoverColor, 
    double? width, 
    double? hoverWidth, 
    double? height, 
    double? hoverHeight, 
    Decoration? decoration, 
    Decoration? hoverDecoration, 
    Decoration? foregroundDecoration, 
    Decoration? hoverForegroundDecoration, 
    Widget? child, 
    BoxConstraints? constraints, 
    EdgeInsetsGeometry? margin, 
    EdgeInsetsGeometry? hoverMargin, 
    EdgeInsetsGeometry? padding, 
    EdgeInsetsGeometry? hoverPadding, 
    Matrix4? transform, 
    Curve curve = Curves.linear, 
    MouseCursor cursor = SystemMouseCursors.basic, 
    Matrix4? hoverTransform})
```
```dart
HoverButton({
    Key? key, 
    required void Function() onpressed, 
    Duration? animationDuration, 
    bool autofocus = false, 
    Widget? child, 
    Clip clipBehavior = Clip.none, 
    Color? color, 
    Brightness? colorBrightness, 
    Color? disabledColor, 
    double? disabledElevation, 
    Color? disabledTextColor, 
    double elevation = 4.0, 
    bool enableFeedback = true, 
    Color? focusColor, 
    double? focusElevation, 
    FocusNode? focusNode, 
    double? height, 
    Color? highlightColor, 
    double? highlightElevation, 
    Color? hoverColor, 
    double hoverElevation = 8.0, 
    MaterialTapTargetSize? materialTapTargetSize, 
    double? minWidth, 
    MouseCursor mouseCursor = SystemMouseCursors.click, 
    void Function(bool)? onHighlightChanged, 
    void Function()? onLongPress, 
    EdgeInsetsGeometry? padding, 
    EdgeInsetsGeometry hoverPadding = const EdgeInsets.all(2.0), ShapeBorder shape = const StadiumBorder(), 
    Color? splashColor, 
    Color? textColor, 
    ButtonTextTheme? textTheme, 
    VisualDensity? visualDensity, 
    ShapeBorder? hoverShape, 
    Color? hoverTextColor, 
    ButtonTextTheme? hoverTextTheme, 
    Brightness? hoverColorBrightness})
```

