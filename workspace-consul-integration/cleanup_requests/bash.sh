#!/usr/bin/env bash
customer_name=$(awk -F',' '{ if ($1 = "Customer_Name") { print $2 } }' dev.csv)
echo "$customer_name-test"

customer_name=$(sed -e 's/^"//' -e 's/"$//' <<<"$customer_name")
echo "$customer_name-final"
# echo "$customer_name" | tr -d '"'