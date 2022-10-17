import 'package:epic_inviation/constant.dart';
import 'package:flutter/material.dart';
class UserInput extends StatelessWidget {
  final TextEditingController textEditingControllerl;
  final bool isPass;
  final TextInputType textInputType;
  final String hintText;
  dynamic InputIcon;
  Icon? endIcon;
  UserInput({Key? key, required this.textEditingControllerl, required this.textInputType, required this.hintText, this.isPass = false, this.InputIcon,this.endIcon }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextField(
      style: TextStyle(color: appblack,fontSize: 16),
      controller: textEditingControllerl,
      decoration: InputDecoration(


        labelStyle: TextStyle(color: appblack),
        prefixIcon: Icon(InputIcon, color: mainColor),
        prefixIconColor: mainColor,
        fillColor: Colors.white,
        hintText: hintText,
        suffixIcon: endIcon,
        suffixIconColor: appblack,

        hintStyle: TextStyle(color: appblack),
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}



class UserInputMultiline extends StatelessWidget {
  final TextEditingController textEditingControllerl;
  final bool isPass;
  final TextInputType textInputType;
  final String hintText;
  //dynamic InputIcon;
  //Icon? endIcon;
  UserInputMultiline({Key? key, required this.textEditingControllerl, required this.textInputType, required this.hintText, this.isPass = false, }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextField(

      style: const TextStyle(color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,),
      controller: textEditingControllerl,
maxLines: 6,
      decoration: InputDecoration(




        labelStyle: TextStyle(color: Colors.black),
       // prefixIcon: Icon(InputIcon, color: Color.fromRGBO(158, 158, 158, 1),),
       // prefixIconColor: const Color.fromRGBO(158, 158, 158, 1),
        fillColor: Colors.white,
        hintText: hintText,
        hoverColor: Colors.black,
        //suffixIcon: endIcon,g
       // suffixIconColor: const Color.fromRGBO(158, 158, 158, 1),

        hintStyle: TextStyle(color: Colors.black),
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context,color: appblack),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context,color: appblack),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context,color: appblack),
        ),
        filled: true,
        contentPadding: const EdgeInsets.only(left: 15,right: 8,top: 8,bottom: 8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}

class UserInput2 extends StatelessWidget {
  final TextEditingController textEditingControllerl;
  final bool isPass;
  final TextInputType textInputType;
  final String hintText;
  dynamic endicon;
  UserInput2({Key? key, required this.textEditingControllerl, required this.textInputType, required this.hintText, this.isPass = false,this.endicon}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextField(

      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      controller: textEditingControllerl,
      decoration: InputDecoration(
        suffixIcon: endicon,


        labelStyle: TextStyle(
          color: Colors.black,

        ),
        //prefixIcon: Icon(InputIcon, color: Color.fromRGBO(158, 158, 158, 1),),
        prefixIconColor: const Color.fromRGBO(158, 158, 158, 1),
        fillColor: Colors.white38,
        hintText: hintText,
        focusColor: Colors.black,
        hoverColor: Colors.black,

        //suffixIcon: endIcon,
        suffixIconColor: const Color.fromRGBO(158, 158, 158, 1),

        hintStyle: TextStyle(color: appblack),
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context,color: Colors.black),
          borderRadius: BorderRadius.circular(8),

        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context,color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(

          borderSide: Divider.createBorderSide(context,color: Colors.black),
          borderRadius: BorderRadius.circular(8),

        ),
        filled: true,
        contentPadding: const EdgeInsets.only(left: 15,right: 8,top: 8,bottom: 8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}







