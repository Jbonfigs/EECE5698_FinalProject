#include <iostream>
#include <iomanip>
#include <cmath>

// Type definitions (must match hestonEuro.h)
typedef unsigned int uint;
typedef float data_t;

// Forward declaration of the top-level HLS function
void hestonEuro(data_t *pCall, data_t *pPut,
                data_t expect, data_t kappa, data_t variance, data_t correlation,
                data_t timeT, data_t freeRate, data_t volatility,
                data_t initPrice, data_t strikePrice);

// Function to print test results
void printResults(const char* testName, 
                  data_t call, data_t put, 
                  data_t S0, data_t K, 
                  data_t r, data_t T)
{
    std::cout << "\n========================================" << std::endl;
    std::cout << "Test: " << testName << std::endl;
    std::cout << "========================================" << std::endl;
    std::cout << std::fixed << std::setprecision(6);
    std::cout << "Stock Price (S0):    " << S0 << std::endl;
    std::cout << "Strike Price (K):    " << K << std::endl;
    std::cout << "Risk-free Rate (r):  " << r << std::endl;
    std::cout << "Time to Maturity (T):" << T << std::endl;
    std::cout << "----------------------------------------" << std::endl;
    std::cout << "Call Option Price:   " << call << std::endl;
    std::cout << "Put Option Price:    " << put << std::endl;
    std::cout << "Put-Call Parity Check:" << std::endl;
    
    // Put-Call Parity: C - P = S0 - K*e^(-r*T)
    data_t lhs = call - put;
    data_t rhs = S0 - K * expf(-r * T);
    data_t parity_error = fabsf(lhs - rhs);
    
    std::cout << "  C - P = " << lhs << std::endl;
    std::cout << "  S - K*e^(-rT) = " << rhs << std::endl;
    std::cout << "  Error = " << parity_error << std::endl;
    
    if (parity_error < 0.1) {
        std::cout << "  Status: PASS (Error < 0.1)" << std::endl;
    } else if (parity_error < 1.0) {
        std::cout << "  Status: WARNING (Error < 1.0)" << std::endl;
    } else {
        std::cout << "  Status: FAIL (Error >= 1.0)" << std::endl;
    }
    std::cout << "========================================\n" << std::endl;
}

int main()
{
    std::cout << "\n***************************************" << std::endl;
    std::cout << "* Heston European Option Pricing Test *" << std::endl;
    std::cout << "***************************************\n" << std::endl;
    
    int test_count = 0;
    int pass_count = 0;
    
    // Test 1: At-The-Money (ATM) Option
    {
        std::cout << "Running Test 1: At-The-Money Option..." << std::endl;
        
        // Stock parameters
        data_t S0 = 100.0f;          // Initial stock price
        data_t K = 100.0f;           // Strike price (ATM)
        data_t r = 0.05f;            // Risk-free rate (5%)
        data_t T = 1.0f;             // Time to maturity (1 year)
        data_t sigma = 0.2f;         // Initial volatility (20%)
        
        // Heston model parameters
        data_t theta = 0.04f;        // Long-term variance (expect)
        data_t kappa = 2.0f;         // Mean reversion speed
        data_t xi = 0.3f;            // Volatility of volatility (variance)
        data_t rho = -0.5f;          // Correlation between asset and volatility
        
        data_t call = 0.0f, put = 0.0f;
        
        hestonEuro(&call, &put, theta, kappa, xi, rho, T, r, sigma, S0, K);
        
        printResults("At-The-Money Option", call, put, S0, K, r, T);
        
        test_count++;
        if (call > 0 && put > 0 && fabsf((call - put) - (S0 - K * expf(-r * T))) < 1.0) {
            pass_count++;
        }
    }
    
    // Test 2: In-The-Money (ITM) Call Option
    {
        std::cout << "Running Test 2: In-The-Money Call Option..." << std::endl;
        
        data_t S0 = 110.0f;          // Stock price above strike
        data_t K = 100.0f;           // Strike price
        data_t r = 0.05f;
        data_t T = 1.0f;
        data_t sigma = 0.2f;
        
        data_t theta = 0.04f;
        data_t kappa = 2.0f;
        data_t xi = 0.3f;
        data_t rho = -0.5f;
        
        data_t call = 0.0f, put = 0.0f;
        
        hestonEuro(&call, &put, theta, kappa, xi, rho, T, r, sigma, S0, K);
        
        printResults("In-The-Money Call", call, put, S0, K, r, T);
        
        test_count++;
        // ITM call should have intrinsic value at least S0 - K*e^(-rT)
        data_t intrinsic = S0 - K * expf(-r * T);
        if (call > intrinsic && put > 0) {
            pass_count++;
        }
    }
    
    // Test 3: Out-of-The-Money (OTM) Call Option
    {
        std::cout << "Running Test 3: Out-of-The-Money Call Option..." << std::endl;
        
        data_t S0 = 90.0f;           // Stock price below strike
        data_t K = 100.0f;           // Strike price
        data_t r = 0.05f;
        data_t T = 1.0f;
        data_t sigma = 0.2f;
        
        data_t theta = 0.04f;
        data_t kappa = 2.0f;
        data_t xi = 0.3f;
        data_t rho = -0.5f;
        
        data_t call = 0.0f, put = 0.0f;
        
        hestonEuro(&call, &put, theta, kappa, xi, rho, T, r, sigma, S0, K);
        
        printResults("Out-of-The-Money Call", call, put, S0, K, r, T);
        
        test_count++;
        // OTM put should have intrinsic value at least K*e^(-rT) - S0
        data_t intrinsic = K * expf(-r * T) - S0;
        if (call > 0 && put > intrinsic) {
            pass_count++;
        }
    }
    
    // Test 4: Short Time to Maturity
    {
        std::cout << "Running Test 4: Short Time to Maturity..." << std::endl;
        
        data_t S0 = 100.0f;
        data_t K = 100.0f;
        data_t r = 0.05f;
        data_t T = 0.1f;             // 1.2 months (short term)
        data_t sigma = 0.2f;
        
        data_t theta = 0.04f;
        data_t kappa = 2.0f;
        data_t xi = 0.3f;
        data_t rho = -0.5f;
        
        data_t call = 0.0f, put = 0.0f;
        
        hestonEuro(&call, &put, theta, kappa, xi, rho, T, r, sigma, S0, K);
        
        printResults("Short Time to Maturity", call, put, S0, K, r, T);
        
        test_count++;
        if (call > 0 && put > 0) {
            pass_count++;
        }
    }
    
    // Test 5: High Volatility Scenario
    {
        std::cout << "Running Test 5: High Volatility Scenario..." << std::endl;
        
        data_t S0 = 100.0f;
        data_t K = 100.0f;
        data_t r = 0.05f;
        data_t T = 1.0f;
        data_t sigma = 0.5f;         // High initial volatility (50%)
        
        data_t theta = 0.25f;        // High long-term variance
        data_t kappa = 1.5f;
        data_t xi = 0.5f;            // High vol of vol
        data_t rho = -0.7f;          // Strong negative correlation
        
        data_t call = 0.0f, put = 0.0f;
        
        hestonEuro(&call, &put, theta, kappa, xi, rho, T, r, sigma, S0, K);
        
        printResults("High Volatility", call, put, S0, K, r, T);
        
        test_count++;
        if (call > 0 && put > 0) {
            pass_count++;
        }
    }
    
    // Test 6: Low Volatility Scenario
    {
        std::cout << "Running Test 6: Low Volatility Scenario..." << std::endl;
        
        data_t S0 = 100.0f;
        data_t K = 100.0f;
        data_t r = 0.05f;
        data_t T = 1.0f;
        data_t sigma = 0.1f;         // Low initial volatility (10%)
        
        data_t theta = 0.01f;        // Low long-term variance
        data_t kappa = 3.0f;
        data_t xi = 0.1f;            // Low vol of vol
        data_t rho = -0.3f;
        
        data_t call = 0.0f, put = 0.0f;
        
        hestonEuro(&call, &put, theta, kappa, xi, rho, T, r, sigma, S0, K);
        
        printResults("Low Volatility", call, put, S0, K, r, T);
        
        test_count++;
        if (call > 0 && put > 0) {
            pass_count++;
        }
    }
    
    // Summary
    std::cout << "\n***************************************" << std::endl;
    std::cout << "* Test Summary" << std::endl;
    std::cout << "***************************************" << std::endl;
    std::cout << "Total Tests: " << test_count << std::endl;
    std::cout << "Passed:      " << pass_count << std::endl;
    std::cout << "Failed:      " << (test_count - pass_count) << std::endl;
    std::cout << "***************************************\n" << std::endl;
    
    if (pass_count == test_count) {
        std::cout << "All tests PASSED!" << std::endl;
        return 0;
    } else {
        std::cout << "Some tests FAILED!" << std::endl;
        return 1;
    }
}
