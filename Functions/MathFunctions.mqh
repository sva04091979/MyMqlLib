#ifndef _MATH_FUNCTIONS_
#define _MATH_FUNCTIONS_

//----Сравнивает два чила с плавающей точкой-----------------------
inline int CompareDouble(double first,double second,int digits){
   double res=NormalizeDouble(first-second,digits);
   return res==0.0?0:res>0?1:-1;}
   
inline int CompareDouble(float first,float second,int digits){
   float res=(float)NormalizeDouble(first-second,digits);
   return res==0.f?0:res>0?1:-1;}
   
inline int CompareDouble(double first,float second,int digits){
   double res=NormalizeDouble(first-second,digits);
   return res==0.0?0:res>0?1:-1;}
   
inline int CompareDouble(float first,double second,int digits){
   double res=NormalizeDouble(first-second,digits);
   return res==0.0?0:res>0?1:-1;}
//-----------------------------------------------------------------
template<typename T>
T* Move(T* &mPtr){
   T* ptr=mPtr;
   mPtr=NULL;
   return ptr;}

#endif 