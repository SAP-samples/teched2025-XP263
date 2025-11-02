# Exercise 8 - Cost and Usage Overview - Preview - Bonus (approx. 5-7 minutes)

## Exercise 8.1 - Introduction

As promised, you can now preview the new **Cost and Usage Overview** page, which is currently in a non-productive (preview) state. The goal of this **Overview** page is to provide a centralized view of key insights and recommendations for **BTP FinOps**. You can explore further details by expanding specific views or navigating to relevant links throughout the interface.

Some of the information introduced earlier in this exercise, such as prepaid quota details, top-cost service plans, and subaccounts, is now consolidated and visible on this **Overview** page for quick access and monitoring.

> [!WARNING]
> This is the current state of planning and **may be changed by SAP at any time**. The features and interface shown here are subject to modification before general availability.


## Exercise 8.2 - Accessing the Preview

To access the preview version of the Cost and Usage Overview:

1. **Open the following link** in a browser. It **contains an additional special parameter** that provides access to the preview of the Overview tab for Apex Holdings account: <https://emea.cockpit.btp.cloud.sap/cockpit/?idp=ainfvn15r.accounts.ondemand.com&teched=true&dashboard=true#>
   
   **Alternatively**, if you're already logged in, you can modify the account URL by adding `&dashboard=true#` after `teched=true`.

2. Log in using the same user credentials provided at the beginning of the hands-on session:
   - Enter the User name: `XP263-XXX@education.cloud.sap` (where XXX is your workshop place number)
   - Enter the password for your user as provided to you at the beginning of the workshop.

3. In the BTP Cockpit, navigate to the Costs and Usage page using the left navigation pane.
4. You will see the new **"Overview"** tab displayed by default instead of the traditional Billing view.
5. Review the **Monthly cost summary** card – see the “Total forecasted cost for current month”, note predicted increase compared to last month.
6. Review **Last Month's Prepaid Quota Consumption** and view in the Billing tab.This provides a quick overview of how much of your prepaid quota was utilized in the previous month and enables to drill into detailed prepaid quota consumption data.
7. Review the **Cost and Usage Recommendations** and follow the links:
   - Budgets Exceeded - shows which subaccounts or cost centers have exceeded their allocated budgets
   - Cloud Credit Overage Forecasted - presents a recommendation if the system predicts you will exceed your cloud credit allocation before the contract period ends
   - Cost Spikes - identifies unusual increases in costs compared to historical patterns

>[!NOTE]
>These recommendations are generated automatically based on your account's cost patterns and configured thresholds. Acting on these recommendations promptly can help prevent budget overruns and optimize spending.

8.	Review the **Cost Breakdown** for service plans and subaccounts - provides a quick comparison of your highest-cost item. Use this breakdown to focus your optimization efforts on the areas with the greatest potential impact.
9.	Review the **Cost Distribution** pie charts for service plans and subaccounts - provides visualizations at-a-glance view of how costs are distributed across your global account. Understanding cost distribution helps you balance your cloud portfolio and identify opportunities for consolidation or optimization.

## Summary

### 🎯 Key Takeaways

- ✅ Explore the new Overview tab (preview) - central entry point for FinOps in SAP BTP with consolidated cost intelligence
- ✅ Monitor monthly cost summaries, trends, forecasts, and prepaid quota consumption through visual charts and breakdowns
- ✅ Act on automated recommendations for budget exceedances, cloud credit overages, and cost spikes
- ✅ Navigate between Overview and Billing views for deeper investigation and analysis

> [!TIP]
> This preview gives you an early look at the evolving BTP FinOps experience. 

---

[← Previous: Exercise 7 - Optimization](../ex7/) | [Continue to: Exercise 9 - Export Excel (Optional) →](../ex9/)
