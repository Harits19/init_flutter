import 'dart:io';

import 'package:flutter/material.dart';
import 'package:init_flutter/ui/views/touch_opacity.dart';

class KExtension {}

extension ContainerExtension on Container {
  Widget inkWell(InkWell other) {
    final borderRadius =
        (decoration as BoxDecoration?)?.borderRadius as BorderRadius?;
    return Stack(
      children: [
        this,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: other.copyWith(
              borderRadius: borderRadius,
            ),
          ),
        ),
      ],
    );
  }
}

extension CardExtension on Card {
  Widget inkWell(InkWell other) {
    final borderRadius =
        (shape as RoundedRectangleBorder?)?.borderRadius as BorderRadius?;
    return Stack(
      children: [
        this,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: Padding(
              padding: margin ?? const EdgeInsets.all(4.0),
              child: other.copyWith(borderRadius: borderRadius),
            ),
          ),
        ),
      ],
    );
  }
}

extension InkWellExtension on InkWell {
  InkWell copyWith({
    Key? key,
    Widget? child,
    GestureTapCallback? onTap,
    GestureTapCallback? onDoubleTap,
    GestureLongPressCallback? onLongPress,
    GestureTapDownCallback? onTapDown,
    GestureTapCancelCallback? onTapCancel,
    ValueChanged<bool>? onHighlightChanged,
    ValueChanged<bool>? onHover,
    MouseCursor? mouseCursor,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    MaterialStateProperty<Color?>? overlayColor,
    Color? splashColor,
    InteractiveInkFeatureFactory? splashFactory,
    double? radius,
    BorderRadius? borderRadius,
    ShapeBorder? customBorder,
    bool? enableFeedback = true,
    bool? excludeFromSemantics = false,
    FocusNode? focusNode,
    bool? canRequestFocus = true,
    ValueChanged<bool>? onFocusChange,
    bool? autofocus = false,
  }) {
    return InkWell(
      key: key ?? this.key,
      child: child ?? this.child,
      onTap: onTap ?? this.onTap,
      onDoubleTap: onDoubleTap ?? this.onDoubleTap,
      onLongPress: onLongPress ?? this.onLongPress,
      onTapDown: onTapDown ?? this.onTapDown,
      onTapCancel: onTapCancel ?? this.onTapCancel,
      onHighlightChanged: onHighlightChanged ?? this.onHighlightChanged,
      onHover: onHover ?? this.onHover,
      mouseCursor: mouseCursor ?? this.mouseCursor,
      focusColor: focusColor ?? this.focusColor,
      hoverColor: hoverColor ?? this.hoverColor,
      highlightColor: highlightColor ?? this.highlightColor,
      overlayColor: overlayColor ?? this.overlayColor,
      splashColor: splashColor ?? this.splashColor,
      splashFactory: splashFactory ?? this.splashFactory,
      radius: radius ?? this.radius,
      borderRadius: borderRadius ?? this.borderRadius,
      customBorder: customBorder ?? this.customBorder,
      enableFeedback: enableFeedback ?? this.enableFeedback,
      excludeFromSemantics: excludeFromSemantics ?? this.excludeFromSemantics,
      focusNode: focusNode ?? this.focusNode,
      canRequestFocus: canRequestFocus ?? this.canRequestFocus,
      onFocusChange: onFocusChange ?? this.onFocusChange,
      autofocus: autofocus ?? this.autofocus,
    );
  }
}
