# Exercise 2 - Introduction to FinOps exercises (approx. 5 minutes)

## Exercise 2.1 - Overview

In Exercise 1, you previously set up the initial Apex Holdings account structure.

Now, several years have passed, Apex Holdings has expanded and acquired new companies, which have become its subsidiaries (represented as directories). In this exercise, you'll continue building on that scenario by taking on the roles of **Apex Holdings administrator and FinOps controller**.

During this time, Apex Holdings has also signed a major **CPEA contract** that extends coverage to all its subsidiaries.

This exercise demonstrates **FinOps capabilities** that are publicly available to all customers. At the end, you'll explore a preview of the **Cost and Usage Overview** page, which is currently in a non-productive (preview) state.

> [!NOTE]
> The data used in this exercise is **mock data created specifically for TechEd**. All costs and names shown are for demonstration purposes only and should be disregarded.

## Exercise 2.2 - Getting Started

1. **Open the following link** in a browser. It **contains a special parameter** that provides access to the Apex Holdings SAP BTP account with mock data: <https://emea.cockpit.btp.cloud.sap/cockpit/?idp=ainfvn15r.accounts.ondemand.com&teched=true#>
2. Enter the user name `XP263-XXX@education.cloud.sap`, where `XXX` is the number of your workshop place. For example: XP263-000@education.cloud.sap
3. Enter the password for your user as provided to you at the beginning of the workshop.

This will open the **BTP Cockpit** with the **Global Account Administrator** role collection and mocked data for Apex Holdings.

4. In the **BTP Cockpit**, under the left pane -> navigate to the **Account Explorer** and choose the **Directories and Subaccounts** tab. 

5. Review the account structure including **Subsidiaries**, represented as directories

6. Make sure under each Subsidiary, you see **DEV**, **TEST** and **PROD** environments/stages represented as directories.

7. Make sure under each environment folder, you see the dedicated applications represented as subaccounts.

8. Each subaccount has 5 **Labels** representing the **Contact Person**, **Cost Center**, **Department**, **Environment** and **Region**.

   <details>
   <summary><b>What are labels?</b></summary>

   **Labels** are user-defined key:value pairs that you can assign to various entities (such as directories or subaccounts) in SAP BTP to categorize and identify them more easily within your global account. They enable you to organize and filter entities, supporting account management and cost aggregation. Labels are especially useful for accounts without a well-defined structure (for example, those that evolved over time).

   </details>


9. Try out label filtering by entering ContactPerson in the search box and choose "ContactPerson :alex.yamamoto@apex.com". You will see a filtered list of the account structure including the subaccounts with this label.

## Summary

### 🎯 Key Takeaways

- ✅ Access the Apex Holdings mock account to explore a real-world BTP account structure and FinOps capabilities
- ✅ Understand the Apex Holdings hierarchical structure (Subsidiaries → Environments/Stages → Applications)
- ✅ Learn how labels categorize and filter entities within the global account for better organization and cost tracking

---

[Continue to: Exercise 3 - Billing verification →](../ex3/)
