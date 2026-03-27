#!/bin/bash

# Simple Interest Calculator
# Formula: I = P * R * T / 100

echo "===== Simple Interest Calculator ====="
echo ""

# Get user input for Principal
echo "Enter Principal (P):"
read principal

# Get user input for Rate of Interest
echo "Enter Rate of Interest per annum (R%):"
read rate

# Get user input for Time Period
echo "Enter Time Period in years (T):"
read time

# Calculate Simple Interest
# Using bc for decimal calculations
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Calculate Total Amount
total=$(echo "scale=2; $principal + $interest" | bc)

# Display Results
echo ""
echo "===== Results ====="
echo "Principal Amount: ₹$principal"
echo "Rate of Interest: $rate% per annum"
echo "Time Period: $time years"
echo "Simple Interest: ₹$interest"
echo "Total Amount: ₹$total"
echo "======================"
