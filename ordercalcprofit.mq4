bool OrderCalcProfit(int action, string symbol, double volume, double price_open, double price_close, double &profit)
{
   profit = NULL;
   if ( action == OP_BUY || action == OP_BUYLIMIT || action == OP_BUYSTOP ) {
      profit = (price_close - price_open) * volume * MarketInfo(symbol, MODE_TICKVALUE) / MarketInfo(symbol, MODE_POINT);
      return true;
   } else if ( action == OP_SELL || action == OP_SELLLIMIT || action == OP_SELLSTOP ) {
      profit = (price_open - price_close) * volume * MarketInfo(symbol, MODE_TICKVALUE) / MarketInfo(symbol, MODE_POINT);
      return true;
   }
   return false;
}
