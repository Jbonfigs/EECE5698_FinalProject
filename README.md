# Heston European Option Pricing Engine

## Repository Description

This repository contains a hardware-accelerated implementation of the Heston stochastic volatility model for pricing European call and put options. The code is written in C++ and optimized for synthesis on Xilinx Zynq UltraScale+ FPGAs using Vitis HLS. The implementation uses Monte Carlo simulation with parallel random number generators to compute option prices efficiently in hardware.

## Basic Financial Concepts

### What is an Option?

An option is a financial contract that gives the buyer the right, but not the obligation, to buy or sell an asset at a predetermined price on or before a specific date.

- Call Option: The right to buy an asset at a specified price
- Put Option: The right to sell an asset at a specified price
- European Option: Can only be exercised on the expiration date (not before)

### Key Variables

#### Stock Parameters

**S0 (Initial Stock Price)**
- Current market price of the underlying stock
- Units: Currency (e.g., dollars)
- Example: S0 = 100 means the stock currently trades at $100

**K (Strike Price)**
- The predetermined price at which the option can be exercised
- Units: Currency (e.g., dollars)
- Example: K = 105 means you can buy/sell at $105 regardless of market price

**r (Risk-Free Rate)**
- The theoretical return on a risk-free investment (e.g., government bonds)
- Units: Decimal (e.g., 0.05 = 5% annual return)
- Formula: Future Value = Present Value * exp(r * T)

**T (Time to Maturity)**
- Time remaining until the option expires
- Units: Years
- Example: T = 0.5 means 6 months until expiration

**sigma (Volatility)**
- Measure of how much the stock price fluctuates
- Units: Decimal (e.g., 0.20 = 20% annual volatility)
- Higher volatility means more uncertainty and higher option prices

#### Heston Model Parameters

The Heston model assumes that volatility itself changes randomly over time, following its own stochastic process.

**theta (Long-Term Variance)**
- The average level that variance tends to return to over time
- Units: Variance (volatility squared)
- Example: theta = 0.04 corresponds to 20% long-term volatility

**kappa (Mean Reversion Speed)**
- How quickly volatility returns to its long-term average
- Units: 1/Time
- Higher kappa means faster mean reversion
- Example: kappa = 2.0 means volatility adjusts relatively quickly

**xi (Volatility of Volatility)**
- How much the volatility itself fluctuates
- Units: Square root of variance per square root of time
- Example: xi = 0.3 means moderate fluctuation in volatility

**rho (Correlation)**
- Correlation between stock price changes and volatility changes
- Units: Dimensionless (-1 to +1)
- Typically negative: when stock drops, volatility rises
- Example: rho = -0.5 means moderate negative correlation

### Put-Call Parity

For European options, there exists a fundamental relationship that must hold to prevent arbitrage:

```
C - P = S0 - K * exp(-r * T)
```

Where:
- C = Call option price
- P = Put option price
- S0 = Current stock price
- K = Strike price
- r = Risk-free rate
- T = Time to maturity

This equation states that the difference between a call and put price must equal the difference between the current stock price and the present value of the strike price.

### Option Payoffs

At expiration, the option value depends on the final stock price (ST):

**Call Option Payoff:**
```
Payoff = max(ST - K, 0)
```
- Profitable if ST > K
- Worthless if ST <= K

**Put Option Payoff:**
```
Payoff = max(K - ST, 0)
```
- Profitable if ST < K
- Worthless if ST >= K

## System Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                     Heston Option Pricing System                 │
└─────────────────────────────────────────────────────────────────┘
                                 │
                                 │ Input Parameters
                                 ▼
        ┌────────────────────────────────────────────────┐
        │          hestonEuro (Top Function)             │
        │  - Receives market and model parameters        │
        │  - Creates data structures                     │
        │  - Initiates simulation                        │
        └────────────────┬───────────────────────────────┘
                         │
                         ▼
        ┌────────────────────────────────────────────────┐
        │         heston::simulation()                   │
        │  - Initializes parallel RNG instances          │
        │  - Sets up Monte Carlo framework               │
        └────────────────┬───────────────────────────────┘
                         │
                         ▼
        ┌────────────────────────────────────────────────┐
        │         heston::sampleSIM()                    │
        │  - Main Monte Carlo simulation loop            │
        │  - Computes stock price paths                  │
        │  - Accumulates payoffs                         │
        └────────────────┬───────────────────────────────┘
                         │
                         ├─────────────┬─────────────┐
                         ▼             ▼             ▼
        ┌──────────────────┐  ┌──────────────────┐  ...
        │   RNG Instance 0 │  │  RNG Instance 1  │
        │  - Mersenne      │  │  - Mersenne      │
        │    Twister       │  │    Twister       │
        │  - Box-Muller    │  │  - Box-Muller    │
        │    Transform     │  │    Transform     │
        └──────────────────┘  └──────────────────┘
                │                      │
                └──────────┬───────────┘
                           ▼
        ┌────────────────────────────────────────────────┐
        │        Stock Price Evolution                   │
        │  For each time step:                           │
        │    1. Generate random shocks (num1, num2)      │
        │    2. Update volatility using Heston SDE       │
        │    3. Update stock price using correlated      │
        │       random walk                              │
        └────────────────┬───────────────────────────────┘
                         │
                         ▼
        ┌────────────────────────────────────────────────┐
        │         Payoff Calculation                     │
        │  - Compute final stock prices                  │
        │  - Calculate call/put payoffs                  │
        │  - Average across all paths                    │
        │  - Discount to present value                   │
        └────────────────┬───────────────────────────────┘
                         │
                         ▼ Output Prices
        ┌────────────────────────────────────────────────┐
        │         Call Price         Put Price           │
        └────────────────────────────────────────────────┘
```

### Component Descriptions

**hestonEuro (Top-Level Function)**
- Entry point for the HLS IP core
- Defines AXI interfaces for FPGA integration
- Packages parameters into data structures

**RNG (Random Number Generator)**
- Implements Mersenne Twister algorithm (MT19937)
- Generates uniformly distributed random integers
- Box-Muller transform converts to Gaussian distribution
- Parallelized for hardware efficiency

**stockData**
- Container for stock-related parameters
- Stores S0, K, r, T, sigma

**volData**
- Container for Heston model parameters
- Stores theta, kappa, xi, rho

**heston Class**
- Orchestrates the Monte Carlo simulation
- Manages parallel simulation paths
- Accumulates and averages results

### Parallelization Strategy

```
Total Simulation Paths = NUM_RNGS * NUM_SIMGROUPS * NUM_SIMS

Default Configuration:
- NUM_RNGS = 2      (parallel RNG instances)
- NUM_SIMGROUPS = 2 (simulation batches per RNG)
- NUM_SIMS = 16     (Monte Carlo iterations)
- NUM_STEPS = 16    (time discretization steps)

Total = 2 * 2 * 16 = 64 parallel paths
```

## File Structure

```
heston_project/
├── hestonEuro.cpp           Main pricing function
├── hestonEuro.h             Header file
├── hestonEuro_tb.cpp        Test bench with 6 test cases
├── run_hls.tcl              HLS script (100 MHz target)
├── run_hls_optimized.tcl    HLS script (200 MHz target)
├── Makefile                 Build automation
└── common/
    ├── RNG.cpp              Random number generator
    ├── RNG.h
    ├── stockData.cpp        Stock parameters
    ├── stockData.h
    ├── volatilityData.cpp   Heston parameters
    └── volatilityData.h
```

## Running the Project

### Software Simulation

Compile and run the test bench without FPGA tools:

```bash
# Using make
make sw_test

# Or manually
g++ -std=c++11 -O3 -I./common \
    hestonEuro.cpp \
    common/RNG.cpp \
    common/stockData.cpp \
    common/volatilityData.cpp \
    hestonEuro_tb.cpp \
    -o test -lm

./test
```

Expected output shows 6 test cases with option prices and Put-Call parity validation.

### HLS Synthesis

Run Vitis HLS to generate RTL for FPGA implementation:

```bash
# Standard flow (100 MHz target clock)
vitis_hls run_hls.tcl

# Or using make
make hls
```

This performs:
1. C Simulation - Functional verification
2. C Synthesis - RTL generation
3. C/RTL Co-simulation - Hardware verification
4. Export Design - IP packaging

Results are generated in:
```
hestonEuro_hls/solution1/
├── syn/report/              Synthesis reports
├── sim/report/              Simulation reports
└── impl/                    Implementation results
```

### Optimized Synthesis

For higher performance with 200 MHz target:

```bash
vitis_hls run_hls_optimized.tcl

# Or using make
make hls_opt
```

### Viewing Results

Check synthesis report:
```bash
cat hestonEuro_hls/solution1/syn/report/hestonEuro_csynth.rpt
```

Key metrics to examine:
- Latency (clock cycles)
- Interval (throughput)
- Resource utilization (BRAM, DSP, FF, LUT)
- Timing (clock period achieved)

## Test Cases

The test bench includes 6 scenarios:

1. At-The-Money Option (S0 = K = 100)
2. In-The-Money Call (S0 = 110, K = 100)
3. Out-of-The-Money Call (S0 = 90, K = 100)
4. Short Time to Maturity (T = 0.1 years)
5. High Volatility (sigma = 50%)
6. Low Volatility (sigma = 10%)

Each test validates:
- Positive option prices
- Put-Call parity relationship
- Correct relative pricing (ITM > ATM > OTM)