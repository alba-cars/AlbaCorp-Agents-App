// import 'package:flutter/material.dart';

// import 'transition.dart';

// class ExpandTransitionPage<T> extends Page<T> {
//   final Widget child;

//   ExpandTransitionPage(
//       {super.key,
//       super.name,
//       super.arguments,
//       super.restorationId,
//       required this.child});
//   @override
//   Route<T> createRoute(BuildContext context) {
//     return _ExpandTransitionPageRoute<T>();
//   }
// }

// class _ExpandTransitionPageRoute<T> extends PageRoute<T> {
//   _ExpandTransitionPageRoute(this.child)
//       : _elevationTween = Tween<double>(
//           begin: 4,
//           end: 1,
//         ),
//         _shapeTween = ShapeBorderTween(
//           begin: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(Radius.circular(4.0)),
//           ),
//           end: const RoundedRectangleBorder(),
//         ),
//         _colorTween = _getColorTween(
//           transitionType: ContainerTransitionType.fadeThrough,
//           closedColor: Colors.white,
//           openColor: Colors.white,
//           middleColor: Colors.white,
//         ),
//         _closedOpacityTween =
//             _getClosedOpacityTween(ContainerTransitionType.fadeThrough),
//         _openOpacityTween =
//             _getOpenOpacityTween(ContainerTransitionType.fadeThrough);
//   static FlippableTweenSequence<Color?> _getColorTween({
//     required ContainerTransitionType transitionType,
//     required Color closedColor,
//     required Color openColor,
//     required Color middleColor,
//   }) {
//     switch (transitionType) {
//       case ContainerTransitionType.fade:
//         return FlippableTweenSequence<Color?>(
//           <TweenSequenceItem<Color?>>[
//             TweenSequenceItem<Color>(
//               tween: ConstantTween<Color>(closedColor),
//               weight: 1 / 5,
//             ),
//             TweenSequenceItem<Color?>(
//               tween: ColorTween(begin: closedColor, end: openColor),
//               weight: 1 / 5,
//             ),
//             TweenSequenceItem<Color>(
//               tween: ConstantTween<Color>(openColor),
//               weight: 3 / 5,
//             ),
//           ],
//         );
//       case ContainerTransitionType.fadeThrough:
//         return FlippableTweenSequence<Color?>(
//           <TweenSequenceItem<Color?>>[
//             TweenSequenceItem<Color?>(
//               tween: ColorTween(begin: closedColor, end: middleColor),
//               weight: 1 / 5,
//             ),
//             TweenSequenceItem<Color?>(
//               tween: ColorTween(begin: middleColor, end: openColor),
//               weight: 4 / 5,
//             ),
//           ],
//         );
//     }
//   }

//   static FlippableTweenSequence<double> _getClosedOpacityTween(
//       ContainerTransitionType transitionType) {
//     switch (transitionType) {
//       case ContainerTransitionType.fade:
//         return FlippableTweenSequence<double>(
//           <TweenSequenceItem<double>>[
//             TweenSequenceItem<double>(
//               tween: ConstantTween<double>(1.0),
//               weight: 1,
//             ),
//           ],
//         );
//       case ContainerTransitionType.fadeThrough:
//         return FlippableTweenSequence<double>(
//           <TweenSequenceItem<double>>[
//             TweenSequenceItem<double>(
//               tween: Tween<double>(begin: 1.0, end: 0.0),
//               weight: 1 / 5,
//             ),
//             TweenSequenceItem<double>(
//               tween: ConstantTween<double>(0.0),
//               weight: 4 / 5,
//             ),
//           ],
//         );
//     }
//   }

//   static FlippableTweenSequence<double> _getOpenOpacityTween(
//       ContainerTransitionType transitionType) {
//     switch (transitionType) {
//       case ContainerTransitionType.fade:
//         return FlippableTweenSequence<double>(
//           <TweenSequenceItem<double>>[
//             TweenSequenceItem<double>(
//               tween: ConstantTween<double>(0.0),
//               weight: 1 / 5,
//             ),
//             TweenSequenceItem<double>(
//               tween: Tween<double>(begin: 0.0, end: 1.0),
//               weight: 1 / 5,
//             ),
//             TweenSequenceItem<double>(
//               tween: ConstantTween<double>(1.0),
//               weight: 3 / 5,
//             ),
//           ],
//         );
//       case ContainerTransitionType.fadeThrough:
//         return FlippableTweenSequence<double>(
//           <TweenSequenceItem<double>>[
//             TweenSequenceItem<double>(
//               tween: ConstantTween<double>(0.0),
//               weight: 1 / 5,
//             ),
//             TweenSequenceItem<double>(
//               tween: Tween<double>(begin: 0.0, end: 1.0),
//               weight: 4 / 5,
//             ),
//           ],
//         );
//     }
//   }

//   static final TweenSequence<Color?> _scrimFadeInTween = TweenSequence<Color?>(
//     <TweenSequenceItem<Color?>>[
//       TweenSequenceItem<Color?>(
//         tween: ColorTween(begin: Colors.transparent, end: Colors.black54),
//         weight: 1 / 5,
//       ),
//       TweenSequenceItem<Color>(
//         tween: ConstantTween<Color>(Colors.black54),
//         weight: 4 / 5,
//       ),
//     ],
//   );
//   static final Tween<Color?> _scrimFadeOutTween = ColorTween(
//     begin: Colors.transparent,
//     end: Colors.black54,
//   );

//   Color? get barrierColor => null;
//   final GlobalKey _openBuilderKey = GlobalKey();
//   final Widget child;
//   final Tween<double> _elevationTween;
//   final ShapeBorderTween _shapeTween;
//   final FlippableTweenSequence<double> _closedOpacityTween;
//   final FlippableTweenSequence<double> _openOpacityTween;
//   final FlippableTweenSequence<Color?> _colorTween;

//   @override
//   String? get barrierLabel => null;

//   AnimationStatus? _lastAnimationStatus;
//   AnimationStatus? _currentAnimationStatus;

//   bool get _transitionWasInterrupted {
//     bool wasInProgress = false;
//     bool isInProgress = false;

//     switch (_currentAnimationStatus) {
//       case AnimationStatus.completed:
//       case AnimationStatus.dismissed:
//         isInProgress = false;
//       case AnimationStatus.forward:
//       case AnimationStatus.reverse:
//         isInProgress = true;
//       case null:
//         break;
//     }
//     switch (_lastAnimationStatus) {
//       case AnimationStatus.completed:
//       case AnimationStatus.dismissed:
//         wasInProgress = false;
//       case AnimationStatus.forward:
//       case AnimationStatus.reverse:
//         wasInProgress = true;
//       case null:
//         break;
//     }
//     return wasInProgress && isInProgress;
//   }

//   final RectTween _rectTween = RectTween();

//   @override
//   Widget buildPage(BuildContext context, Animation<double> animation,
//       Animation<double> secondaryAnimation) {
//     return Align(
//       alignment: Alignment.topLeft,
//       child: AnimatedBuilder(
//         animation: animation,
//         builder: (BuildContext context, Widget? _) {
//           if (animation.isCompleted) {
//             return SizedBox.expand(
//               child: Material(
//                 child: Builder(
//                   key: _openBuilderKey,
//                   builder: (BuildContext context) {
//                     return child;
//                   },
//                 ),
//               ),
//             );
//           }

//           final Animation<double> curvedAnimation = CurvedAnimation(
//             parent: animation,
//             curve: Curves.fastOutSlowIn,
//             reverseCurve:
//                 _transitionWasInterrupted ? null : Curves.fastOutSlowIn.flipped,
//           );
//           TweenSequence<Color?>? colorTween;
//           TweenSequence<double>? closedOpacityTween, openOpacityTween;
//           Animatable<Color?>? scrimTween;
//           switch (animation.status) {
//             case AnimationStatus.dismissed:
//             case AnimationStatus.forward:
//               closedOpacityTween = _closedOpacityTween;
//               openOpacityTween = _openOpacityTween;
//               colorTween = _colorTween;
//               scrimTween = _scrimFadeInTween;
//             case AnimationStatus.reverse:
//               if (_transitionWasInterrupted) {
//                 closedOpacityTween = _closedOpacityTween;
//                 openOpacityTween = _openOpacityTween;
//                 colorTween = _colorTween;
//                 scrimTween = _scrimFadeInTween;
//                 break;
//               }
//               closedOpacityTween = _closedOpacityTween.flipped;
//               openOpacityTween = _openOpacityTween.flipped;
//               colorTween = _colorTween.flipped;
//               scrimTween = _scrimFadeOutTween;
//             case AnimationStatus.completed:
//               assert(false); // Unreachable.
//           }
//           assert(colorTween != null);
//           assert(closedOpacityTween != null);
//           assert(openOpacityTween != null);
//           assert(scrimTween != null);

//           final Rect rect = _rectTween.evaluate(curvedAnimation)!;
//           return SizedBox.expand(
//             child: Container(
//               color: scrimTween!.evaluate(curvedAnimation),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Transform.translate(
//                   offset: Offset(rect.left, rect.top),
//                   child: SizedBox(
//                     width: rect.width,
//                     height: rect.height,
//                     child: Material(
//                       clipBehavior: Clip.antiAlias,
//                       animationDuration: Duration.zero,
//                       color: colorTween!.evaluate(animation),
//                       shape: _shapeTween.evaluate(curvedAnimation),
//                       elevation: _elevationTween.evaluate(curvedAnimation),
//                       child: Stack(
//                         fit: StackFit.passthrough,
//                         children: <Widget>[
//                           // Closed child fading out.
//                           FittedBox(
//                             fit: BoxFit.fitWidth,
//                             alignment: Alignment.topLeft,
//                             child: SizedBox(
//                               width: _rectTween.begin!.width,
//                               height: _rectTween.begin!.height,
//                               child: (hideableKey.currentState?.isInTree ??
//                                       false)
//                                   ? null
//                                   : FadeTransition(
//                                       opacity: closedOpacityTween!
//                                           .animate(animation),
//                                       child: Builder(
//                                         key: closedBuilderKey,
//                                         builder: (BuildContext context) {
//                                           // Use dummy "open container" callback
//                                           // since we are in the process of opening.
//                                           return child;
//                                         },
//                                       ),
//                                     ),
//                             ),
//                           ),

//                           // Open child fading in.
//                           FittedBox(
//                             fit: BoxFit.fitWidth,
//                             alignment: Alignment.topLeft,
//                             child: SizedBox(
//                               width: _rectTween.end!.width,
//                               height: _rectTween.end!.height,
//                               child: FadeTransition(
//                                 opacity: openOpacityTween!.animate(animation),
//                                 child: Builder(
//                                   key: _openBuilderKey,
//                                   builder: (BuildContext context) {
//                                     return openBuilder(context, closeContainer);
//                                   },
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   @override
//   bool get maintainState => true;

//   @override
//   Duration get transitionDuration => Durations.long2;
// }
