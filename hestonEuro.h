#ifndef __HESTON_H__
#define __HESTON_H__

#include "../common/RNG.h"
#include "../common/stockData.h"
#include "../common/volatilityData.h"
class heston
{
	const stockData data;
	const volData vol;
	static const int NUM_RNGS;
	static const int NUM_SIMGROUPS;
	static const int NUM_STEPS;
	static const int NUM_SIMS;
public:
	heston(stockData,volData);
	void simulation(data_t*,data_t*);
	void sampleSIM(RNG *,data_t*,data_t*);
};

#endif