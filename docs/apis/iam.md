---
sort: 3
show_sorted: false
---

# IAM API

```note
OpenAPI documentation: [https://alphauslabs.github.io/blueapidocs/#/Iam](https://alphauslabs.github.io/blueapidocs/#/Iam)
```

Still work in progress. Stay tuned!

## Group Root Users [WIP]

You can create a root user account for a given billing group or access group with a given set of Wave or Aqua features. Currently, endpoints for creating, retrieving and deleting a group root user are supported as well as retrieving all the group root users associated with the organization. In addition, all the feature flags for a given group root user can be retrieved and updated.

### Feature Flags

In order to enable or disable a feature in Aqua or Wave for a given user, the appropriate feature flag should be either enabled or disabled respectively. The following is a list of such feature flags and which feature they control:

| **Feature Flag** | **Feature Name** | **Action** | **Product** |
|---|---|---|---|
| dashboard_graph | Dashboard | View Graph | Wave / Wave Pro |
| usage_account | Usage Reports | Accounts - Access | Wave / Wave Pro |
| usage_account_graph | Usage Reports | Accounts - View Graph | Wave / Wave Pro |
| usage_account_menu_account_edit | Usage Reports | Accounts - Edit Info | Wave / Wave Pro |
| usage_account_menu_budget | Usage Reports | Accounts - View Budget Settings | Wave / Wave Pro |
| usage_account_menu_budget_edit | Usage Reports | Accounts - Edit Budget Settings | Wave / Wave Pro |
| usage_account_menu_fees_fee | Usage Reports | Accounts - View Fees | Wave / Wave Pro |
| usage_account_menu_fees_credit | Usage Reports | Accounts - View Credits | Wave / Wave Pro |
| usage_account_menu_fees_refund | Usage Reports | Accounts - View Refunds | Wave / Wave Pro |
| usage_account_menu_fees_other_fees | Usage Reports | Accounts - View Other Fees | Wave / Wave Pro |
| usage_report_download | Usage Reports | Accounts - Download Reports CSV | Wave / Wave Pro |
| usage_group | Usage Reports | Groups - Access | Wave / Wave Pro |
| usage_group_graph | Usage Reports | Groups - View Graph | Wave / Wave Pro |
| usage_tag | Usage Reports | Tags - Access | Wave / Wave Pro |
| usage_tag_graph | Usage Reports | Tags - View Graph | Wave / Wave Pro |
| usage_crosstag | Usage Reports | Crosstag - Access | Wave / Wave Pro |
| usage_crosstag_graph | Usage Reports | Crosstag - View Graph | Wave / Wave Pro |
| ri_purchased | Reserved Instances | View Purchased RI | Wave |
| ri_utilization | Reserved Instances | View RI Utilization | Wave |
| ri_recommendation | Recommendations | Access | Wave |
| sp_purchased | Savings Plans | Access | Wave |
| invoice | Others | Invoice - Display Link | Wave / Wave Pro |
| invoice_download_csv_discount | Others | Invoice - Download Discounted CSV | Wave / Wave Pro |
| invoice_download_csv_merged | Others | Invoice - Download Merged CSV | Wave / Wave Pro |
| open_api | Others | API Access Tokens | Wave / Wave Pro |
| users_management | Others | Sub-user Management | Wave / Wave Pro |
| aq_dashboard | Dashboard | Access | Aqua |
| aq_coverage_ratio | Coverage Ratio | Access | Aqua |
| aq_ri_management | Reserved Instances | Access | Aqua |
| aq_sp_management | Savings Plans | Access | Aqua |
| aq_ri_sp_instances | RI & SP Recommendations | Access | Aqua |
| aq_right_sizing | Instance Right-Sizing | Access | Aqua |
| aq_scheduling | Scheduling | Access | Aqua |
| report_filters | Report Filters | Access | Wave Pro |

When setting a feature flag, a value of true will enable the feature and a value of false will disable the feature.
