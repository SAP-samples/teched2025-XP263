# Exercise 7 - Optimization

## Exercise 7.1 - Introduction

In this section, you will learn to find cost and utilization optimizations that be done for the overall global accounts. You will not explore specific service-level optimizations, as these recommendations vary by individual service.

## Exercise 7.2 - Optimizing Cloud Credit Costs

In this scenario, you will learn how to use Cloud Credit forecasting to anticipate potential overages and plan your purchasing strategy accordingly.

![Cloud Credit Forecast](images/cloud-credit-forecast.jpg)

1. In the Costs and Usage page, locate the **Cloud Platform Enterprise Agreement** card in the header (the card on the right).
2. Review the current cloud credits cost to see if you have exceeded or are approaching the limit.
3. Switch on the **"Show Forecast"** control to enable predictive analysis.

> [!TIP]
> The forecast uses historical consumption patterns and current trends to predict future cloud credit usage throughout your contract period.

4. Expand the card by clicking the expand icon to view the detailed monthly trend graph.
5. Review the forecasted monthly trend and identify when costs are projected to exceed your cloud credit allocation.

   **When does the forecast predict cost overage?**

   <details>
   <summary>Answer</summary>

   **February**

   *The forecast predicts that cloud credit overage will occur in February, approximately 3-4 months from now. This early warning provides valuable lead time to take proactive action, such as purchasing additional cloud credits at discounted rates or implementing cost optimization measures to avoid expensive list-price overage charges.*
   </details>
   <br>


## Exercise 7.3 - Optimizing Subscription and Consumption Commercial Models

In this scenario, you will learn how to manage and track both **subscription** and **consumption** commercial models for your **BTP** services to ensure you're using the most cost-effective approach.

![Prepaid Quota Overview](images/prepaid-quota-overview.jpg)

1. In the Costs and Usage header, ensure that the Month filter is set to **the previous month**. This is the month where you identified an increase in overall global account costs in Exercise 2.
2. By default, you should see the Billing view → **View By Service** display.
3. Make sure **"Show only services with charged usage"** is **NOT checked** (unchecked).
4. Sort the **Prepaid Quota** column in **descending order** to see services with the highest quotas at the top.
5. You will notice several services that include a prepaid quota. This refers to the amount your global account is entitled to consume in advance from your subscription-based commercial model agreement. Any usage within this quota will not incur additional billing.
 
> [!NOTE]
> The Prepaid Quota refers to the prepaid quota of services that your global account is entitled to consume with no additional charge. It is beneficial to maximize the utilization of this quota.

6. Review the list and observe that most of these services (except one) have **Charged Usage** and **List Price** of 0, because their usage is lower than the prepaid quota. This means they are fully utilizing services covered by the subscription without incurring additional costs.
7. Select **Cloud Foundry Runtime - Standard**, which is the only service with both prepaid quota **and** a list price, indicating its usage has exceeded the prepaid quota.
8. Scroll down to the graph and choose **View by: Total Usage** to see the prepaid quota dotted line in the graph over the last 12 months.
9. Analyze the trend over the last 12 months for Cloud Foundry Runtime:
   - The prepaid quota started at **40 GB**
   - Usage started at **30 GB** for the first 2 months, then increased to **40 GB**
   - Recognizing this increase, the Apex controller purchased an additional **20 GB** of Cloud Foundry Runtime subscription, increasing the quota to **60 GB**
   - After several more months, usage has increased to **80 GB**, creating a **20 GB overage** that is being charged at consumption rates

> [!TIP]
> The dotted line in the graph represents your prepaid quota. When the solid usage line exceeds the dotted line, you're paying additional consumption-based charges for the overage.

10. **How can you optimize the costs for Cloud Foundry Runtime?**

   <details>
   <summary>Answer</summary>

   **Purchase an additional 20 GB of prepaid quota subscription**

   *By purchasing additional prepaid quota to cover the 20 GB overage, you can take advantage of subscription pricing (which is typically lower than consumption-based pricing) and reduce your overall costs. This approach is particularly cost-effective when the usage pattern is consistent and predictable.*

   </details>
   <br>

## Summary

### 🎯 Key Takeaways

- ✅ Track and forecast cloud credit usage to identify potential overages and plan costs proactively.
- ✅ Analyze prepaid quota utilization and identify services exceeding and under uage of quotas to manage spending more effectively.
- ✅ Use 12-month usage trends to distinguish baseline consumption from growth and make data-driven purchasing decisions

> [!TIP]
> Optimization is an ongoing process. Review your cloud credits and prepaid quota utilization monthly to catch trends early and make timely adjustments to your purchasing strategy.

---

[← Previous: Exercise 6 - Controlling Costs Using Budgets](../ex6/) | [Continue to: Exercise 8 - Cost and Usage Overview (Preview - Bonus) →](../ex8/)
