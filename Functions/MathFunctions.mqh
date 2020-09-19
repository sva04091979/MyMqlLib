#ifndef _MATH_FUNCTIONS_
#define _MATH_FUNCTIONS_

#include <MyMQLLib\Define\MQLDefine.mqh>

//----Сравнивает два чила с плавающей точкой-----------------------
ECompare CompareDouble(double fFirst,double fSecond,int digits){
   double res=NormalizeDouble(fFirst-fSecond,digits);
   return res==0.0?EQUALLY:res>0.0?MORE:LESS;}
   
ECompare CompareDouble(float fFirst,float fSecond,int digits){
   float res=(float)NormalizeDouble(fFirst-fSecond,digits);
   return res==0.f?EQUALLY:res>0.0?MORE:LESS;}
   
ECompare CompareDouble(double fFirst,float fSecond,int digits){
   double res=NormalizeDouble(fFirst-fSecond,digits);
   return res==0.0?EQUALLY:res>0.0?MORE:LESS;}
   
ECompare CompareDouble(float fFirst,double fSecond,int digits){
   double res=NormalizeDouble(fFirst-fSecond,digits);
   return res==0.0?EQUALLY:res>0.0?MORE:LESS;}
//-----------------------------------------------------------------

#endif 