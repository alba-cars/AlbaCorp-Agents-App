import 'package:flutter/material.dart';

import 'space.dart';

class AppPrimaryButton extends StatefulWidget {
  const AppPrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    this.fullWidth = false,
    this.backgroundImage,
    this.backgroundColor,
    this.foregroundColor,
    this.textSize = 'labelSmall',
    this.height,
    this.isLocked = false,
    this.animate = false,
    this.borderShow = false,
    this.isDisabled = false,
    this.borderColor,
    this.borderRadious,
    this.loading,
  });
  final String text;
  final dynamic Function() onTap;
  final bool fullWidth;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String? textSize;
  final String? backgroundImage;
  final double? height;
  final bool isLocked;
  final bool animate;
  final bool? loading;
  final bool borderShow;
  final bool isDisabled;
  final Color? borderColor;
  final double? borderRadious;

  @override
  State<AppPrimaryButton> createState() => _AppPrimaryButtonState();
}

class _AppPrimaryButtonState extends State<AppPrimaryButton>
    with SingleTickerProviderStateMixin {
  bool loading = false;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    loading = widget.loading ?? loading;
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void didUpdateWidget(covariant AppPrimaryButton oldWidget) {
    loading = widget.loading ?? loading;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startPulseAnimation() {
    _animationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final textSlyle = Theme.of(context).textTheme.labelLarge!.apply(
          color: widget.foregroundColor ?? colorScheme.onPrimary,
          fontWeightDelta: 3,
        );
    if (widget.animate) {
      _startPulseAnimation();
    }
    return IgnorePointer(
      ignoring: widget.isLocked || loading,
      child: ElevatedButton(
        clipBehavior: Clip.hardEdge,
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.backgroundColor ?? colorScheme.primary,
          foregroundColor: widget.foregroundColor,
          visualDensity: VisualDensity.compact,
          padding: widget.backgroundImage != null ? EdgeInsets.zero : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadious ?? 10),
            side: widget.borderShow
                ? BorderSide(
                    color: widget.borderColor ?? colorScheme.primary,
                    width: 1.0,
                  )
                : BorderSide.none,
          ),
        ),
        onPressed: widget.isDisabled
            ? null
            : () async {
                loading = true;
                if (mounted) setState(() {});

                await widget.onTap();
                loading = false;
                if (mounted) setState(() {});
              },
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            final scale = _scaleAnimation.value;
            return Transform.scale(
              scale: scale,
              child: child,
            );
          },
          child: !loading
              ? widget.backgroundImage == null
                  ? SizedBox(
                      width: widget.fullWidth ? double.maxFinite : null,
                      height: widget.height ?? 43,
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Visibility(
                              visible: widget.isLocked,
                              child: const Row(
                                children: [
                                  Icon(Icons.lock_outline_rounded),
                                  HorizontalSmallGap(),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Text(
                                widget.text,
                                style: textSlyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : SizedBox(
                      height: widget.height ?? 43,
                      width: double.maxFinite,
                      child: Ink.image(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.backgroundImage!),
                        child: Center(
                          child: Text(
                            widget.text,
                            style: textSlyle,
                          ),
                        ),
                      ),
                    )
              : SizedBox(
                  height: widget.height ?? 43,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: FittedBox(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(
                            Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

class AppSecondaryButton extends StatelessWidget {
  const AppSecondaryButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.fullWidth,
      this.borderColor});

  final String text;
  final void Function() onTap;
  final bool fullWidth;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    final textSlyle = Theme.of(context).textTheme.labelLarge!.apply(
        color: Theme.of(context).colorScheme.primary, fontWeightDelta: 3);
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: OutlinedButton(
            clipBehavior: Clip.hardEdge,
            style: OutlinedButton.styleFrom(
                minimumSize: fullWidth ? const Size.fromHeight(46) : null,
                foregroundColor: Theme.of(context).colorScheme.primary,
                side: borderColor != null
                    ? BorderSide(color: borderColor!, width: 1.5)
                    : BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.5),
                shape: const StadiumBorder()),
            onPressed: onTap,
            child: Text(
              text,
              style: textSlyle,
            )));
  }
}

class AppPrimaryButtonWithIcon extends StatefulWidget {
  const AppPrimaryButtonWithIcon(
      {super.key,
      required this.text,
      required this.onTap,
      this.fullWidth = false,
      this.backgroundImage,
      this.backgroundColor,
      this.foregroundColor,
      this.height,
      required this.iconImg});
  final String text;
  final dynamic Function() onTap;
  final bool fullWidth;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String? backgroundImage;
  final double? height;
  final String iconImg;

  @override
  State<AppPrimaryButtonWithIcon> createState() =>
      _AppPrimaryButtonWithIconState();
}

class _AppPrimaryButtonWithIconState extends State<AppPrimaryButtonWithIcon> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final textSlyle = Theme.of(context).textTheme.labelLarge!.apply(
        color: widget.foregroundColor ?? colorScheme.onPrimary,
        fontWeightDelta: 1);
    return ElevatedButton(
        clipBehavior: Clip.hardEdge,
        style: ElevatedButton.styleFrom(
            backgroundColor: widget.backgroundColor ?? Colors.black,
            foregroundColor: widget.foregroundColor,
            visualDensity: VisualDensity.compact,
            minimumSize: widget.fullWidth
                ? const Size.fromHeight(20)
                : const Size(40, 10),
            maximumSize: Size.fromHeight(widget.height ?? 44),
            padding: widget.backgroundImage != null ? EdgeInsets.zero : null,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () async {
          setState(() {
            loading = true;
          });
          await widget.onTap();

          setState(() {
            loading = false;
          });
        },
        child: SizedBox(
          width: double.infinity,
          child: Center(
            // Wrap the Row with Center
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (!loading)
                      ? Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            widget.iconImg,
                            width: 20,
                          ),
                        )
                      : const SizedBox(
                          height: 20,
                          width: 20,
                          child: FittedBox(child: CircularProgressIndicator())),
                  const SizedBox(width: 5),
                  Center(
                    child: Text(
                      widget.text,
                      style: textSlyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class AppIconButton extends StatefulWidget {
  const AppIconButton({
    super.key,
    required this.child,
    required this.onTap,
    this.fullWidth = false,
    this.backgroundImage,
    this.backgroundColor,
    this.foregroundColor,
    this.textSize = 'labelSmall',
    this.height,
    this.isLocked = false,
    this.animate = false,
  });
  final Widget child;
  final dynamic Function() onTap;
  final bool fullWidth;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String? textSize;
  final String? backgroundImage;
  final double? height;
  final bool isLocked;
  final bool animate;

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton>
    with SingleTickerProviderStateMixin {
  bool loading = false;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startPulseAnimation() {
    _animationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final textSlyle = Theme.of(context).textTheme.labelLarge!.apply(
          color: widget.foregroundColor ?? colorScheme.onPrimary,
          fontWeightDelta: 3,
        );
    if (widget.animate) {
      _startPulseAnimation();
    }
    return IgnorePointer(
      ignoring: widget.isLocked || loading,
      child: IconButton(
        onPressed: () async {
          setState(() {
            loading = true;
          });

          await widget.onTap();

          setState(() {
            loading = false;
          });
        },
        icon: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            final scale = _scaleAnimation.value;
            return Transform.scale(
              scale: scale,
              child: child,
            );
          },
          child: !loading
              ? widget.backgroundImage == null
                  ? SizedBox(
                      width: widget.fullWidth ? double.maxFinite : null,
                      height: widget.height ?? 43,
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Visibility(
                              visible: widget.isLocked,
                              child: const Row(
                                children: [
                                  Icon(Icons.lock_outline_rounded),
                                  HorizontalSmallGap(),
                                ],
                              ),
                            ),
                            widget.child
                          ],
                        ),
                      ),
                    )
                  : SizedBox(
                      height: widget.height ?? 43,
                      width: double.maxFinite,
                      child: Ink.image(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.backgroundImage!),
                        child: Center(child: widget.child),
                      ),
                    )
              : SizedBox(
                  height: widget.height ?? 43,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: FittedBox(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(
                            Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
