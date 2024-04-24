// import 'package:flutter/material.dart';

// class TextFormFieldCustom extends StatefulWidget {
//   final String hint;
//   final String label;
//   final TextEditingController controller;
//   final RegExp regex;
//   final String errorMessage;
//   final bool isError;
//   bool isObscureTextField;

//   bool isHidden;

//   final bool isPasswordField;
//   final VoidCallback? updateErrorState;

//   TextFormFieldCustom({
//     Key? key,
//     required this.hint,
//     required this.label,
//     required this.controller,
//     required this.regex,
//     required this.errorMessage,
//     required this.isError,
//     required this.isHidden,
//     this.isObscureTextField = false,
//     this.isPasswordField = false,
//     this.updateErrorState,
//   }) : super(key: key);

//   @override
//   _TextFormFieldCustomState createState() => _TextFormFieldCustomState();
// }

// class _TextFormFieldCustomState extends State<TextFormFieldCustom> {
//   bool _isHidden = true;

//   void _toggleVisibility() {
//     setState(() {
//       _isHidden = !_isHidden;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     const textStyle = TextStyle(
//         fontFamily: "Montserrat", fontSize: 16, fontWeight: FontWeight.bold);

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(widget.label, style: textStyle),
//         const SizedBox(height: 10),
//         TextField(
//           controller: widget.controller,
//           obscureText: widget.isPasswordField && _isHidden,
//           decoration: InputDecoration(
//             border: OutlineInputBorder(
//               borderRadius: const BorderRadius.all(Radius.circular(8)),
//               borderSide: widget.isError
//                   ? const BorderSide(color: Colors.red, width: 1.0)
//                   : BorderSide(
//                       color: Color.fromARGB(255, 236, 232, 232), width: 1.0),
//             ),
//             suffixIcon: widget.isPasswordField
//                 ? IconButton(
//                     icon: Icon(
//                         _isHidden ? Icons.visibility_off : Icons.visibility),
//                     onPressed: _toggleVisibility,
//                   )
//                 : null,
//             hintText: widget.hint,
//             hintStyle: TextStyle(
//                 fontSize: 14,
//                 color: Colors.grey.withOpacity(0.7),
//                 fontFamily: "Montserrat"),
//             focusedBorder: const OutlineInputBorder(
//               borderSide: BorderSide(color: Colors.blue, width: 2.0),
//               borderRadius: BorderRadius.all(Radius.circular(8)),
//             ),
//           ),
//           onChanged: (value) {
//             if (!widget.regex.hasMatch(value) && value.isNotEmpty) {
//               if (!widget.isError) {
//                 setState(() {
//                   widget.updateErrorState?.call();
//                 });
//               }
//             } else {
//               if (widget.isError) {
//                 setState(() {
//                   widget.updateErrorState?.call();
//                 });
//               }
//             }
//           },
//         ),
//         widget.isError
//             ? Column(
//                 children: [
//                   const SizedBox(
//                     height: 5,
//                   ),
//                   Text(
//                     widget.errorMessage,
//                     style: const TextStyle(color: Colors.red, fontSize: 12),
//                   ),
//                 ],
//               )
//             : Container(),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:piecexpresspfe/resuable_widgets/colors.dart';

class TextFormFieldCustom extends StatefulWidget {
  final String hint;
  final String label;
  final TextEditingController controller;
  final RegExp regex;
  final String errorMessage;
  final bool isError;
  final bool isPasswordField;
  final VoidCallback? updateErrorState;

  const TextFormFieldCustom({
    Key? key,
    required this.hint,
    required this.label,
    required this.controller,
    required this.regex,
    required this.errorMessage,
    required this.isError,
    this.isPasswordField = false,
    this.updateErrorState,
    required bool isHidden,
  }) : super(key: key);

  @override
  _TextFormFieldCustomState createState() => _TextFormFieldCustomState();
}

class _TextFormFieldCustomState extends State<TextFormFieldCustom> {
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontFamily: "Montserrat", fontSize: 16, fontWeight: FontWeight.bold);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: textStyle),
        const SizedBox(height: 10),
        TextField(
          controller: widget.controller,
          obscureText: widget.isPasswordField && _isHidden,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: widget.isError
                  ? const BorderSide(color: Colors.red, width: 1.0)
                  : const BorderSide(color: AppColors.tertiaryColor, width: 1),
            ),
            suffixIcon: widget.isPasswordField
                ? IconButton(
                    icon: Icon(
                        _isHidden ? Icons.visibility_off : Icons.visibility),
                    onPressed: _toggleVisibility,
                  )
                : null,
            hintText: widget.hint,
            hintStyle: const TextStyle(
                fontSize: 14,
                color: AppColors.tertiaryColor,
                fontFamily: "Montserrat"),
            enabledBorder: const OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColors.tertiaryColor, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          onChanged: (value) {
            if (!widget.regex.hasMatch(value) && value.isNotEmpty) {
              if (!widget.isError) {
                setState(() {
                  widget.updateErrorState?.call();
                });
              }
            } else {
              if (widget.isError) {
                setState(() {
                  widget.updateErrorState?.call();
                });
              }
            }
          },
        ),
        if (widget.isError)
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              widget.errorMessage,
              style: const TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
