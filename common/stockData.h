#ifndef __STOCKDATA_H__
#define __STOCKDATA_H__

#include <cmath>
#include <iostream>

typedef unsigned int uint;
typedef float data_t;

class stockData
{
public:
	data_t timeT;
	data_t freeRate;
	data_t volatility;
	data_t initPrice;
	data_t strikePrice;
	
	stockData(data_t, data_t,data_t,data_t,data_t);
	stockData(const stockData&);
	void print()const;
};

#endif