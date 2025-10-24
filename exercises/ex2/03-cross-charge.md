# Exercise 2.3 - Cross charge / distribution

## Exercise 2.3.1 - Introduction

**Cross charging** is an accounting and cost allocation practice where one part of an organization charges another part of the same organization for services or resources provided. It's often used in large enterprises, especially holding companies or businesses with multiple subsidiaries, divisions, or departments. This internal process ensures costs are fairly distributed, and each business unit reflects the true expense of the services it consumes.

In this section, you will track costs within the Apex account hierarchy to effectively share and distribute expenses across the organization. This process primarily utilizes the account structure, along with search and filter options based on **labels**.

You may also use the option available to export the data to **Excel** for further tracking and cross charging. This optional exercise is available at the end of the hands-on session (if time permits).

![Account Hierarchy Overview](images/03-cross-charge/account-hierarchy.jpg)

## Exercise 2.3.2 - Track costs and cross charge using the Account hierarchy

1. In the **Costs and Usage** header, ensure that the filter for **Month** is set to the previous month.
2. Ensure that you are in the **Billing → View by Account** and click on the **collapse all** button to view the **Account hierarchy**.
3. You will see 5 **Subsidiaries** and a list of subaccounts. These are subaccounts that had cost or usage during the last 12 months and were deleted.
4. Select subsidiary **NexaTech Digital**, what is the cumulative list price in the last 12 months?

   <details>
   <summary>Answer</summary>

   **1,887,337.35 USD**

   *This represents the total cumulative list price for the NexaTech Digital subsidiary over the last 12 months, providing a comprehensive view of this business unit's BTP consumption costs. This information is valuable for cross-charging and understanding the cost distribution across subsidiaries.*
   </details>

   > [!TIP]
   > Scroll down to the graph and choose **View by: Cumulative List Price**.

   <br>

5. Unselect subsidiary NexaTech Digital.
6. What subaccount has the highest costs in the previous month?

   <details>
   <summary>Answer</summary>

   **HR App 4 – TEST**

   *This test environment subaccount has the highest costs in the previous month. It's noteworthy that a test environment is incurring such significant costs, which may indicate an opportunity for optimization or a need to understand why test workloads are so resource-intensive.*
   </details>

   > [!TIP]
   > Select "Show only subaccounts" and sort the List Price column in descending order to organize the services by cost.

   <br>

   1. Was the previous month the highest cost period for this SA in the last 12 months?

      <details>
      <summary>Answer</summary>

      **Yes**

      *The previous month (October) represents the peak cost period for this subaccount over the entire 12-month period. This sustained high cost trend suggests this is not a temporary spike but rather a consistent pattern that requires attention and potentially cost optimization measures.*
      </details>

      > [!TIP]
      > Select this subaccount and scroll down to the graph, choose View by: List Price.

      <br>

   2. Which is the costliest service plan they used?

      <details>
      <summary>Answer</summary>

      **SAP Integration Suite, advanced event mesh - Default**

      *This advanced event mesh service is the primary cost driver for the HR App 4 – TEST subaccount. The advanced event mesh is an event-driven architecture platform that can incur significant costs based on message volume and throughput, which may need to be reviewed for cost optimization opportunities in the test environment.*
      </details>

      > [!TIP]
      > In the graph choose View by: Cost Breakdown by Service Plans.

      <br>

   3. To investigate this subaccount – view the labels assigned to it.
   4. You may contact the owner of this subaccount to inform them that they have crossed the 40k USD in the previous month. Who is the contact person?

      <details>
      <summary>Answer</summary>

      **logan.ibrahim@apex.com**

      *Logan Ibrahim is the designated contact person for this subaccount and should be notified about the significant cost increase, particularly since the subaccount has exceeded 40,000 USD in the previous month. Reaching out to the contact person enables collaborative discussion about the cost drivers and potential optimization strategies.*
      </details>

      > [!TIP]
      > View the labels of this subaccount.

      <br>

   5. View the Environment for this subaccount. You might notice something interesting - the environment is labeled as "Test", indicating it's used for testing purposes. Typically, production environments incur higher costs than test environments.

7. Unselect the subaccount and deselect the "Show only subaccounts".

## Exercise 2.3.3 - Cross charge using Labels

1. Ensure that the filter for Month is set to the previous month.

2. As you saw, subaccount HR App 4 - TEST is in EMEA. What are the overall costs for the Apex EMEA region?

<details>
<summary><b>Hint</b></summary>

Type in the search box Region and choose Region: EMEA or you may search for EMEA

</details>

<details>
<summary><b>Answer</b></summary>

*362,710.05 USD*

</details>

<br>

3. Bookmark the Apex EMEA region for future tracking by clicking on the bookmark button Image. This enables to copy the link and save it for future use send it to others (e.g. EMEA region owner) for further tracking.

4. You also saw the Department for this subaccount is HR, what are the overall cost for HR in the previous month? In order to charge them back for their usage.

   <details>
   <summary>Answer</summary>

   **156,097.00 USD**

   *This is the total cost for the HR (Human Resources) department in the previous month. By using the Department label, you can accurately track and cross-charge costs back to the HR department for their BTP usage. This departmental cost view enables effective showback or chargeback processes, ensuring that each department is accountable for their cloud consumption.*
   </details>
   <br>

## Summary

### 🎯 Key Takeaways

- ✅ Navigate and analyze costs across organizational hierarchy (subsidiaries, directories, subaccounts) to compare distribution
- ✅ Use labels (Environment, Region, Department, Cost Center, Contact Person) to aggregate and filter costs for flexible reporting
- ✅ Calculate accurate costs for cross-charging and showback to business units, departments, or regions
- ✅ Identify cost anomalies and bookmark specific views for recurring tracking and transparent accountability

---

[← Previous: Exercise 2 - Monitoring cost and consumption](02-monitoring-costs.md) | [Continue to: Exercise 4 - Controlling Costs Using Budgets →](04-budgets.md)
