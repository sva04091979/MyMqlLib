#ifndef _C_MQL5_MA_
#define _C_MQL5_MA_

#include "CMQL5IndicatorBase.mqh"

class CMQL5MA:public CMQL5IndicatorBase{
   int                 cMAPeriod;
   int                 cMAShift;
   ENUM_MA_METHOD      cMAMethod;
   ENUM_APPLIED_PRICE  cAppliedPrice;
public:
   CMQL5MA(string mSymbol,ENUM_TIMEFRAMES mFrame,int mPeriod,int mShift,ENUM_MA_METHOD mMethod,ENUM_APPLIED_PRICE mAppliedPrice,int mBufferSize=0);
   CMQL5MA(int mPeriod,int mShift,ENUM_MA_METHOD mMethod,ENUM_APPLIED_PRICE mAppliedPrice,int mBufferSize=0);
   double operator[](int mPos) {return cBuffers[0][mPos];}
};
//----------------------------------------------------------------
CMQL5MA::CMQL5MA(string mSymbol,ENUM_TIMEFRAMES mFrame,int mPeriod,int mShift,ENUM_MA_METHOD mMethod, ENUM_APPLIED_PRICE mAppliedPrice,int mBufferSize=0):
   CMQL5IndicatorBase(iMA(mSymbol,mFrame,mPeriod,mShift,mMethod,mAppliedPrice),
                      mSymbol,mFrame,1,mBufferSize),
   cMAPeriod(mPeriod),
   cMAShift(mShift),
   cMAMethod(mMethod),
   cAppliedPrice(mAppliedPrice){}                   
//----------------------------------------------------------------
CMQL5MA::CMQL5MA(int mPeriod,int mShift,ENUM_MA_METHOD mMethod, ENUM_APPLIED_PRICE mAppliedPrice,int mBufferSize=0):
   CMQL5IndicatorBase(iMA(_Symbol,PERIOD_CURRENT,mPeriod,mShift,mMethod,mAppliedPrice),
                      _Symbol,PERIOD_CURRENT,1,mBufferSize),
   cMAPeriod(mPeriod),
   cMAShift(mShift),
   cMAMethod(mMethod),
   cAppliedPrice(mAppliedPrice){}                   
#endif