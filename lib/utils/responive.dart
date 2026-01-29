import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
          MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 650) {
          return tablet;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}

class ResponsiveRowColumnWidget extends StatelessWidget {
  final List<Widget> child;
  final MainAxisAlignment? mainAxisAlignment;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;

  const ResponsiveRowColumnWidget({
    super.key,
    required this.child,
    this.mainAxisAlignment,
    this.physics,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context) || Responsive.isTablet(context)) {
      return ListView(
        shrinkWrap: true,
        padding: padding,
        physics: physics ?? const NeverScrollableScrollPhysics(),
        children: child,
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
        children: child,
      );
    }
  }
}

class ResponsiveListGridWidget extends StatelessWidget {
  final int crossAxisCount;
  final List<Widget> childrens;
  final double childAspectRatio;
  final double mainAxisSpacing;
  final ScrollPhysics? physics;

  const ResponsiveListGridWidget({
    super.key,
    required this.childrens,
    this.crossAxisCount = 5,
    this.physics = const AlwaysScrollableScrollPhysics(),
    this.childAspectRatio = 1.2,
    this.mainAxisSpacing = 20,
  });

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return ListView(
        physics: physics,
        shrinkWrap: true,
        children: childrens,
      );
    } else if (Responsive.isTablet(context)) {
      return GridView.builder(
        shrinkWrap: true,
        itemCount: childrens.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            mainAxisSpacing: mainAxisSpacing),
        itemBuilder: (context, index) => childrens[index],
      );
    } else {
      return GridView.builder(
        shrinkWrap: true,
        itemCount: childrens.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            mainAxisSpacing: mainAxisSpacing),
        itemBuilder: (context, index) => childrens[index],
      );
    }
  }
}

class ResponsiveRowColumnUnScrollWidget extends StatelessWidget {
  final List<Widget> child;
  final MainAxisAlignment alignment;

  const ResponsiveRowColumnUnScrollWidget(
      {super.key,
        required this.child,
        this.alignment = MainAxisAlignment.spaceBetween});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: child,
      );
    } else {
      return Column(
        mainAxisAlignment: alignment,
        children: child,
      );
    }
  }
}

class ResponsiveColumnRowWidget extends StatelessWidget {
  final List<Widget> child;
  final MainAxisAlignment? mainAxisAlignment;
  final ScrollPhysics? physics;

  const ResponsiveColumnRowWidget(
      {super.key, required this.child, this.mainAxisAlignment, this.physics});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: child,
      );
    } else {
      return Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        children: child,
      );
    }
  }
}
