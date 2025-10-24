# Exercise 2.4 - Controlling Costs Using Budgets

## Exercise 2.4.1 - Introduction

In this section, you will learn to manage, control, and optimize cloud spending using **Budgets**. Budgets allow you to better control your global account spending and plan for future consumption by setting up budget limits for your global account in **SAP BTP**.

### How Budgets Work

The budget amount defined when creating a new budget considers the **consumption-based commercial model**. This means that any usage that falls within your **prepaid quota**, as defined by your **subscription-based** commercial agreement, is not evaluated by your budget. Only consumption that exceeds the prepaid quota and incurs additional charges is counted toward your budget.

> [!NOTE]
> **Budgets** track actual consumption charges, not prepaid quota usage. This helps you focus on controlling costs that directly impact your bill.

### Budget Thresholds

By default, each budget includes three budget thresholds defined for **80%**, **90%**, and **100%** of the budget amount. You can customize these thresholds by unchecking them or changing the percentage values to match your organization's needs.

### Alert Options

When budget thresholds are reached, multiple alert options are available (you can use all options or choose the ones that fit best):

1. **Visual Indicators**: In the Costs and Usage page, visual indicators show the threshold status (0-3 threshold exceedances) for quick at-a-glance monitoring.

2. **Automatic Email Alerts**: Automatically send alert emails to Global Account Administrators. This can be configured when creating a new budget.

   > [!WARNING]
   > Once a threshold has been exceeded, an email notification will be sent to **all** Global Account Administrators. If you don't want to send alert emails to all Global Account Administrators, remember to uncheck the alert thresholds at the end of this exercise.

3. **Custom Alerts with SAP Alert Notification Service**: Define custom alerts for specific recipients (e.g., subaccount admins or distribution lists), delivery channels like Microsoft Teams or Slack, and more.

   > [!TIP]
   > For more information, see: [How to enable SAP Alert Notification for SAP BTP](https://help.sap.com/docs/alert-notification/sap-alert-notification-for-sap-btp/alerting-events) and subscribe to the budget event: [Budget Threshold Exceedance Event (Beta)](https://help.sap.com/docs/alert-notification/sap-alert-notification-for-sap-btp/budget-threshold-exceedance-event). This link is also available in the budget creation screen.

## Exercise 2.4.2 - Creating Budgets

![Budget Creation Overview](images/04-budgets/budget-creation-overview.jpg)

In the **Costs and Usage** page, navigate to the **Budgets** tab to create three new budgets covering different scenarios.

## Exercise 2.4.3 - Scenario 1 - Cost-Based Budget for Global Account

In this scenario, you will create a cost-based budget that applies to your entire global account. By default, the budget scope is defined for the entire **Global Account (GA)**, and you should leave it as is.

### Steps

1. Click the **Create** button to start creating a new budget.
2. Enter a name, for example: `APEX Holdings costs`
3. No need to change the **Budget type**, since the default is **Cost** (based on list price data).

> [!NOTE]
> Cost-based budgets track the monetary value of your consumption at list price. This is the most common budget type for overall account management.

4. Enter amount: `600,000` USD
5. View the **history preview** below. You will see the budget amount and thresholds together with the actual costs and any exceedances over the past 12 months.

> [!TIP]
> The history preview is a powerful tool to validate whether your budget amount is appropriate based on historical trends. If the preview shows frequent exceedances, consider adjusting the budget amount.

6. No need to change the **date range** and **thresholds** (keep defaults).
7. Click **Create**.
8. You will see a new budget created in the Budgets table.

   **Are there any thresholds that have been exceeded for this budget?**

   <details>
   <summary>Answer</summary>

   **No**

   It is important to note that none of the thresholds have been exceeded because **budgets are evaluated on a monthly basis**. Exceedances from the previous month are not carried forward to the current month. Each month starts fresh with a clean threshold status.
   </details>
   <br>

9. Select the budget row and view the details panel on the right to verify the information you entered.
10. Review the budget configuration, including scope, amount, thresholds, and date range.

## Exercise 2.4.4 - Scenario 2 - Cost-Based Budget for Specific Subaccount

In this scenario, you will define a budget scope for a specific subaccount. This allows you to monitor and control spending at a more granular level. Let's create a budget for the subaccount with the highest costs in the previous month: **HR App 4 – TEST**.

### Steps

1. Click the **Create** button to create another budget.
2. Enter a name, for example: `HR App 4 TEST costs`
3. No need to change the **date range** and **Budget type** (the default is **Cost**).

   ![Budget Scope - Subaccount Selection](images/04-budgets/budget-scope-subaccount.jpg)

4. **Scope**:
   - Click on **Scope** to expand the filter options
   - Select filter type: **Subaccounts**
   - Click on the squared icon (see highlighted in screenshot above) to open the selection dialog
   - Search for: `HR App 4`
   - Click the expand icon (see highlighted in screenshot above) to see the matching subaccounts
   - Choose the subaccount: **HR App 4 – TEST**
   - Click **Select** and then **Apply**
   - View the history preview showing the HR App 4 – TEST cost trend for the last 12 months

> [!TIP]
> You can filter budgets by subaccounts, directories, services, or a combination of these. This flexibility allows you to create budgets aligned with your organizational structure and cost allocation needs.

5. **Amount**: Enter `40,000` USD
6. View the **history preview**. You will see the budget amount and thresholds together with the actual costs and any exceedances.
7. **Thresholds**: Change the threshold percentages to **20%**, **50%**, and **80%** to create more frequent alerts for this high-cost subaccount.
8. View the updated history preview with the new thresholds.

> [!NOTE]
> Custom threshold percentages are useful when you want earlier warnings for critical subaccounts or services. Lower thresholds (like 20%) provide earlier alerts, giving you more time to react.

9. Click **Create**.
10. You will see a new budget created in the Budgets table.

    **Are there any thresholds that have been exceeded?**

    <details>
    <summary>Answer</summary>

    **This depends on the current month's spending.**

    Review the threshold indicators in the Budgets table. If you see colored indicators (yellow, orange, or red), those thresholds have been exceeded. Remember that budgets evaluate the current month only, so previous month's exceedances don't carry over.
    </details>
    <br>

11. In the **Active Budgets** table, locate the row for the budget you just created.
12. Click the **"..."** menu (three dots) at the end of the row and choose **"View in Billing Tab"**.
13. You will be taken to the Billing view filtered to show only the costs for HR App 4 – TEST subaccount, allowing you to drill into the details.

## Exercise 2.4.5 - Scenario 3 - Charged Usage Budget for Specific Service

In this scenario, you will define a budget based on **charged usage** rather than cost. **Charged usage budgets** track the actual resource units consumed (e.g., compute hours, storage GB) rather than their monetary value. Let's create a budget for **SAP HANA Cloud**, which was the service with the highest costs in the previous month.

### Steps

1. Click the **Create** button to create a third budget.
2. Enter a name, for example: `HANA Cloud Capacity Units`
3. **Budget type**: Change from **Cost** to **Charged Usage**

> [!NOTE]
> Charged Usage budgets are useful when you want to track actual resource consumption independently of pricing fluctuations. This is particularly valuable for capacity planning and understanding usage patterns.

4. **Scope**:
   - Click on **Scope** to expand the filter options
   - Select filter type: **Service**
   - Click on the squared icon to open the selection dialog
   - Search for: `HANA Cloud`
   - Choose the service plan: **SAP HANA Cloud - HANA**
   - Click **Select** and then **Apply**
   - View the history preview showing the HANA Cloud - HANA usage trend for the last 12 months

5. **Amount**: Enter `150,000` (capacity units, not USD)
6. View the **history preview**. You will see the budget amount and thresholds together with the actual charged usage and any exceedances.
7. No need to change the **date range** and **thresholds** (keep defaults).
8. Toggle **ON** the option to **"Automatically send alerts to global account admins"**

> [!WARNING]
> Remember: When this option is enabled, all Global Account Administrators will receive email notifications when thresholds are exceeded. Consider whether this is appropriate for your organization before enabling.

9. Click **Create**.
10. You will see a new budget created in the Budgets table with type **Charged Usage**.

    **Are there any thresholds that have been exceeded?**

    <details>
    <summary>Answer</summary>

    **This depends on the current month's usage.**

    Check the threshold indicators in the Budgets table. Since we set the amount to 150,000 units, compare this against the current month's actual usage shown in the budget row. If usage has exceeded 80%, 90%, or 100% of 150,000 units, those thresholds will be marked as exceeded.
    </details>
    <br>

11. When the 80% threshold is exceeded, Global Account Administrators will receive a Budget Alert Notification email similar to this:

> [!NOTE]
> The email notification includes:
> - Budget name and type
> - Threshold percentage that was exceeded
> - Current usage vs. budget amount
> - Link to view details in the BTP Cockpit
>
> These emails help ensure that budget owners are promptly informed and can take corrective action if needed.

## Exercise 2.4.6 - Budget Management Best Practices

After creating your budgets, consider these best practices:

- **Regular Review**: Review your budgets monthly to ensure they remain aligned with business needs
- **Threshold Tuning**: Adjust threshold percentages based on how much advance warning you need
- **Alert Management**: At the end of this exercise, if you don't want to continue receiving alerts, uncheck the alert thresholds or delete test budgets
- **Documentation**: Document the purpose of each budget and who is responsible for acting on alerts
- **Scope Refinement**: Start with broad budgets (global account level) and add more granular budgets (subaccount or service level) as needed

## Summary

### 🎯 Key Takeaways

- ✅ Create and configure budgets with Cost-based (monetary) or Charged Usage (resource unit) types scoped to Global Account, subaccounts, or services
- ✅ Configure custom threshold percentages and alert options (email, SAP Alert Notification Service for Teams/Slack)
- ✅ Use budget history previews to validate amounts and visual indicators for at-a-glance threshold monitoring
- ✅ Understand budgets track consumption-based charges monthly (excluding prepaid quota) and drill into details via Billing tab

These capabilities enable you to control and optimize SAP BTP costs effectively by providing early warnings before spending gets out of control.

> [!TIP]
> Budgets are most effective when combined with regular cost reviews, optimization initiatives, and clear ownership of cost centers. Consider establishing a monthly FinOps review meeting to discuss budget status and optimization opportunities.

---

[← Previous: Exercise 5 - Optimization](05-optimization.md) | [Continue to: Exercise 3 - Cross charge / distribution →](03-cross-charge.md)
