# Email Feedback - October 23, 2025

This document contains specific line-by-line feedback received via email for Exercise 2 files on October 23, 2025.

---

## 03-cross-charge.md

- Same issues with indentation and tip/hint
- **Delete line 94**
- **Delete lines 101-110**
- **Replace lines 112-124** with the following:
  ```
  2. As you saw, subaccount HR App 4 - TEST is in EMEA. What are the overall costs for the Apex EMEA region?
  Collapsible Section Hint: type in the search box Region and choose Region: EMEA or you may search for EMEA
  Collapsible Section Answer: 362,710.05 USD
  3. Bookmark the Apex EMEA region for future tracking by clicking on the bookmark button Image. This enables to copy the link and save it for future use send it to others (e.g. EMEA region owner) for further tracking.
  ```

---

## 04-budgets.md

- Same issues with indentation and tip/hint
- **Delete lines 7-10**
- **Replace lines 24-27** with the following:
  ```
  Automatically send alert emails to Global Account Administrators. You can enable this option when creating a new budget. Once a defined threshold is exceeded, an email notification will be sent to all Global Account Administrators. If you prefer not to send alert emails to all administrators, keep the default setting (disabled).
  ```
- **Line 31** - fix the tip indentation or remove it
- **Line 38** - update three -> two
- **Delete lines 40-76**
- **Line 77** - update the number of scenario/exercise
- **Line 79** - update to:
  ```
  In this scenario, you will create a cost-based budget. By default, the budget scope applies to the entire Global Account. In this case, update the scope to subaccount HR App 4 – TEST (the highest-cost subaccount in the previous month). This allows you to monitor and control spending at a more granular level.
  ```
- **Line 85** - update to:
  ```
  Keep the default Cost budget type. It tracks your consumption's monetary value at list price.
  No need to change the date range.
  ```
- **Line 103** - update to:
  ```
  View the history preview. You will see the budget amount and Thresholds together with the Actual costs and exceedance over the past 12 months.
  ```
- **Lines 124-125** - update to:
  ```
  In the Active Budgets table, choose the budget you just created and view the details to verify the information you entered when creating the Budget.
  Choose to view it in the Billing Tab (hint: via the '…' and choose 'View in Billing Tab').
  ```
- **Line 166** - update to:
  ```
  No. It is important to note that none of the thresholds have been exceeded because budgets are evaluated on a monthly basis. Exceedances from the previous month are not considered
  ```
- **Delete lines 174-182**
- **Add the email picture**
- **Delete lines 183-192**
- **Shorten key takeaways** like in all the exercise to make them similar to the word
- **Delete tip at the end** - lines 216-217

---

## Status

- [ ] Feedback document created
- [ ] Branch created from Oct 23 commit (e7a5813)
- [ ] Changes applied to 03-cross-charge.md
- [ ] Changes applied to 04-budgets.md
- [ ] Changes committed
- [ ] Merged into main
- [ ] Conflicts resolved (if any)
