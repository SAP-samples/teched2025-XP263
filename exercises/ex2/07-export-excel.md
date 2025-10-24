# Exercise 7 - Export Excel (Optional)

## Introduction

As mentioned in the cross-charging exercise, you can continue analyzing, tracking, and cross-charging by using an Excel file exported from the Costs and Usage page. The export feature allows you to download data for the past 12, 24, or 36 months, providing flexibility for long-term cost analysis.

You can create a customized Excel export by applying filters such as subaccounts, labels, and services, and by adding additional columns and data. This enables you to tailor the exported data to your specific reporting needs. Additionally, the exported Excel file can be imported into third-party tools for further analysis and integration with your existing reporting infrastructure.

> [!NOTE]
> If time does not permit during this session, you may complete this exercise later using your own SAP BTP account. Ensure labels are properly assigned to your subaccounts beforehand to maximize the value of this exercise.

![Export Excel Custom Menu](images/07-export-excel/export-excel-custom-menu.jpg)

## Scenario 1 - Share costs with a contact person

In this scenario, you will export cost data filtered by a specific contact person, allowing you to share relevant cost information with stakeholders who need to understand their team's expenses.

1. In the Costs and Usage header, click "Clear Filters" to reset any existing filters.
2. In the Month filter, select "Previous Month".
3. In the search box, search for the label: `ContactPerson alex.yamamoto@apex.com`

> [!TIP]
> Start typing "ContactPerson" in the search box, and the auto-complete will help you select the correct label and value.

4. Launch the Export menu by clicking the small arrow near the Export button and select "Custom...".
5. Verify that the time period is set to the previous month and the search filter shows: `Label Key:Value -- ContactPerson:alex.yamamoto@apex.com`
6. Keep the default settings in the export dialog.
7. Click "Export".
8. Open the exported Excel file from your Downloads folder.
9. Review the exported data in the Excel sheets:
   - **Global Account Costs**: Shows the aggregated costs for the filtered time period and contact person.
   - **Subaccount Costs by Service**: Displays detailed costs broken down by subaccount and service.

> [!TIP]
> Notice how the exported data is automatically filtered by the period and contact person you defined, making it easy to share with the relevant stakeholder.

10. You can use this file to share with the contact person, helping them understand their costs and take appropriate actions if needed.

> [!NOTE]
> Similarly to the steps above, you can search and filter by services, subaccounts/directories, and other labels to generate customized Excel files for different reporting needs.

## Scenario 2 - Aggregate and compare costs by cost center

In this scenario, you will export all cost data with an additional column for cost centers, then use Excel's built-in analytics to aggregate and compare expenses across different cost centers.

1. In the Costs and Usage header, click "Clear Filters" to reset any existing filters.
2. In the Month filter, select "Previous Month".
3. Launch the Export menu by clicking the small arrow near the Export button and select "Custom...".
4. Verify that the time period is set to the previous month.
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

1. Launch the Home ribbon in Excel.
2. Click "Analyze Data" (this feature may be called "Ideas" in some Excel versions).
3. In the "Ask a question about your data" text box, enter the prompt: `Show the aggregated costs by Label Values for Key: CostCenter`
4. Review the generated analysis and click "Insert PivotChart" to add it to your worksheet.
5. Review the new pivot table and chart.

   **Which cost center has the highest costs?**

   <details>
   <summary>Answer</summary>

   **CC-400**

   Cost center CC-400 has the highest aggregated costs among all cost centers in the previous month. This insight, generated using Excel's AI-powered Analyze Data feature and the exported cost center column, helps identify which business units or departments are driving the most BTP consumption and may require budget adjustments or cost optimization focus.
   </details>
   <br>

> [!NOTE]
> The Analyze Data feature uses AI to understand your data and generate insights automatically. This can save significant time compared to manually creating pivot tables and charts.

## Summary

### 🎯 Key Takeaways

#### Export Capabilities & Customization
- ✅ Export cost data to Excel covering 12, 24, or 36 months of history
- ✅ Apply custom filters (subaccounts, labels, services) for tailored reports
- ✅ Add custom columns (labels) for enhanced pivot table analysis
- ✅ Generate time-filtered exports for specific billing periods

#### Stakeholder Communication & Transparency
- ✅ Share filtered cost data with specific stakeholders by contact person
- ✅ Create stakeholder-specific reports showing only relevant costs
- ✅ Enable cost-conscious conversations using data-driven insights

#### Advanced Excel Analysis
- ✅ Aggregate expenses using Excel's AI-powered Analyze Data with natural language
- ✅ Create pivot tables and visualizations to identify trends and outliers
- ✅ Perform cost center and departmental comparisons

#### Third-Party Integration
- ✅ Import SAP BTP data into third-party tools for reporting integration
- ✅ Build custom dashboards using Excel, Power BI, or Tableau

---

[← Previous: Exercise 6 - Cost and Usage Overview (Preview - Bonus)](06-cost-usage-overview.md)

---

**This concludes the SAP TechEd 2025 XP263 Hands-On session. We hope you found it informative and gained valuable insights into SAP BTP cost management and FinOps best practices.**
