# TechEd - Apex Holdings Scenario

## Overview

In Exercise 1, you previously set up the initial Apex Holdings account structure.

Now, several years have passed, Apex Holdings has expanded and acquired new companies, which have become its subsidiaries (represented as directories). In this exercise, you'll continue building on that scenario by taking on the roles of **Apex Holdings administrator**.

During this time, Apex Holdings has also signed a major CPEA contract that extends coverage to all its subsidiaries.

This exercise demonstrates **FinOps capabilities** that are publicly available to all customers. At the end, you'll explore a preview of the Cost and Usage Overview page, which is currently in a non-productive (preview) state. *This is the current state of planning and may be changed by SAP at any time.

> [!NOTE]
> The data used in this exercise is **mock data created specifically for TechEd**. All costs and names shown are for demonstration purposes only and should be disregarded.

## Getting Started

1. Open the TechEd global account
   ```
   https://emea.cockpit.btp.cloud.sap/cockpit/?idp=glnfm15r.accounts.ondemand.com&teched=true#
   ```

2. Enter the user, where XXX is the number of your workshop place:
   ```
   XP263-XXX@education.cloud.sap
   ```
   For example:
   ```
   XP263-000@education.cloud.sap
   ```

3. Enter the password:
   ```
   Access$teched2025
   ```
   This will open the BTP Cockpit with the Global Account Administrator role collection and mocked data for Apex Holdings.

4. In the BTP Cockpit, under the left pane -> navigate to the Account Explorer

5. Review the account structure including Subsidiaries, represented as directories

6. Make sure under each Subsidiary, you see DEV, TEST and PROD environments represented as directories.

7. Make sure under each environment folder, you see the dedicated applications represented as subaccounts.

8. Each subaccount has 5 Labels representing the Contact Person, Cost Center, Department, Environment and Region.

   <details>
   <summary><b>What are labels?</b></summary>

   Labels are user-defined words or phrases that you can assign to various entities (such as directories, subaccounts) in SAP BTP to categorize them in your global account, to identify them more easily. They enable you to organize and filter your entities within your global account to assist in managing the account and cost aggregation. They are particularly useful for accounts that lack a well-defined structure (e.g., those built-up layer by layer over time).

   </details>

<br>

9. Try it out! Label filtering by entering ContactPerson in the search box and choose:
   ```
   ContactPerson :alex.yamamoto@apex.com
   ```
   You will see a filtered list of the account structure including the subaccounts with this label.

---

[Continue to: Exercise 1 - Billing verification →](01-billing-verification.md)
