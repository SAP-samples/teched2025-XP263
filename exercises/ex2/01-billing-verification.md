# Exercise 1 - Billing Verification

## Overview

Verify Billing vs. Balance Statement: The balance statement (available in SAP for Me) is the starting point for your cross-checking the BTP cost information. Verifying your balance statement is recommended to be done monthly once the balance statement has been generated. As the next step you may investigate and further analyze the costs of the BTP Cockpit.

You can use the Billing view to display, monitor, and analyze your monthly charges of billable services, which have been consumed by the subaccounts in your global account over the last 12 months. The Billing view is split into two perspectives:

- **View by Service** – more suitable for billing verification as it presents all the services ordered as in the balance statement to enable analysis of the service costs and usage.
- **View by Account** – better suited for cross charging as it presents the account hierarchy including subaccounts and directories to enable analysis of the account entity costs and usage.

## Orientation

![BTP Cockpit Costs and Usage](images/billing-verification/btp-cockpit-costs-and-usage-overview.jpg)

1. In the BTP Cockpit, under the left pane navigate to the last page -> Costs and Usage
2. In the header, inside the Global Account Info card (card on the left), click on the link "Important information about your billing and usage data".
3. You will see that your global account is licensed for both the consumption-based and subscription-based commercial models. Please note that this means that billing is structured such that the prepaid quota from your subscription is utilized first, after which any excess usage is charged under the consumption-based model.
4. In the header, you will also see the Cloud Platform Enterprise Agreement card (card on the right) presenting the Cloud Credits costs, status and trend.
5. In the Costs and Usage header, set the Month filter to the previous month.

## Compare the Balance Statement and SAP BTP Cockpit Information

For this exercise, we will provide screen shots from the October 2025 balance statement. Note: the balance statement is split into a few sections which you can see via the Blue headings.

![Balance Statement Comparison](images/billing-verification/billing-view-by-service-with-cost-summary.jpg)

1. In the Costs and Usage by default, you will see the Billing view -> View By Service display. The list is sorted according to the Product (SKU) as in the balance statement.
2. This view includes both services with and without costs on this month (see List Price column). The balance statement displays only services with costs.
3. To compare the costs, choose "Show only services with charged usage", note all services with cost 0 disappear.
4. Compare the first 3 services listed in the balance statement under section: 'Total Consumption' (see #1 in screen shot below) with the information in the Costs and Usage. Compare the Usage, Prepaid quota and Charged Usage columns. If you're unsure what these columns represent, click the information icon on the Costs and Usage page for details.

   <img src="images/billing-verification/balance-statement-total-consumption-section.jpg" alt="Total Consumption Services" width="75%">

5. Compare the first 3 services in the balance statement under section: 'Cloud Platform Enterprise Agreement' (see #2 in screen shot below), with the information in the Costs and Usage page by comparing the List Price column.

   <img src="images/billing-verification/balance-statement-cpea-section.jpg" alt="Cloud Platform Enterprise Agreement Services" width="75%">

> **Note:** As you may see on the Costs and Usage page, the table aggregates the balance statement sections into a single view. This enabled you to see the information per service together and drill down into the details of each service to better understand how its costs were generated.

6. Compare the 'Total net value of service consumed' in the balance statement (#3 in screen shot below) with the data in the Cost and Usage page. In the Cost and Usage header, you may find this information by expanding the Cloud Platform Enterprise Agreement card (card on the right). View the October cloud credits used by hovering over the October bar.
7. To compare the cloud credits, some background: as a holding company with multiple subsidiaries, Apex expanded its contract. The cloud credits for the current period are $8.3 M and the balance is $5.6 M. You may see this in the Cloud Platform Enterprise Agreement card. The remaining cloud credit are $2.7 M ($8.3 M - $5.6 M).
8. Compare the remaining cloud credits $2.7 M to the 'Closing Cloud Credit balance as of 30, Oct 2025' in the balance statement (#3 in screen shot below).

   > **Note:** Since there are remaining cloud credits, the balance statement shows a 'Net Overage Amount' of 0. This indicates there are no overages, and therefore you can see in the 'Payment Summary', no additional costs to be paid.

   <img src="images/billing-verification/balance-statement-cloud-credits-payment-summary.jpg" alt="Cloud Credits and Payment Summary" width="75%">

9. Did the billing verification confirm that all charges are accurate? **Yes / No**

## Analyze the Overall Global Account Cost Trend

1. Scroll down to view the graph presenting the Global Account - Cost Summary and choose View By: List Price. Here you may see the cost trend of the global account costs for the last 12 months.
2. Which month has the highest costs over the last 12 months? **October**
3. Hover to see the estimated costs in November.

> **Note:** In November (current month), the estimated costs are displayed as striped bars. These values cover the period between the last balance statement and today. They are considered estimates because they are based on raw resource usage data before final aggregation for billing. Once the billing cycle closes and the balance statement is issued, the values may change. Note: The estimated values are not forecast values.

Since the last cost reduction project in Apex, there has been a constant trend of cost growth. We'll investigate this in the next section.
