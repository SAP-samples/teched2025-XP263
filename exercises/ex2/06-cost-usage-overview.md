# Exercise 6 - Cost and Usage Overview (Preview - Bonus)

## Introduction

As promised, you can now preview the new Cost and Usage Overview page, which is currently in a non-productive (preview) state. This new interface represents SAP's vision for providing centralized, actionable insights for BTP FinOps management.

> [!WARNING]
> This is the current state of planning and **may be changed by SAP at any time**. The features and interface shown here are subject to modification before general availability.

The goal of this Overview page is to provide a centralized view of key insights and recommendations for BTP FinOps. You can explore further details by expanding specific views or navigating to relevant links throughout the interface.

Some of the information introduced earlier in this exercise, such as prepaid quota details, top-cost service plans, and subaccounts, is now consolidated and visible on this Overview page for quick access and monitoring.

## Accessing the Preview

To access the preview version of the Cost and Usage Overview:

1. Use the following URL with the preview parameters enabled:
   ```
   https://emea.cockpit.btp.cloud.sap/cockpit/?idp=ainfvn15r.accounts.ondemand.com&teched=true&dashboard=true#
   ```

   **Alternatively**, if you're already logged in, you can modify the TechEd global account URL by adding `&dashboard=true#` after `teched=true`.

2. Log in using the same user credentials provided at the beginning of the hands-on session:
   - User: `XP263-XXX@education.cloud.sap` (where XXX is your workshop place number)
   - Password: `Access$teched2025`

3. In the BTP Cockpit, navigate to the Costs and Usage page using the left navigation pane.
4. You will see the new **"Overview"** tab displayed by default instead of the traditional Billing view.

> [!TIP]
> Bookmark this preview URL if you want to explore the new interface further during the session.

## Exploring the Cost and Usage Overview

### Monthly Cost Summary

1. Review the **Monthly Cost Summary** card at the top of the page.
2. Note the "Total forecasted cost for current month" value.
3. Observe the predicted increase or decrease compared to last month.

> [!NOTE]
> The forecasting feature uses historical consumption patterns and current trends to estimate end-of-month costs, helping you anticipate budget impacts early in the billing cycle.

### Prepaid Quota Consumption

1. Review the **"Last Month's Prepaid Quota Consumption"** section.
2. This provides a quick overview of how much of your prepaid quota was utilized in the previous month.
3. Click the link to **"View in the Billing tab"** to drill into detailed prepaid quota consumption data.

> [!TIP]
> Monitoring prepaid quota consumption helps ensure you maximize the value of your committed spend before incurring overage charges.

### Cost and Usage Recommendations

The recommendations section provides actionable insights to help you manage costs proactively. Review and explore each recommendation:

1. **Budgets Exceeded**
   - Shows which subaccounts or cost centers have exceeded their allocated budgets
   - Click the link to view details and take corrective action

2. **Cloud Credit Overage Forecasted**
   - Alerts you if the system predicts you will exceed your cloud credit allocation before the period ends
   - Allows you to plan for additional funding or optimization efforts

3. **Cost Spikes**
   - Identifies unusual increases in costs compared to historical patterns
   - Helps you quickly investigate and address unexpected consumption

> [!NOTE]
> These recommendations are generated automatically based on your account's cost patterns and configured thresholds. Acting on these recommendations promptly can help prevent budget overruns and optimize spending.

### Cost Breakdown

1. Review the **"Cost Breakdown"** section for both service plans and subaccounts.
2. This view provides a quick comparison of your highest-cost items.
3. Identify which services and subaccounts are driving the majority of your costs.

> [!TIP]
> Use this breakdown to focus your optimization efforts on the areas with the greatest potential impact.

### Cost Distribution

1. Review the **"Cost Distribution"** pie charts for both service plans and subaccounts.
2. These visualizations provide an at-a-glance view of how costs are distributed across your global account.
3. Identify concentration risks where a single service or subaccount represents a disproportionate share of total costs.

> [!NOTE]
> Understanding cost distribution helps you balance your cloud portfolio and identify opportunities for consolidation or optimization.

## Summary

In this section, you have learned:

- Explore the new Overview tab, the central entry point for FinOps in SAP BTP
- Access preview features currently under development by SAP
- View the monthly cost summary including current spend, trends vs. past periods, and forecasted costs
- Monitor cost distribution and breakdown for services and subaccounts at a glance
- Review the status of last month's prepaid quota consumption
- Act on proactive recommendations regarding budgets, forecast, and cost spikes
- Navigate between the Overview and detailed Billing views for deeper analysis

> [!TIP]
> This preview gives you an early look at how SAP is evolving the BTP FinOps experience. Consider providing feedback to SAP through your account team to help shape the future of these capabilities.

---

Continue to: [Exercise 7 - Export Excel (Optional)](07-export-excel.md)
