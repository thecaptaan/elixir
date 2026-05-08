defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    8.0 * hourly_rate
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    discountprice = before_discount *  (discount / 100.0)
    before_discount - discountprice
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    monthly_price = daily_rate(hourly_rate) * 22
    discounted_prices = apply_discount(monthly_price, discount)
    Float.ceil(discounted_prices) |> trunc()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    daily_rates = daily_rate(hourly_rate)
    after_discount = apply_discount(daily_rates, discount)
    result = budget / after_discount
    Float.floor(result,1)
  end
end
