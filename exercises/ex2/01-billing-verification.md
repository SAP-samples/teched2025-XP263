# Exercise 2.1 - Billing verification

## Exercise 2.1.1 - Introduction

The **Balance Statement** (available in **SAP for Me**) is the starting point for cross-checking the **BTP** cost information. It is recommended to verify the **Balance Statement** monthly against the **BTP Cockpit Billing** view. After completing this verification, you can proceed to investigate and further analyze cost details within the **BTP Cockpit**.

You can use the **BTP Cockpit Billing** view to display, monitor, and analyze your monthly charges of billable services, which have been consumed by the subaccounts in your global account over the last 12 months. The **Billing** view is split into two perspectives:

- **View by Service** – more suitable for billing verification as it presents all the services ordered as in the balance statement to enable easy analysis of the service costs and usage.
- **View by Account** – better suited for cross charging as it presents the account hierarchy including subaccounts and directories to enable analysis of the account entity costs and usage.

## Exercise 2.1.2 - Orientation

![BTP Cockpit Costs and Usage](images/01-billing-verification/btp-cockpit-costs-and-usage-overview.jpg)

1. In the **BTP Cockpit**, under the left pane navigate to the last page -> **Costs and Usage**
2. Click on this ![hamburger menu icon](images/01-billing-verification/hamburger.png) to collapse the left pane and expand the viewing area.
3. In the header section, within the **Global Account Info** card (card on the left), click the **"Billing Statement Information"** link. This link directs you to **SAP for Me**, where you can download the **Balance Statement**. For this exercise, there is no need to download the Balance Statement, as we have provided screenshots for reference.
4. In the same card, click the link **"Important information about your billing and usage data"**.
5. You will see that the global account is licensed for both the **consumption-based** and **subscription-based** commercial models. This means that billing is structured so that the **prepaid quota** from your subscription is utilized first, after which any excess usage is charged under the **consumption-based model**.
6. In the header, locate the **Cloud Platform Enterprise Agreement** card (card on the right), which displays information about **Cloud Credits**, including costs, status, and trends.
7. In the **Costs and Usage** header, set the **Month** filter to the previous month.

## Exercise 2.1.3 - Compare the Balance Statement and SAP BTP Cockpit Information

For this exercise, screenshots from the October 2025 **Balance Statement** are provided.
Note: The **Balance Statement** is divided into several sections, indicated by the blue headings.

![Balance Statement Comparison](images/01-billing-verification/billing-view-by-service-with-cost-summary.jpg)

1. In the **Costs and Usage**, the default view displays **Billing → View By Service**. The list is sorted automatically by **Product (SKU)**, matching the order in the **Balance Statement**.
2. This view includes both services with and without costs for this month (see **List Price** column). The balance statement, however, displays only services with incurred costs.
3. To focus on services with actual charges, select **"Show only services with charged usage."** Note that all services with cost of 0 will disappear from the list.
4. Compare the first three services listed in the **Balance Statement** under the **"Total Consumption"** section (see #1 in the screenshot below) with the corresponding entries in **Costs and Usage**. Compare the **Usage**, **Prepaid Quota**, and **Charged Usage** columns. If you are unsure what these columns represent, click the information icon on the **Costs and Usage** page for detailed explanations.

   <img src="images/01-billing-verification/balance-statement-total-consumption-section.jpg" alt="Total Consumption Services" width="75%">

5. Compare the first three services in the **Balance Statement** under the **"Cloud Platform Enterprise Agreement"** section (see #2 in the screenshot below) with the **Costs and Usage** page by reviewing the **List Price** column.

   <img src="images/01-billing-verification/balance-statement-cpea-section.jpg" alt="Cloud Platform Enterprise Agreement Services" width="75%">

> [!NOTE]
> The **Costs and Usage** page aggregates the two sections from the balance statement into a single view. This enables you to see the information per service together and drill down into the details of each service to better understand how its costs were generated.

6. Compare the **'Total net value of service consumed'** in the balance statement (#3 in screen shot below) with the data in the **Cost and Usage** page. In the **Cost and Usage** header, you may find this information by expanding the **Cloud Platform Enterprise Agreement** card (card on the right). To view cloud credits used in October, hover over the October bar.
7. Compare the **'Closing Cloud Credit balance as of 30, Oct 2025'** in the balance statement (#3 in screen shot below) with the information in **Cloud Platform Enterprise Agreement** card. In the card, you will find the cloud credits for the current period:
   - Cloud credits allocated: $8.3 M
   - Cloud credits used: $5.6 M
   - This means the remaining cloud credits: $2.7 M ($8.3 M − $5.6 M) like in the balance statement.

> [!NOTE]
> Since there are remaining cloud credits, the balance statement shows a 'Net Overage Amount' of 0. This indicates there are no overages, and therefore you can see in the "Payment Summary", no additional costs to be paid.

   <details>
   <summary>Did the billing verification confirm that all charges are accurate?</summary>

   **Yes**

   The billing verification confirms that all charges are accurate. The data in the BTP Cockpit Costs and Usage page matches the Balance Statement across all sections, including total consumption, cloud credits usage, and prepaid quota. This verification establishes confidence in the billing data and provides a solid foundation for further cost analysis and optimization efforts.
   </details>

   <img src="images/01-billing-verification/balance-statement-cloud-credits-payment-summary.jpg" alt="Cloud Credits and Payment Summary" width="75%">

## Exercise 2.1.4 - Analyze the Overall Global Account Cost Trend

1. Scroll down to view the graph presenting the **Global Account - Cost Summary** and choose **View By: List Price**. Here you may see the cost trend of the global account costs for the last 12 months.

   <details>
   <summary>Which month has the highest costs over the last 12 months?</summary>

   **October**

   October represents the previous month and shows the highest costs over the last 12 months, indicating a significant increase in consumption. This trend warrants further investigation to understand the drivers behind the cost increase, which will be explored in the next exercise on monitoring and analyzing costs.
   </details>

2. Hover to see the estimated costs in November.

> [!NOTE]
> In November (current month), the estimated costs are displayed as striped bars. These values cover the period between the last balance statement and today. They are considered estimates because they are based on raw resource usage data before final aggregation for billing (not forecast values). Once the billing cycle closes and a new Balance Statement is issued, the values are finalized and will no longer appear as striped bars.

## Summary

### 🎯 Key Takeaways

- ✅ Navigate and compare "View by Service" and "View by Account" perspectives for billing verification
- ✅ Verify Balance Statement accuracy by reconciling with BTP Cockpit data (services, cloud credits, prepaid quotas)
- ✅ Analyze global account cost trends over 12 months to identify spending patterns and anomalies
- ✅ Understand billing components: prepaid quota, charged usage, cloud credits, and cost forecasting

Following Apex's previous cost reduction project, a steady increase in costs has been observed from June to October. We will explore the reasons behind this trend in the next section.

---

[← Previous: TechEd - Apex Holdings Scenario](00-intro.md) | [Continue to: Exercise 2 - Monitoring cost and consumption →](02-monitoring-costs.md)
