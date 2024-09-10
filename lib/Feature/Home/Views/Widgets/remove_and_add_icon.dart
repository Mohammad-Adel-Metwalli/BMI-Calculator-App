import 'package:flutter/material.dart';
import '../../../../Core/Utils/constant_colors.dart';

class RemoveAndAddIcon extends StatelessWidget
{
  const RemoveAndAddIcon({super.key, required this.sign, this.onPressed,});
  final void Function()? onPressed;
  final String sign;

  @override
  Widget build(BuildContext context) => IconButton(
    onPressed: onPressed,
    icon: Icon(sign == '+' ? Icons.add_circle : Icons.remove_circle, color: black.withOpacity(0.7)),
  );
}