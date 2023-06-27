import 'package:flutter/material.dart';

class OnHover extends StatefulWidget {

  Widget Function(bool isHovered) builder;

   OnHover({Key? key,required this.builder}) : super(key: key);

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {

   bool isHovered = false;
  @override
  Widget build(BuildContext context) {

    final hovered = Matrix4.identity()..translate(2,-5,0);
    final transform = isHovered? hovered: Matrix4.identity();

    return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: Duration(microseconds: 300),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered){
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
