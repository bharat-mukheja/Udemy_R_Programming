"You have been supplied with two vectors of data: monthly revenue and monthly expenses for the financial year in question.Your task is to calculate the following financial metrics:
- profit for each month
- profit after tax for each month (the tax rate is 30%)
- profit margin for each month - equals to profit a after tax divided by revenue
- good months - where the profit after tax was greater than the mean for the year - bad months - where the profit after tax was less than the mean for the year
- the best month - where the profit after tax was max for the year
- the worst month - where the profit after tax was min for the year

All results need to be presented as vectors.
Results for dollar values need to be calculated with $0.01 precision, but need to be presented in Units of $1,000 (i.e. 1k) with no decimal points.
Results for the profit margin ratio need to be presented in units of % with no decimal points."

revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

profit <- revenue - expenses
profit_after_tax <- profit * (1-0.3)
profit_margin <- round(profit_after_tax*100 / revenue)

mean_profit <- mean(profit_after_tax)
good_months <- (profit_after_tax - mean_profit) > 0
bad_months <- (profit_after_tax - mean_profit) < 0

good_months_names <- month.name[good_months]
bad_months_names <- month.name[bad_months]

best_month <- month.name[profit == max(profit)]
worst_month <- month.name[profit == min(profit)]
