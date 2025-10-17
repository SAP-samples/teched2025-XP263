# TechEd - Apex Holdings Scenario

## Overview

In this guided exercise, participants will take on the roles of Apex Holdings administrators and a FinOps controller.

Apex Holdings is a sample global enterprise created to simulate SAP BTP administration and FinOps practices. The company operates across diverse industries - such as health, retail, energy, etc. - each represented as Subsidiary with its own BTP directory.

Within each Subsidiary, you'll find departments such as finance, sales, HR, IT, and operations with subaccounts spanning regions like EMEA, North America, APAC, LATAM, and the Middle East (represented as labels).

Each Subsidiary manages its own dedicated applications, ranging from payroll and performance reviews in HR to revenue forecasting, logistics, and customer insights.

The overall account structure mirrors a real-world organization with production, test, and development environments (represented as directories) aligned to cost centers and contact persons (represented as labels).

The exercise demonstrates the capabilities available to all customers. At the end, you will explore a preview of the Cost and Usage Overview page (currently in a non-productive state).

> [!WARNING]
> *This is the current state of planning and may be changed by SAP at any time.*

> [!CAUTION]
> Please note: The data used in this exercise is mock data created specifically for TechEd. All costs and names shown are for demonstration purposes only and should be disregarded.

## Getting Started

> [!NOTE]
> You have been granted with Global Account Administrator role collection.

1. In the BTP Cockpit, under the left page -> navigate to the Account Explorer

2. Review the account structure including Subsidiaries, represented as directories

3. Under each Subsidiary, you will see the DEV, TEST and PROD environments represented as directories

4. Under each environment folder, you will see the dedicated applications represented as subaccounts

5. Each subaccount has 5 Labels representing the Contact Person, Cost Center, Department, Environment and Region. Labels are user-defined words or phrases that you can assign to various entities (such as directories, subaccounts) in SAP BTP to categorize them in your global account, to identify them more easily. They enable you to organize and filter your entities within your global account to assist in managing the account and cost aggregation. They are particularly useful for accounts that lack a well-defined structure (e.g., those built-up layer by layer over time).

6. Try it out by entering ContactPerson in the search box and choose "ContactPerson :alex.yamamoto@apex.com", you will see a filtered list of the account structure including the subaccounts with label: "ContactPerson :alex.yamamoto@apex.com"
