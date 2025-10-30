#ifndef __RNG__
#define __RNG__

#include <cmath>
#include <iostream>

typedef unsigned int uint;
typedef float data_t;

//Mersenne Twister Params
#define RNG_N 624   //Full state size
#define RNG_H 312   //Half state size

#define RNG_MH 198  //Middle offset for even array
#define RNG_MHI 199 //Middle offset for odd array

#define RNG_F 0x6C078965    //Initialization multiplier
#define RNG_W 32    //Word size in bits

class RNG
{
public:
	int index;  //Current position in state arrays
	uint seed;  //Current seed value

    //State array split into even/odd for parallel processing
	uint mt_e[RNG_H],mt_o[RNG_H];  

    void init(uint);
	void extract_number(uint*,uint*);
	void BOX_MULLER(data_t*, data_t*,data_t);
	void BOX_MULLER(data_t*, data_t*,data_t, data_t);

    //Function to increment index with wraparound 
	int increase(int);
	int & operator ++();

	static void init_array(RNG*, uint*,const int);
};

#endif