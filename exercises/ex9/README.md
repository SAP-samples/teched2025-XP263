# Exercise 9 - Export Excel - Optional (approx. 10 minutes)

## Exercise 9.1 - Introduction

As mentioned in the cross-charging exercise, you can continue analyzing, tracking, and cross-charging by using an **Excel** file exported from the **Costs and Usage** page. The export feature allows you to download data for the past 12, 24, or 36 months, providing flexibility for long-term cost analysis.

You can create a customized **Excel** export by applying filters such as subaccounts, labels, and services, and by adding additional columns and data. This enables you to tailor the exported data to your specific reporting needs. Additionally, the exported **Excel** file can be imported into third-party tools for further analysis and integration with your existing reporting infrastructure.

> [!NOTE]
> If time does not permit during this session, you may complete this exercise later using your own **SAP BTP** account. Ensure **labels** are properly assigned to your subaccounts beforehand to maximize the value of this exercise.

![Export Excel Custom Menu](images/export-excel-custom-menu.jpg)

## Exercise 9.2 - Scenario 1 - Share costs with a contact person

In this scenario, you will export cost data filtered by a specific contact person, allowing you to share relevant cost information with stakeholders who need to understand their team's expenses.

1. Navigate to the **Billing tab**.
2. In the **Costs and Usage** header, click **"Clear Filters"** to reset any existing filters.
3. In the **Month** filter, select **"Previous Month"**.
4. In the search box, type "ContactPerson" and using the auto-complete choose "ContactPerson alex.yamamoto@apex.com"
5. Launch the **Export** menu by clicking the small arrow near the **Export** button and select **"Custom..."**.
6. Verify that the time period is set to Oct 2025 (selected month) and the search filter shows: `Label Key:Value -- ContactPerson:alex.yamamoto@apex.com`
7. Keep the default settings in the export dialog.
8. Click **"Export"**.
9. Open the exported **Excel** file from your Downloads folder. Note that the exported data in the excel sheets: Global Account Costs, Subaccount Costs by Service is filtered by the  period and contact person you have defined.
10. In the Global Account Costs excel sheet, select column I (Cost) to see in the footer the sum of the costs for the contact person.
11. You can use this file to share with the contact person, helping them understand their costs and take appropriate actions if needed.

> [!NOTE]
> Similarly to the steps above, you can search and filter by services, subaccounts/directories, and other labels to generate customized Excel files for different reporting needs.

## Exercise 9.3 - Scenario 2 - Aggregate and compare costs by cost center

In this scenario, you will export all cost data with an additional column for cost centers, then use **Excel's** built-in analytics to aggregate and compare expenses across different cost centers.

1. In the Costs and Usage header, click "Clear Filters" to reset any existing filters.
2. In the Month filter, select "Previous Month".
3. Launch the Export menu by clicking the small arrow near the Export button and select "Custom...".
4. Verify that the time period is set to Oct 2025 (selected month).
5. Confirm that "All filters show (no filter)" is displayed, meaning no specific filters are applied.
6. Keep the default settings in the export dialog.
7. In the "Labels as Columns" field, enter: `CostCenter`

> [!TIP]
> Adding labels as columns allows you to pivot and analyze data by those dimensions in Excel, making it easier to aggregate costs by business units, departments, or projects.

8. Click "Export".
9. Open the exported Excel file from your Downloads folder.
10. Navigate to the sheet "Subaccount Costs by Service".
11. Locate column S, which should be labeled "Label Values for Key: CostCenter". This column contains the assigned cost center for each subaccount.

> [!TIP]
  > You can use this column to filter for a specific cost center or perform more advanced analytics using Excel's pivot table functionality.

### Using Excel's Analyze Data feature

In this step, you will use Excel's AI-powered "Analyze Data" tool to aggregate and compare cost center expenses in the previous month by entering a natural language prompt.

1. In the Excel Home ribbon (visible by default). 
2. Click "Analyze Data".
3. In the text box: "Ask a question about your data", enter the prompt: `Show the aggregated costs by Label Values for Key: CostCenter`
4. Review the generated analysis and click "Insert PivotChart" to add it to your worksheet.
5. Review the new pivot table and chart.

   **Which cost center has the highest costs?**

   <details>
   <summary>Answer</summary>

   **CC-400**

   *Cost center CC-400 has the highest aggregated costs among all cost centers in the previous month. This insight, generated using Excel's AI-powered Analyze Data feature and the exported cost center column, helps identify which cost center is driving the highest costs and may require budget adjustments or cost optimization focus.*
   </details>
   <br>

> [!NOTE]
> The Analyze Data feature uses AI to understand your data and generate insights automatically. This can save significant time compared to manually creating pivot tables and charts.

## Summary

### 🎯 Key Takeaways

- ✅ Export customized cost data to Excel (12-36 months) with filters and labels as columns for tailored reporting and pivot analysis
- ✅ Share filtered cost reports with specific stakeholders by contact person for transparent, data-driven cost discussions
- ✅ Use Excel's AI-powered Analyze Data to aggregate costs, create visualizations, and perform cost center comparisons with natural language
- ✅ Extend analysis by importing SAP BTP data into third-party tools.

---

[← Previous: Exercise 8 - Cost and Usage Overview (Preview - Bonus)](../ex8/)

---

**This concludes the SAP TechEd 2025 XP263 Hands-On session. We hope you found it informative and gained valuable insights into SAP BTP cost management, FinOps best practices and Terraform on SAP BTP.**
