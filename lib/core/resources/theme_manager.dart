

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seperateproject/core/resources/app_colors.dart';
import 'package:seperateproject/core/resources/font_manager.dart';
import 'package:seperateproject/core/resources/values_manager.dart';
ThemeData getApplicationTheme(){
  return ThemeData(
    tabBarTheme: const TabBarTheme(indicator:  BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: AppColors.white,
        width: AppSize.s2,
      ),
    ),
  ),
      labelPadding:EdgeInsets.only(left: AppPadding.p8) ,
  ),scaffoldBackgroundColor: AppColors.white,
//main colors
primaryColor: AppColors.white,useMaterial3: false,

    splashColor: AppColors.graySoft2,
    //cardview theme
    cardTheme: CardTheme(color: AppColors.white,shadowColor: AppColors.black,elevation: AppSize.s5),
    //app bar theme
appBarTheme: const AppBarTheme(
  titleSpacing: 20,
  backgroundColor: AppColors.graySoft2,

  elevation: 2.0,iconTheme: IconThemeData(color: AppColors.black,),

  systemOverlayStyle: SystemUiOverlayStyle(

      statusBarColor:AppColors.colorPrimaryDark,statusBarIconBrightness: Brightness.light,statusBarBrightness: Brightness.light
  ),
  centerTitle: true,

  shadowColor: AppColors.graySoft2,
  titleTextStyle: TextStyle(color: AppColors.black,fontSize: FontSize.s16,fontFamily: 'DancingScript'),
),
    //button theme
buttonTheme: const ButtonThemeData(shape: StadiumBorder(),
  disabledColor: AppColors.grayDark,buttonColor: AppColors.colorPrimary,splashColor: AppColors.grayDark,
),
    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(textStyle:const TextStyle(color: AppColors.black,fontSize: FontSize.s17), backgroundColor: AppColors.graySoft2,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12)),
    ),),
      //text theme

             textTheme:  TextTheme(

                 headline5: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: AppColors.yellow,fontFamily: 'DancingScript'),subtitle1:
             TextStyle(
               fontSize: FontSize.s30,
               color: Colors.white,
               fontWeight: FontWeight.w400,
               letterSpacing: 0.15,fontFamily: 'DancingScript'
             ),subtitle2: TextStyle( fontSize: FontSize.s14,
               color: Colors.white,
               fontWeight: FontWeight.w400,
               letterSpacing: 0.15,fontFamily: 'DancingScript'),headline1: TextStyle( color:  AppColors.colorPrimary,fontWeight: FontWeight.w400,fontSize: FontSize.s17,fontFamily: 'DancingScript'),headline2: TextStyle(color: AppColors.white,fontSize:  FontSize.s16,fontWeight: FontWeight.w500),headline3:  TextStyle(
               fontSize: FontSize.s30,
               color: AppColors.colorPrimary,
               fontWeight: FontWeight.w400,
               letterSpacing: 0.15,fontFamily: 'DancingScript'
             ),headline4:TextStyle( fontSize: FontSize.s22,height: 1.5,
               color: Colors.black,
               fontWeight: FontWeight.w400,
               letterSpacing: 0.15,fontFamily: 'DancingScript'),bodyText1: TextStyle( fontSize: FontSize.s22,
               color: Colors.black,
               fontWeight: FontWeight.w600,
               letterSpacing: 0.15,fontFamily: 'DancingScript') ,headline6:   TextStyle( fontSize: FontSize.s16,
               color: Colors.black,
               fontWeight: FontWeight.w300,
               letterSpacing: 0.15,fontFamily: 'DancingScript'),
             bodyText2: TextStyle(fontSize: FontSize.s14, color: AppColors.colorPrimary,fontFamily: 'DancingScript'),caption:  TextStyle(fontSize: FontSize.s14,  color: AppColors.red,fontFamily: 'DancingScript')
             ),
    //input decoration theme (text form field)
inputDecorationTheme: const InputDecorationTheme(
  // content Padding
  contentPadding: EdgeInsets.all(AppPadding.p8),
//hint Style
hintStyle: TextStyle(color: AppColors.black,fontSize: FontSize.s17,fontFamily: 'DancingScript'),
    //label Style
  labelStyle:TextStyle(color: AppColors.black,fontSize: FontSize.s14,fontFamily: 'DancingScript'),
  errorStyle: TextStyle(color: AppColors.white,fontSize: FontSize.s14,fontFamily: 'DancingScript'),
  //enabled Border Style
  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:AppColors.grayMedium,width: AppSize.s1_5),),
  //focused Border Style
  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:AppColors.grayMedium,width: AppSize.s1_5),),
  //error Border Style
  errorBorder: OutlineInputBorder(borderSide: BorderSide(color:AppColors.red,width: AppSize.s1_5),),
  focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color:AppColors.grayMedium,width: AppSize.s1_5),),
),

  );
}
