# Exercise 6 - Controlling Costs Using Budgets

## Exercise 6.1 - Introduction

In this section, you will learn to manage, control, and optimize cloud spending using **Budgets**. Budgets allow you to better control your global account spending and plan for future consumption by setting up budget limits for your global account in **SAP BTP**. Note: Budgets track actual consumption charges, not prepaid quota usage. This helps you focus on controlling costs that directly impact your bill.


 <details>
   <summary><b>What are Budget Thresholds and Alert options?</b></summary>

### Budget Thresholds

By default, each budget includes three budget thresholds defined for **80%**, **90%**, and **100%** of the budget amount. You can customize these thresholds by unchecking them or changing the percentage values to match your organization's needs.

### Alert Options

When budget thresholds are reached, multiple alert options are available (you can use all options or choose the ones that fit best):

1. **Visual Indicators**: In the Costs and Usage page, visual indicators show the threshold status (0-3 threshold exceedances) for quick at-a-glance monitoring.

2. **Automatic Email Alerts**: Automatically send alert emails to Global Account Administrators. You can enable this option when creating a new budget. Once a defined threshold is exceeded, an email notification will be sent to all Global Account Administrators. If you prefer not to send alert emails to all administrators, keep the default setting (disabled).

3. **Custom Alerts with SAP Alert Notification Service**: Define custom alerts for specific recipients (e.g., subaccount admins or distribution lists), delivery channels like Microsoft Teams or Slack, and more.

For more information, see: [How to enable SAP Alert Notification for SAP BTP](https://help.sap.com/docs/alert-notification/sap-alert-notification-for-sap-btp/alerting-events) and subscribe to the budget event: [Budget Threshold Exceedance Event (Beta)](https://help.sap.com/docs/alert-notification/sap-alert-notification-for-sap-btp/budget-threshold-exceedance-beta?version=Cloud). This link is also available in the budget creation screen.
 </details> 


## Exercise 6.2 - Create Cost-Based Budget for Specific Subaccount

In this scenario, you will create a cost-based budget. By default, the budget scope applies to the entire Global Account. In this case, update the scope to subaccount HR App 4 – TEST (the highest-cost subaccount in the previous month). This allows you to monitor and control spending at a more granular level.

![Budget Creation Overview](images/budget-creation-overview.jpg)

### Steps

1. In the Costs and Usage page, navigate to the **Budgets** tab to create a new budget.
2. Click the **Create** button to create a budget.
3. Enter a name, for example: `HR App 4 TEST costs`
4. Keep the default Cost budget type. It tracks your consumption's monetary value at list price. No need to change the date range.

   
   <br>


   ![Budget Scope - Subaccount Selection](images/budget-scope-subaccount.jpg)

6. **Scope**:
   - Select filter type: **Subaccounts**
   - Click on the squared icon (see highlighted in screenshot above) to open the selection dialog
   - Search for: `HR App 4`
   - Click the expand icon (see highlighted in screenshot above) to see the matching subaccounts
   - Choose the subaccount: **HR App 4 – TEST**
   - Click **Select** and then **Apply**
   - View the history preview showing the HR App 4 – TEST cost trend for the last 12 months

   Note: You can scope budgets by subaccounts, services, or a combination of them. This flexibility allows you to create budgets aligned with your organizational structure and cost allocation needs.

7. **Amount**: Enter `40,000` USD
8. **View the History Preview**. You will see the budget amount and Thresholds together with the Actual costs and exceedance over the past 12 months.
9. **Thresholds**: Change the threshold percentages to **20%**, **50%**, and **80%** to create more frequent alerts for this high-cost subaccount.
10. View the updated history preview with the new thresholds.
11. Click **Create**.
12. You will see a new budget created in the Budgets table.

    **Are there any thresholds that have been exceeded?**

    <details>
    <summary>Answer</summary>

    **Yes.**

    *Review the threshold indicators in the Budgets table. Remember that budgets evaluate the current month only, so previous month's exceedances don't carry over.*
    </details>

13. In the Active Budgets table, choose the budget you just created and view the details to verify the information you entered when creating the Budget.
14. Choose to view it in the Billing Tab
    <details>
    <summary>Hint</summary>

    Via the '…' and choose 'View in Billing Tab'

    </details>

> [!Tip]
> You can also create budget based on **Charged Usage** rather than cost. **Charged Usage budgets** track the actual resource units consumed (e.g., compute hours, storage GB) rather than their monetary value. 


<!-- TODO: Add email picture here -->


## Summary

### 🎯 Key Takeaways

- ✅ Create and manage budgets to monitor cloud spending
- ✅ Understand Cost-based vs. Charged Usage budget types
- ✅ Define budget scopes by subaccounts or services
- ✅ Configure custom threshold percentages for alerts
- ✅ Understand how visual indicators and notifications help identify potential budget exceedances.
- ✅ Learn about using SAP Alert Notification Service for flexible, automated alert distribution.

---

[← Previous: Exercise 5 - Cross charge / cost allocation](../ex5/) | [Continue to: Exercise 7 - Optimization →](../ex7/)
