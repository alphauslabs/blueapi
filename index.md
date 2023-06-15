# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [cost/v1/cost.proto](#cost/v1/cost.proto)
    - [CalculateCostsRequest](#blueapi.cost.v1.CalculateCostsRequest)
    - [CalculateCostsRequestAwsOptions](#blueapi.cost.v1.CalculateCostsRequestAwsOptions)
    - [CalculationsSchedule](#blueapi.cost.v1.CalculationsSchedule)
    - [CalculatorCostModifier](#blueapi.cost.v1.CalculatorCostModifier)
    - [CalculatorCostModifierAwsOptions](#blueapi.cost.v1.CalculatorCostModifierAwsOptions)
    - [CalculatorCostModifierAwsOptions.Modifier](#blueapi.cost.v1.CalculatorCostModifierAwsOptions.Modifier)
    - [CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier](#blueapi.cost.v1.CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier)
    - [CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier.ReplaceMatchEntry](#blueapi.cost.v1.CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier.ReplaceMatchEntry)
    - [CalculatorCostModifierAwsOptions.Qualifier](#blueapi.cost.v1.CalculatorCostModifierAwsOptions.Qualifier)
    - [CalculatorCostModifierAwsOptions.Qualifier.AndEntry](#blueapi.cost.v1.CalculatorCostModifierAwsOptions.Qualifier.AndEntry)
    - [CostAttribute](#blueapi.cost.v1.CostAttribute)
    - [CostAttributeItem](#blueapi.cost.v1.CostAttributeItem)
    - [CostItem](#blueapi.cost.v1.CostItem)
    - [CreateAccountBudgetAlertsRequest](#blueapi.cost.v1.CreateAccountBudgetAlertsRequest)
    - [CreateAccountBudgetRequest](#blueapi.cost.v1.CreateAccountBudgetRequest)
    - [CreateAccountBudgetResponse](#blueapi.cost.v1.CreateAccountBudgetResponse)
    - [CreateAccountRequest](#blueapi.cost.v1.CreateAccountRequest)
    - [CreateAccountRequestAwsOptions](#blueapi.cost.v1.CreateAccountRequestAwsOptions)
    - [CreateCalculationsScheduleRequest](#blueapi.cost.v1.CreateCalculationsScheduleRequest)
    - [CreateCalculatorCostModifierRequest](#blueapi.cost.v1.CreateCalculatorCostModifierRequest)
    - [CreateCalculatorCostModifierResponse](#blueapi.cost.v1.CreateCalculatorCostModifierResponse)
    - [CreateCostFiltersRequest](#blueapi.cost.v1.CreateCostFiltersRequest)
    - [CreateCostFiltersResponse](#blueapi.cost.v1.CreateCostFiltersResponse)
    - [CreatePayerAccountRequest](#blueapi.cost.v1.CreatePayerAccountRequest)
    - [CreatePayerAccountRequestAwsOptions](#blueapi.cost.v1.CreatePayerAccountRequestAwsOptions)
    - [DeleteAccountBudgetAlertsRequest](#blueapi.cost.v1.DeleteAccountBudgetAlertsRequest)
    - [DeleteAccountBudgetRequest](#blueapi.cost.v1.DeleteAccountBudgetRequest)
    - [DeleteAccountRequest](#blueapi.cost.v1.DeleteAccountRequest)
    - [DeleteCalculationsScheduleRequest](#blueapi.cost.v1.DeleteCalculationsScheduleRequest)
    - [DeleteCalculatorCostModifierRequest](#blueapi.cost.v1.DeleteCalculatorCostModifierRequest)
    - [DeleteCostFiltersRequest](#blueapi.cost.v1.DeleteCostFiltersRequest)
    - [DeletePayerAccountRequest](#blueapi.cost.v1.DeletePayerAccountRequest)
    - [ExportCostFiltersFileRequest](#blueapi.cost.v1.ExportCostFiltersFileRequest)
    - [ExportCostFiltersFileResponse](#blueapi.cost.v1.ExportCostFiltersFileResponse)
    - [GetAccountBudgetAlertsRequest](#blueapi.cost.v1.GetAccountBudgetAlertsRequest)
    - [GetAccountBudgetRequest](#blueapi.cost.v1.GetAccountBudgetRequest)
    - [GetAccountBudgetResponse](#blueapi.cost.v1.GetAccountBudgetResponse)
    - [GetAccountRequest](#blueapi.cost.v1.GetAccountRequest)
    - [GetBreakevenPointRequest](#blueapi.cost.v1.GetBreakevenPointRequest)
    - [GetBreakevenPointResponse](#blueapi.cost.v1.GetBreakevenPointResponse)
    - [GetCalculatorConfigRequest](#blueapi.cost.v1.GetCalculatorConfigRequest)
    - [GetCalculatorConfigResponse](#blueapi.cost.v1.GetCalculatorConfigResponse)
    - [GetCostAttributesRequest](#blueapi.cost.v1.GetCostAttributesRequest)
    - [GetCostAttributesResponse](#blueapi.cost.v1.GetCostAttributesResponse)
    - [GetCostReductionRequest](#blueapi.cost.v1.GetCostReductionRequest)
    - [GetCostReductionResponse](#blueapi.cost.v1.GetCostReductionResponse)
    - [GetCoverageOndemandRequest](#blueapi.cost.v1.GetCoverageOndemandRequest)
    - [GetCoverageOndemandResponse](#blueapi.cost.v1.GetCoverageOndemandResponse)
    - [GetCoverageOptionsRequest](#blueapi.cost.v1.GetCoverageOptionsRequest)
    - [GetCoverageOptionsResponse](#blueapi.cost.v1.GetCoverageOptionsResponse)
    - [GetForecastsRequest](#blueapi.cost.v1.GetForecastsRequest)
    - [GetForecastsResponse](#blueapi.cost.v1.GetForecastsResponse)
    - [GetMonthOnMonthCostForecastRequest](#blueapi.cost.v1.GetMonthOnMonthCostForecastRequest)
    - [GetMonthOnMonthCostForecastResponse](#blueapi.cost.v1.GetMonthOnMonthCostForecastResponse)
    - [GetMonthToDateCostForecastRequest](#blueapi.cost.v1.GetMonthToDateCostForecastRequest)
    - [GetMonthToDateCostForecastResponse](#blueapi.cost.v1.GetMonthToDateCostForecastResponse)
    - [GetMonthlyCostForecastRequest](#blueapi.cost.v1.GetMonthlyCostForecastRequest)
    - [GetMonthlyCostForecastResponse](#blueapi.cost.v1.GetMonthlyCostForecastResponse)
    - [GetPayerAccountImportHistoryRequest](#blueapi.cost.v1.GetPayerAccountImportHistoryRequest)
    - [GetPayerAccountImportHistoryResponse](#blueapi.cost.v1.GetPayerAccountImportHistoryResponse)
    - [GetPayerAccountRequest](#blueapi.cost.v1.GetPayerAccountRequest)
    - [GetRecommendationsRequest](#blueapi.cost.v1.GetRecommendationsRequest)
    - [GetRecommendationsRequestAwsOptions](#blueapi.cost.v1.GetRecommendationsRequestAwsOptions)
    - [GetRecommendationsResponse](#blueapi.cost.v1.GetRecommendationsResponse)
    - [GetUtilizationRequest](#blueapi.cost.v1.GetUtilizationRequest)
    - [GetUtilizationResponse](#blueapi.cost.v1.GetUtilizationResponse)
    - [ImportCurFilesRequest](#blueapi.cost.v1.ImportCurFilesRequest)
    - [ListAccountsRequest](#blueapi.cost.v1.ListAccountsRequest)
    - [ListCalculationsHistoryAwsResponse](#blueapi.cost.v1.ListCalculationsHistoryAwsResponse)
    - [ListCalculationsHistoryRequest](#blueapi.cost.v1.ListCalculationsHistoryRequest)
    - [ListCalculationsHistoryResponse](#blueapi.cost.v1.ListCalculationsHistoryResponse)
    - [ListCalculationsSchedulesRequest](#blueapi.cost.v1.ListCalculationsSchedulesRequest)
    - [ListCalculationsSchedulesResponse](#blueapi.cost.v1.ListCalculationsSchedulesResponse)
    - [ListCalculatorCostModifiersRequest](#blueapi.cost.v1.ListCalculatorCostModifiersRequest)
    - [ListCalculatorRunningAccountsRequest](#blueapi.cost.v1.ListCalculatorRunningAccountsRequest)
    - [ListCalculatorRunningAccountsResponse](#blueapi.cost.v1.ListCalculatorRunningAccountsResponse)
    - [ListCalculatorRunningAccountsResponse.AwsRunningAccount](#blueapi.cost.v1.ListCalculatorRunningAccountsResponse.AwsRunningAccount)
    - [ListCostFilters](#blueapi.cost.v1.ListCostFilters)
    - [ListCostFiltersRequest](#blueapi.cost.v1.ListCostFiltersRequest)
    - [ListCostFiltersResponse](#blueapi.cost.v1.ListCostFiltersResponse)
    - [ListPayerAccountsRequest](#blueapi.cost.v1.ListPayerAccountsRequest)
    - [ListTagsRequest](#blueapi.cost.v1.ListTagsRequest)
    - [ReadAdjustmentsRequest](#blueapi.cost.v1.ReadAdjustmentsRequest)
    - [ReadAdjustmentsRequestAwsOptions](#blueapi.cost.v1.ReadAdjustmentsRequestAwsOptions)
    - [ReadCostAttributesRequest](#blueapi.cost.v1.ReadCostAttributesRequest)
    - [ReadCostAttributesRequest.AwsOptions](#blueapi.cost.v1.ReadCostAttributesRequest.AwsOptions)
    - [ReadCostsRequest](#blueapi.cost.v1.ReadCostsRequest)
    - [ReadCostsRequestAwsOptions](#blueapi.cost.v1.ReadCostsRequestAwsOptions)
    - [ReadCostsRequestAwsOptions.TagFilters](#blueapi.cost.v1.ReadCostsRequestAwsOptions.TagFilters)
    - [ReadCostsRequestAwsOptions.TagFilters.AndFiltersEntry](#blueapi.cost.v1.ReadCostsRequestAwsOptions.TagFilters.AndFiltersEntry)
    - [ReadCostsRequestAwsOptionsFilters](#blueapi.cost.v1.ReadCostsRequestAwsOptionsFilters)
    - [ReadCostsRequestAwsOptionsFilters.AndFiltersEntry](#blueapi.cost.v1.ReadCostsRequestAwsOptionsFilters.AndFiltersEntry)
    - [ReadCostsRequestGcpOptions](#blueapi.cost.v1.ReadCostsRequestGcpOptions)
    - [ReadCostsRequestGcpOptionsFilters](#blueapi.cost.v1.ReadCostsRequestGcpOptionsFilters)
    - [ReadCostsRequestGcpOptionsFilters.AndFiltersEntry](#blueapi.cost.v1.ReadCostsRequestGcpOptionsFilters.AndFiltersEntry)
    - [ReadNonTagCostsRequest](#blueapi.cost.v1.ReadNonTagCostsRequest)
    - [ReadTagCostsRequest](#blueapi.cost.v1.ReadTagCostsRequest)
    - [ReadTagCostsRequestAwsOptions](#blueapi.cost.v1.ReadTagCostsRequestAwsOptions)
    - [ReadTagCostsRequestAwsOptions.TagFilters](#blueapi.cost.v1.ReadTagCostsRequestAwsOptions.TagFilters)
    - [ReadTagCostsRequestAwsOptions.TagFilters.AndFiltersEntry](#blueapi.cost.v1.ReadTagCostsRequestAwsOptions.TagFilters.AndFiltersEntry)
    - [UpdateAccountBudgetAlertsRequest](#blueapi.cost.v1.UpdateAccountBudgetAlertsRequest)
    - [UpdateAccountBudgetRequest](#blueapi.cost.v1.UpdateAccountBudgetRequest)
    - [UpdateCostFiltersRequest](#blueapi.cost.v1.UpdateCostFiltersRequest)
    - [UpdateCostFiltersResponse](#blueapi.cost.v1.UpdateCostFiltersResponse)
  
    - [Cost](#blueapi.cost.v1.Cost)
  
- [iam/v1/iam.proto](#iam/v1/iam.proto)
    - [CreateApiClientRequest](#blueapi.iam.v1.CreateApiClientRequest)
    - [CreateGroupRootUserRequest](#blueapi.iam.v1.CreateGroupRootUserRequest)
    - [CreateIdentityProviderRequest](#blueapi.iam.v1.CreateIdentityProviderRequest)
    - [CreateIpFilterRequest](#blueapi.iam.v1.CreateIpFilterRequest)
    - [CreatePartnerTokenRequest](#blueapi.iam.v1.CreatePartnerTokenRequest)
    - [CreateRoleRequest](#blueapi.iam.v1.CreateRoleRequest)
    - [CreateUserRequest](#blueapi.iam.v1.CreateUserRequest)
    - [CreateUserRoleMappingRequest](#blueapi.iam.v1.CreateUserRoleMappingRequest)
    - [CreateUserRoleMappingResponse](#blueapi.iam.v1.CreateUserRoleMappingResponse)
    - [DeleteApiClientRequest](#blueapi.iam.v1.DeleteApiClientRequest)
    - [DeleteGroupRootUserRequest](#blueapi.iam.v1.DeleteGroupRootUserRequest)
    - [DeleteIdentityProviderRequest](#blueapi.iam.v1.DeleteIdentityProviderRequest)
    - [DeleteIpFilterRequest](#blueapi.iam.v1.DeleteIpFilterRequest)
    - [DeleteRoleRequest](#blueapi.iam.v1.DeleteRoleRequest)
    - [DeleteUserRequest](#blueapi.iam.v1.DeleteUserRequest)
    - [GetFeatureFlagsRequest](#blueapi.iam.v1.GetFeatureFlagsRequest)
    - [GetGroupRootRequest](#blueapi.iam.v1.GetGroupRootRequest)
    - [GetUserRequest](#blueapi.iam.v1.GetUserRequest)
    - [IpFilter](#blueapi.iam.v1.IpFilter)
    - [ListApiClientsRequest](#blueapi.iam.v1.ListApiClientsRequest)
    - [ListGroupRootUsersRequest](#blueapi.iam.v1.ListGroupRootUsersRequest)
    - [ListIdentityProvidersRequest](#blueapi.iam.v1.ListIdentityProvidersRequest)
    - [ListIdentityProvidersResponse](#blueapi.iam.v1.ListIdentityProvidersResponse)
    - [ListIdentityProvidersResponse.IdentityProvider](#blueapi.iam.v1.ListIdentityProvidersResponse.IdentityProvider)
    - [ListIdentityProvidersResponse.IdentityProvider.samlInfo](#blueapi.iam.v1.ListIdentityProvidersResponse.IdentityProvider.samlInfo)
    - [ListIpFiltersRequest](#blueapi.iam.v1.ListIpFiltersRequest)
    - [ListPermissionsRequest](#blueapi.iam.v1.ListPermissionsRequest)
    - [ListPermissionsResponse](#blueapi.iam.v1.ListPermissionsResponse)
    - [ListRolesRequest](#blueapi.iam.v1.ListRolesRequest)
    - [ListRolesResponse](#blueapi.iam.v1.ListRolesResponse)
    - [ListUserRoleMappingsRequest](#blueapi.iam.v1.ListUserRoleMappingsRequest)
    - [ListUserRoleMappingsResponse](#blueapi.iam.v1.ListUserRoleMappingsResponse)
    - [ListUsersRequest](#blueapi.iam.v1.ListUsersRequest)
    - [MapRole](#blueapi.iam.v1.MapRole)
    - [PartnerToken](#blueapi.iam.v1.PartnerToken)
    - [RefreshPartnerTokenRequest](#blueapi.iam.v1.RefreshPartnerTokenRequest)
    - [UpdateFeatureFlagsRequest](#blueapi.iam.v1.UpdateFeatureFlagsRequest)
    - [UpdateRoleRequest](#blueapi.iam.v1.UpdateRoleRequest)
    - [UpdateUserRoleMappingRequest](#blueapi.iam.v1.UpdateUserRoleMappingRequest)
    - [UpdateUserRoleMappingResponse](#blueapi.iam.v1.UpdateUserRoleMappingResponse)
    - [WhoAmIRequest](#blueapi.iam.v1.WhoAmIRequest)
  
    - [Iam](#blueapi.iam.v1.Iam)
  
- [Scalar Value Types](#scalar-value-types)



<a name="cost/v1/cost.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cost/v1/cost.proto



<a name="blueapi.cost.v1.CalculateCostsRequest"></a>

### CalculateCostsRequest
Request message for the Cost.CalculateCosts rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| groupId | [string](#string) |  | Optional. A comma-separated list of billing internal ids. If empty, calculate for all billing groups.

At the moment, for AWS, this is only valid for account type billing groups, not tag billing groups. If a tag billing group is provided, it is discarded and the calculation is done for the whole organization. |
| month | [string](#string) |  | Optional. The UTC month to calculate. If empty, it defaults to the previous month. Format is `yyyymm`. For example, June 2021 will be `202106`. |
| awsOptions | [CalculateCostsRequestAwsOptions](#blueapi.cost.v1.CalculateCostsRequestAwsOptions) |  | Optional. Valid only for the `aws` vendor. AWS-specific options. |






<a name="blueapi.cost.v1.CalculateCostsRequestAwsOptions"></a>

### CalculateCostsRequestAwsOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| force | [bool](#bool) |  | Optional. If set to true, discard existing calculation operation(s), if any, and make this as the active/latest one. By default, if there is an ongoing operation during the call, the request will fail. |
| accountsOnly | [bool](#bool) |  | Optional. If set to true, only calculate for account-type billing groups. If both `accountsOnly` and `tagsOnly` are set to true, `accountsOnly` will prevail. |
| tagsOnly | [bool](#bool) |  | Optional. If set to true, only calculate for tags-type billing groups. Discarded when the organization doesn&#39;t have any tag-based billing groups configured. If both `accountsOnly` and `tagsOnly` are set to true, `accountsOnly` will prevail. |






<a name="blueapi.cost.v1.CalculationsSchedule"></a>

### CalculationsSchedule



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The schedule id. |
| schedule | [string](#string) |  | The desired schedule in UTC, using the [cron](https://man7.org/linux/man-pages/man5/crontab.5.html) format. |
| scheduleMacro | [string](#string) |  | The macro that augments `schedule`. |
| targetMonth | [string](#string) |  | The target month for the calculation. Empty means previous month (default). |
| nextRun | [string](#string) |  | The schedule for the next run in UTC. |
| notificationChannel | [string](#string) |  | The channel id to use for notifications. |
| force | [bool](#bool) |  | If set to true, force calculations to proceed regardless of run status. |
| dryRun | [bool](#bool) |  | If set to true, skips the actual calculations. |
| status | [string](#string) |  | The current state of this schedule. Normally set to &#34;OK&#34;, or empty if no issues. Otherwise, will contain an error string. |






<a name="blueapi.cost.v1.CalculatorCostModifier"></a>

### CalculatorCostModifier



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| createTime | [string](#string) |  |  |
| updateTime | [string](#string) |  |  |
| awsOptions | [CalculatorCostModifierAwsOptions](#blueapi.cost.v1.CalculatorCostModifierAwsOptions) |  |  |






<a name="blueapi.cost.v1.CalculatorCostModifierAwsOptions"></a>

### CalculatorCostModifierAwsOptions
AWS-specific options definition.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| accountId | [string](#string) |  | Optional. The account to which the modifier is applied. A comma-separated list of accounts is also valid. |
| groupId | [string](#string) |  | Optional. The group to which the modifier is applied. Accepts billing internal ids. A comma-separated list of billing internal ids is also valid. |
| payerId | [string](#string) |  | Optional. The payer id to which the modifier is applied. A comma-separated list of payer ids is also valid. |
| qualifiers | [CalculatorCostModifierAwsOptions.Qualifier](#blueapi.cost.v1.CalculatorCostModifierAwsOptions.Qualifier) | repeated | Optional. Conditional qualifiers to further filter the modifier targets. Multiple qualifiers use the logical `or` operator; `qualifiers[0] || qualifiers[1] || qualifiers[n]`. |
| modifier | [CalculatorCostModifierAwsOptions.Modifier](#blueapi.cost.v1.CalculatorCostModifierAwsOptions.Modifier) |  |  |
| after | [string](#string) |  | Optional. Specifies the modifier id in which this modifier will be applied after. For example, if you have another modifier `mod1` and you create a new modifier with `after` set to `mod1`, the calculator will apply `mod1` first, then this modifier. If `after` is not set, the application sequence for multiple overlapping modifiers will be by update timestamp, newest to oldest. |






<a name="blueapi.cost.v1.CalculatorCostModifierAwsOptions.Modifier"></a>

### CalculatorCostModifierAwsOptions.Modifier



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| formula | [string](#string) |  | Required. Our modifier formula. The final result should be a number. Integers are converted to floating points.

Supported operators are `*`, `/`, `&#43;`, `-`, and `%`. You can use parenthesis `()` to control precedence. Additional supported operators include `==`, `!=`, `!`, `&gt;`, `&lt;`, `&gt;=`, `&lt;=`, and the ternary operator `? :`, or `cond ? expr1 : expr2`. Examples: `1 &#43; 2 * 3` = 7 `(1 &#43; 2) * 3` = 9 `7.8 % 5` = 2.8 `true ? 1.1 : 2.2` = 1.1 `1 &gt; 2 ? 1.1 : 2.2` = 2.2

You can use the `cost` variable to reference the original lineitem cost. For example, if you want to add $10 to the cost, you can use the formula: `cost &#43; 10`. For trueunblended-type billing groups, `cost` refers to the calculated trueunblended cost.

The `usage` variable refers to the usage amount of a lineitem. For example, if you want to use a different rate of $1.5, you can use the formula: `usage * 1.5`.

The `unblendedcost` variable refers to the lineitem&#39;s unblended cost as indicated in the CUR. Note that the `unblendedcost` variable is different than the `cost` variable, although there are cases where the two are equal.

The `ondemandrate` variable refers to the lineitem&#39;s public ondemand rate as indicated in the CUR.

You can check out this [guide](https://alphauslabs.github.io/docs/guides/aws-cost-mods/) for more examples. |
| descriptionModifier | [CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier](#blueapi.cost.v1.CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier) |  | Optional. A simple description modifier. |






<a name="blueapi.cost.v1.CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier"></a>

### CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| prefix | [string](#string) |  | Optional. Add a prefix to the description. |
| suffix | [string](#string) |  | Optional. Add a suffix to the description. |
| replace | [string](#string) |  | Optional. Replace the description with the input. |
| replaceMatch | [CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier.ReplaceMatchEntry](#blueapi.cost.v1.CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier.ReplaceMatchEntry) | repeated | Optional. Replace matching occurences with the input. The key part is the regular expression matcher based on https://github.com/google/re2, while the value is the replacement. The order of replacement is not guaranteed.

You can use the `{{ondemandrate}}` variable in the replacement value part to reference the public ondemand rate indicated in the CUR. |






<a name="blueapi.cost.v1.CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier.ReplaceMatchEntry"></a>

### CalculatorCostModifierAwsOptions.Modifier.DescriptionModifier.ReplaceMatchEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="blueapi.cost.v1.CalculatorCostModifierAwsOptions.Qualifier"></a>

### CalculatorCostModifierAwsOptions.Qualifier
A map of &#34;key:value&#34; attribute filters. The key indicates the column name while the value is the filter value prefixed by either &#34;eq:&#34; (equal), &#34;re:&#34; (regular expressions based on https://github.com/google/re2), or &#34;!re:&#34; (reverse &#34;re:&#34;). No prefix is the same as &#34;eq:&#34;. Multiple map items will use the logical &#39;and&#39; operator, e.g. mapfilter1 &amp;&amp; mapfilter2 &amp;&amp; mapfilter3, etc.

For example, if you like your modifiers to apply to `productCode:AmazonEC2`, set to `{&#34;productCode&#34;:&#34;eq:AmazonEC2&#34;}` or `{&#34;productCode&#34;:&#34;AmazonEC2&#34;}`. You can also use a regular expression like `{&#34;productCode&#34;:&#34;re:AmazonEC2|AmazonRDS&#34;}`, which means apply to all AmazonEC2 or AmazonRDS lineitems. Or reverse regexp, such as `{&#34;productCode&#34;:&#34;!re:^AmazonEC2$&#34;}`, which means apply to all items except `AmazonEC2`. Valid keys are `productCode`, `serviceCode`, `region`, `zone`, `usageType`, `instanceType`, `operation`, `description`, and `resourceId`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| and | [CalculatorCostModifierAwsOptions.Qualifier.AndEntry](#blueapi.cost.v1.CalculatorCostModifierAwsOptions.Qualifier.AndEntry) | repeated |  |






<a name="blueapi.cost.v1.CalculatorCostModifierAwsOptions.Qualifier.AndEntry"></a>

### CalculatorCostModifierAwsOptions.Qualifier.AndEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="blueapi.cost.v1.CostAttribute"></a>

### CostAttribute



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  |  |
| category | [string](#string) |  |  |
| data | [string](#string) | repeated |  |






<a name="blueapi.cost.v1.CostAttributeItem"></a>

### CostAttributeItem
Response message for the Cost.ReadCostAttributes rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| aws | [blueapi.api.aws.CostAttribute](#blueapi.api.aws.CostAttribute) |  |  |






<a name="blueapi.cost.v1.CostItem"></a>

### CostItem
Response message wrapper for cloud costs.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| aws | [blueapi.api.aws.Cost](#blueapi.api.aws.Cost) |  |  |
| gcp | [blueapi.api.gcp.Cost](#blueapi.api.gcp.Cost) |  |  |
| azure | [blueapi.api.azure.Cost](#blueapi.api.azure.Cost) |  |  |






<a name="blueapi.cost.v1.CreateAccountBudgetAlertsRequest"></a>

### CreateAccountBudgetAlertsRequest
Request message for CreateAccountBudgetAlerts


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| id | [string](#string) |  | Required. Account Id |
| budgetAlert | [blueapi.api.wave.BudgetAlert](#blueapi.api.wave.BudgetAlert) |  | Required. Budget alert setting. |






<a name="blueapi.cost.v1.CreateAccountBudgetRequest"></a>

### CreateAccountBudgetRequest
Request message for CreateAccountBudget


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| level | [string](#string) |  | Required. &#39;account&#39; or &#39;acctgroup&#39; |
| id | [string](#string) |  | Required. Account or AccountGroup Id |
| data | [blueapi.api.Budget](#blueapi.api.Budget) |  |  |






<a name="blueapi.cost.v1.CreateAccountBudgetResponse"></a>

### CreateAccountBudgetResponse
Response message for CreateAccountBudget


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| budgetId | [string](#string) |  | Budget Id |






<a name="blueapi.cost.v1.CreateAccountRequest"></a>

### CreateAccountRequest
Request message for the Cost.CreateAccount rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| id | [string](#string) |  | Required. The account id to register. |
| name | [string](#string) |  | Optional. If empty, set to the value of `id`. |
| parent | [string](#string) |  | Optional. The parent `billingInternalId` of the billing group to which this account will belong to. |
| awsOptions | [CreateAccountRequestAwsOptions](#blueapi.cost.v1.CreateAccountRequestAwsOptions) |  | Required for the `aws` vendor. AWS-specific options. |






<a name="blueapi.cost.v1.CreateAccountRequestAwsOptions"></a>

### CreateAccountRequestAwsOptions
AWS-specific options for registering an account.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| managementAccountId | [string](#string) |  | Optional. The management account id (formerly known as master, or payer) to which an account belongs to, initially. If the account is moved to another management account, the system is able to detect it and set this value accordingly. |






<a name="blueapi.cost.v1.CreateCalculationsScheduleRequest"></a>

### CreateCalculationsScheduleRequest
Request message for the Cost.CreateCalculationsSchedule rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| schedule | [string](#string) |  | Required. The desired schedule in UTC, using the unix-cron string format `* * * * *` which is a set of five fields in a line using the order: `minute hour day-of-the-month month day-of-the-week`.

* `minute` values can be `0-59` * `hour` values can be `0-23` * `day-of-the-month` values can be `1-31` * `month` values can be `1-12`, or `JAN-DEC` * `day-of-the-week` values can be `0-6`, or `SUN-SAT`, or `7` for Sunday

Special characters: * A field can contain an asterisk (*), which always stands for &#34;first-last&#34;. * Ranges are two numbers separated with a hyphen (-) and the specified range is inclusive. * Following a range with `/NUMBER` specifies skips of the number&#39;s value through the range. For example, both `0-23/2` and `*/2` can be used in the `hour` field to specify execution every two hours. * A list is a set of numbers (or ranges) separated by commas (,). For example, `1,2,5,6` in the `month` field specifies an execution on the first, second, fifth, and sixth days of the month. |
| scheduleMacro | [string](#string) |  | Optional. Non-standard macro(s) that augment(s) `schedule`&#39;s behavior. The only supported value for now is `@endofmonth`.

`@endofmonth` - If set, the backend scheduler will only use the `minute` and `hour` part of `schedule`&#39;s value and set the days to 28th, 29th, 30th, and 31st but the runner will do the filtering for the actual end of the trigger month. Note that this is different than setting `schedule` to, say, `0 0 28-31 * *`. |
| targetMonth | [string](#string) |  | Optional. The desired month to calculate. If not set, defaults to previous month. The only supported value for now is `@current`.

`@current` - If set, calculate for the month the schedule is triggered (or current month). |
| notificationChannel | [string](#string) |  | Optional. The channel id to use for notifications. At the moment, only email-type notification channels are supported. If not set, your default channel will be used. And if non-existent, an email-type notification channel will be created using your primary email address. |
| force | [bool](#bool) |  | Optional. Not used at the moment. |
| dryRun | [bool](#bool) |  | Optional. If set to true, skips the actual calculations. Useful as test, or reminder. |






<a name="blueapi.cost.v1.CreateCalculatorCostModifierRequest"></a>

### CreateCalculatorCostModifierRequest
Request message for the Cost.CreateCalculatorCostModifier rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| awsOptions | [CalculatorCostModifierAwsOptions](#blueapi.cost.v1.CalculatorCostModifierAwsOptions) |  | Required if `{vendor}` is `aws`. AWS-specific options. |






<a name="blueapi.cost.v1.CreateCalculatorCostModifierResponse"></a>

### CreateCalculatorCostModifierResponse
Response message for the Cost.CreateCalculatorCostModifier rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| aws | [CalculatorCostModifier](#blueapi.cost.v1.CalculatorCostModifier) | repeated |  |






<a name="blueapi.cost.v1.CreateCostFiltersRequest"></a>

### CreateCostFiltersRequest
Request message for the CreateCostFilters rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| filterName | [string](#string) |  | Required. Filter Name. Specify characters between 1 ~ 100 |
| groupId | [string](#string) |  | Required. If set, reads the usage-based cost details of this group. Only valid for Ripple users. Implied as the parent billing group for Wave(Pro) users.

For AWS Ripple, only billing internal ids are supported at the moment. Overriden when `accountId` is set to anything other than `*`. Set this and `accountId` to `*` to read the usage-based cost details of the whole organization. Optional for AWS Wave(Pro). |
| accountId | [string](#string) |  | Required. You can set it to a single account or a comma-separated list of accounts.

For AWS, setting this will override `groupId`. Set this and `groupId` to `*` to read the usage-based cost details of the whole organization. |
| awsOptions | [ReadCostsRequestAwsOptions](#blueapi.cost.v1.ReadCostsRequestAwsOptions) |  | Required. Valid only for the `aws` vendor. AWS-specific options. |






<a name="blueapi.cost.v1.CreateCostFiltersResponse"></a>

### CreateCostFiltersResponse
Response message for the CreateCostFilters rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filterId | [string](#string) |  | Required. Filter Id. |






<a name="blueapi.cost.v1.CreatePayerAccountRequest"></a>

### CreatePayerAccountRequest
Request message for the Cost.CreatePayerAccount rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| awsOptions | [CreatePayerAccountRequestAwsOptions](#blueapi.cost.v1.CreatePayerAccountRequestAwsOptions) |  | Required for the `aws` vendor. AWS-specific options. |






<a name="blueapi.cost.v1.CreatePayerAccountRequestAwsOptions"></a>

### CreatePayerAccountRequestAwsOptions
See [https://help.alphaus.cloud/en/articles/3612555-ripple-aws-things-you-need-to-prepare-before-starting] for more information.

See [https://docs.aws.amazon.com/cur/latest/userguide/cur-create.html] for more information. Requirements include: Additional report details = &#39;Include Resource IDS&#39; enabled, Prefix = non-empty (recommendation only), Time granularity = &#39;Hourly&#39;, File format = &#39;text/csv&#39;.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Required. The id of the management account. |
| name | [string](#string) |  | Optional. The name, or description of the management account. This is set to `id` when not specified. |
| bucketName | [string](#string) |  | Required. S3 Bucket name. |
| prefix | [string](#string) |  | Optional. Prefix. |
| reportName | [string](#string) |  | Required. Report name. |
| roleArn | [string](#string) |  | Required. Role ARN for Alphaus to assume for access. |






<a name="blueapi.cost.v1.DeleteAccountBudgetAlertsRequest"></a>

### DeleteAccountBudgetAlertsRequest
Request message for DeleteAccountBudgetAlerts


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| id | [string](#string) |  | Required. Account Id |






<a name="blueapi.cost.v1.DeleteAccountBudgetRequest"></a>

### DeleteAccountBudgetRequest
Request message for DeleteAccountBudget


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| budgetId | [string](#string) |  | Required. Budget Id |






<a name="blueapi.cost.v1.DeleteAccountRequest"></a>

### DeleteAccountRequest
Request message for the Cost.DeleteAccount rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| id | [string](#string) |  | Required. The account id to delete. |






<a name="blueapi.cost.v1.DeleteCalculationsScheduleRequest"></a>

### DeleteCalculationsScheduleRequest
Request message for the Cost.DeleteCalculationsSchedule rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| id | [string](#string) |  | Required. The id to delete. Can be set to either `-` or `*`, which means all. |






<a name="blueapi.cost.v1.DeleteCalculatorCostModifierRequest"></a>

### DeleteCalculatorCostModifierRequest
Request message for the Cost.DeleteCalculatorCostModifier rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| id | [string](#string) |  | Required. The id of the modifier to delete. |






<a name="blueapi.cost.v1.DeleteCostFiltersRequest"></a>

### DeleteCostFiltersRequest
Request message for the DeleteCostFilters rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| filterId | [string](#string) |  | Required. Filter Id to delete. |






<a name="blueapi.cost.v1.DeletePayerAccountRequest"></a>

### DeletePayerAccountRequest
Request message for the Cost.DeletePayerAccount rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| id | [string](#string) |  | Required. The id of the account. |






<a name="blueapi.cost.v1.ExportCostFiltersFileRequest"></a>

### ExportCostFiltersFileRequest
Request message for the ExportCostFiltersFile rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| filterId | [string](#string) |  | Required. Filter Id. |
| startTime | [string](#string) |  | Optional. The UTC date to start streaming data from. If not set, the first day of the current month will be used. Format: `yyyymmdd`. The oldest supported date is `20200101`. |
| endTime | [string](#string) |  | Optional. The UTC date to end the streaming data. If not set, current date will be used. Format: `yyyymmd`. |
| groupByMonth | [bool](#bool) |  | Optional. If set to true, return data grouped by month within the date range. If you want data that is grouped per account per month, set this to `true`, then set `groupByColumns` to `none`. |
| groupByColumns | [string](#string) |  | Optional. A comma-separated list of columns to aggregate the data into. Valid values are `productCode`, `serviceCode`, `region`, `zone`, `usageType`, `instanceType`, `operation`, `invoiceId`, `description`, and `resourceId`. A special value of `none` is also supported, which means query by date or month per account only.

For example, if you only want the services and region data, you can set this field to `productCode,region`. Your input sequence doesn&#39;t matter (although the sequence above is recommended) as the actual sequence is already fixed in the return data (see the definition in https://github.com/alphauslabs/blueapi/blob/main/api/aws/cost.proto), which is generic to specific, top to bottom. Invalid values are discarded. Excluded columns will be empty. |
| includeTags | [bool](#bool) |  | Optional. If set to true, stream will include resource tags. |






<a name="blueapi.cost.v1.ExportCostFiltersFileResponse"></a>

### ExportCostFiltersFileResponse
Response message for the ExportCostFiltersFile rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| url | [string](#string) |  | Required. URL of exported file. |






<a name="blueapi.cost.v1.GetAccountBudgetAlertsRequest"></a>

### GetAccountBudgetAlertsRequest
Request message for GetAccountBudgetAlerts


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| id | [string](#string) |  | Required. Account Id |






<a name="blueapi.cost.v1.GetAccountBudgetRequest"></a>

### GetAccountBudgetRequest
Request message for GetAccountBudget


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| level | [string](#string) |  | Required. &#39;account&#39; or &#39;acctgroup&#39; |
| id | [string](#string) |  | Required. Account or AccountGroup Id |
| year | [string](#string) |  | Optional. Default is current year. Format: `yyyy`. |






<a name="blueapi.cost.v1.GetAccountBudgetResponse"></a>

### GetAccountBudgetResponse
Response message for GetAccountBudget


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [blueapi.api.Budget](#blueapi.api.Budget) |  |  |






<a name="blueapi.cost.v1.GetAccountRequest"></a>

### GetAccountRequest
Request message for the Cost.GetAccount rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, `aws` and `gcp` is supported. |
| id | [string](#string) |  | Required. The account id to retrieve. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. |






<a name="blueapi.cost.v1.GetBreakevenPointRequest"></a>

### GetBreakevenPointRequest
Request message for GetBreakevenPoint


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| orgId | [string](#string) |  | Required. Organization Id. |
| type | [string](#string) |  | Required. For AWS, &#34;ri&#34; or &#34;sp&#34;. |
| arn | [string](#string) |  | Required. RI/SP Arn. |






<a name="blueapi.cost.v1.GetBreakevenPointResponse"></a>

### GetBreakevenPointResponse
Response message for GetBreakevenPoint


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| orgId | [string](#string) |  |  |
| awsCostBreakeven | [blueapi.api.aws.AwsCostBreakeven](#blueapi.api.aws.AwsCostBreakeven) |  |  |






<a name="blueapi.cost.v1.GetCalculatorConfigRequest"></a>

### GetCalculatorConfigRequest
Request message for the Cost.GetCalculatorConfig rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |






<a name="blueapi.cost.v1.GetCalculatorConfigResponse"></a>

### GetCalculatorConfigResponse
Response message for the Cost.GetCalculatorConfig rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| aws | [blueapi.api.aws.CalculatorConfig](#blueapi.api.aws.CalculatorConfig) |  |  |






<a name="blueapi.cost.v1.GetCostAttributesRequest"></a>

### GetCostAttributesRequest
Request message for the Cost.GetCostAttributes rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| month | [string](#string) |  | Required. Format: `yyyy-mm`. |
| groupId | [string](#string) |  | Optional. If set, reads the cost attributes of this group. Only valid for Ripple users. Implied as the parent billing group for Wave(Pro) users. |
| accountId | [string](#string) |  | Optional. You can set it to a single account or a comma-separated list of accounts. If set, overrides `groupId` |
| category | [string](#string) |  | Optional. A comma-separated list of dimensions to query. Valid values are `productCode`, `serviceCode`, `region`, `zone`, `usageType`, `instanceType`, `operation`, `invoiceId`, `description`, `resourceId` and `tags`. Sequence doesn&#39;t matter. An empty value implies all attributes will be returned. |






<a name="blueapi.cost.v1.GetCostAttributesResponse"></a>

### GetCostAttributesResponse
Response message for the Cost.GetCostAttributes rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [CostAttribute](#blueapi.cost.v1.CostAttribute) | repeated | The cost attributes. |






<a name="blueapi.cost.v1.GetCostReductionRequest"></a>

### GetCostReductionRequest
Request message for GetCostReduction


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| orgId | [string](#string) |  | Required. Organization Id. |
| reductionDisplay | [string](#string) |  | Required. Valid values: &#39;all&#39;, &#39;reservation&#39;, &#39;savingsplan&#39; |
| includeDetails | [bool](#bool) |  | Optional. If set to &#34;true&#34;, details of the RI or SP list is returned. Default: false. |
| fromDate | [string](#string) |  | Optional. The start date of the displayed data. If not set, the first day of the current month will be used. Format: yyyy-mm-dd. |
| toDate | [string](#string) |  | Optional. The end date of the displayed data. If not set, current date will be used. Format: yyyy-mm-dd. |
| payerId | [string](#string) |  | Optional. Payer Id. |
| billingInternalId | [string](#string) |  | Optional. Billing group Id. |
| groupId | [string](#string) |  | Optional. Account group Id. |
| accounts | [string](#string) | repeated | Optional. List of Account Ids. |
| services | [string](#string) | repeated | Optional. List of services. |






<a name="blueapi.cost.v1.GetCostReductionResponse"></a>

### GetCostReductionResponse
Response message for GetCostReduction


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| orgId | [string](#string) |  |  |
| awsCostReductions | [blueapi.api.aws.AwsCostReductions](#blueapi.api.aws.AwsCostReductions) |  |  |






<a name="blueapi.cost.v1.GetCoverageOndemandRequest"></a>

### GetCoverageOndemandRequest
Request message for GetCoverageOndemand


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| orgId | [string](#string) |  | Required. Organization Id. |
| period | [string](#string) |  | Required. Available values: day, hour |
| fromDate | [string](#string) |  | Optional. The start date of the displayed data. If not set, the first day of the current month will be used. Format: yyyy-mm-dd. |
| toDate | [string](#string) |  | Optional. The end date of the displayed data. If not set, current date will be used. Format: yyyy-mm-dd. |
| payerId | [string](#string) |  | Optional. Payer Id. |
| billingInternalId | [string](#string) |  | Optional. Billing group Id. |
| groupId | [string](#string) |  | Optional. Account group Id. |
| accounts | [string](#string) | repeated | Optional. List of Account Ids. |
| services | [string](#string) | repeated | Optional. List of services. |






<a name="blueapi.cost.v1.GetCoverageOndemandResponse"></a>

### GetCoverageOndemandResponse
Response message for GetCoverageOndemand


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| orgId | [string](#string) |  |  |
| ondemandData | [blueapi.api.OndemandData](#blueapi.api.OndemandData) | repeated |  |






<a name="blueapi.cost.v1.GetCoverageOptionsRequest"></a>

### GetCoverageOptionsRequest
Request message for GetCoverageOptions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| orgId | [string](#string) |  | Required. Organization Id. |
| period | [string](#string) |  | Required. Available values: day, hour. |
| fromDate | [string](#string) |  | Optional. The start date of the displayed data. If not set, the first day of the current month will be used. Format: yyyy-mm-dd. |
| toDate | [string](#string) |  | Optional. The end date of the displayed data. If not set, current date will be used. Format: yyyy-mm-dd. |
| payerId | [string](#string) |  | Optional. Payer Id. |
| billingInternalId | [string](#string) |  | Optional. Billing group Id. |
| groupId | [string](#string) |  | Optional. Account group Id. |
| accounts | [string](#string) | repeated | Optional. List of Account Ids. |
| services | [string](#string) | repeated | Optional. List of services. |






<a name="blueapi.cost.v1.GetCoverageOptionsResponse"></a>

### GetCoverageOptionsResponse
Response message for GetCoverageOptions


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| orgId | [string](#string) |  |  |
| optionsData | [blueapi.api.OptionsData](#blueapi.api.OptionsData) | repeated |  |






<a name="blueapi.cost.v1.GetForecastsRequest"></a>

### GetForecastsRequest
Request message for GetForecasts per billing group.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| billingInternalId | [string](#string) |  | Optional. Company Id of Billing Group to retrieve. Default value is user&#39;s Company Id |
| frequency | [string](#string) |  | Optional. Forecast frequency. Valid values are `daily` and `monthly`. Default value is `daily`. |
| level | [string](#string) |  | Optional. Forecast granularity. Valid values are `account`, `category` and `product`. Default value is `account`. |
| fromDate | [string](#string) |  | Optional. Start date to get cost forecast. If from_date is less than current date, historical costs are included. If from_date is greater than current date, only forecasted costs are returned. Format: `yyyy-mm-dd`. |
| toDate | [string](#string) |  | Optional. End date to get cost forecast. Currently, we only support 90 days forecasting from the first day of current month. Format: `yyyy-mm-dd`. |






<a name="blueapi.cost.v1.GetForecastsResponse"></a>

### GetForecastsResponse
Response message for GetForecasts per billing group.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [blueapi.api.BillingGroupForecast](#blueapi.api.BillingGroupForecast) |  |  |






<a name="blueapi.cost.v1.GetMonthOnMonthCostForecastRequest"></a>

### GetMonthOnMonthCostForecastRequest
Request message for GetMonthOnMonthCostForecast


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| level | [string](#string) |  | Required. &#39;account&#39; or &#39;acctgroup&#39; |
| id | [string](#string) |  | Required. Account or AccountGroup Id |
| date | [string](#string) |  | Optional. Default is current month. Format: `yyyymm`. |






<a name="blueapi.cost.v1.GetMonthOnMonthCostForecastResponse"></a>

### GetMonthOnMonthCostForecastResponse
Response message for GetMonthOnMonthCostForecast


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| data | [blueapi.api.MonthOnMonthCostForecast](#blueapi.api.MonthOnMonthCostForecast) | repeated |  |
| timestamp | [string](#string) |  |  |






<a name="blueapi.cost.v1.GetMonthToDateCostForecastRequest"></a>

### GetMonthToDateCostForecastRequest
Request message for GetMonthToDateCostForecast


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| level | [string](#string) |  | Required. &#39;account&#39; or &#39;acctgroup&#39; |
| id | [string](#string) |  | Required. Account or AccountGroup Id |
| date | [string](#string) |  | Optional. Default is current month. Format: `yyyymm`. |






<a name="blueapi.cost.v1.GetMonthToDateCostForecastResponse"></a>

### GetMonthToDateCostForecastResponse
Response message for GetMonthToDateCostForecast


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| budget | [double](#double) |  |  |
| data | [blueapi.api.MonthToDateCostForecast](#blueapi.api.MonthToDateCostForecast) | repeated |  |
| timestamp | [string](#string) |  |  |






<a name="blueapi.cost.v1.GetMonthlyCostForecastRequest"></a>

### GetMonthlyCostForecastRequest
Request message for GetMonthlyCostForecast


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| level | [string](#string) |  | Required. &#39;account&#39; or &#39;acctgroup&#39; |
| id | [string](#string) |  | Required. Account or AccountGroup Id |
| fromDate | [string](#string) |  | Optional. Start month to get cost forecast. Format: `yyyymm`. |
| toDate | [string](#string) |  | Optional. Last month to get cost forecast. Format: `yyyymm`. |






<a name="blueapi.cost.v1.GetMonthlyCostForecastResponse"></a>

### GetMonthlyCostForecastResponse
Response message for GetMonthlyCostForecast


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| data | [blueapi.api.MonthlyCostForecast](#blueapi.api.MonthlyCostForecast) | repeated |  |
| timestamp | [string](#string) |  |  |






<a name="blueapi.cost.v1.GetPayerAccountImportHistoryRequest"></a>

### GetPayerAccountImportHistoryRequest
Request message for the Cost.GetPayerAccountImportHistory rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| id | [string](#string) |  | Required. The account id to query. Could be `*`, which implies all payers. |
| month | [string](#string) |  | Optional. The UTC month to query. If empty, defaults to current month. Format is `yyyymm`. For example, June 2021 will be `202106`. |






<a name="blueapi.cost.v1.GetPayerAccountImportHistoryResponse"></a>

### GetPayerAccountImportHistoryResponse
Response message for the Cost.GetPayerAccountImportHistory rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The queried account id. |
| month | [string](#string) |  | The queried UTC month. |
| timestamps | [string](#string) | repeated | List of timestamps in RFC3339 format with the `T` separator. Example: `2019-10-12T07:20:50.52Z` |






<a name="blueapi.cost.v1.GetPayerAccountRequest"></a>

### GetPayerAccountRequest
Request message for the Cost.GetPayerAccount rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| id | [string](#string) |  | Required. The id of the account to get. |






<a name="blueapi.cost.v1.GetRecommendationsRequest"></a>

### GetRecommendationsRequest
Request message for GetRecommendations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| orgId | [string](#string) |  | Required. Organization Id. |
| accounts | [string](#string) | repeated | Required. List of Account Ids. |
| awsOptions | [GetRecommendationsRequestAwsOptions](#blueapi.cost.v1.GetRecommendationsRequestAwsOptions) |  | Required if vendor = &#39;aws&#39; |






<a name="blueapi.cost.v1.GetRecommendationsRequestAwsOptions"></a>

### GetRecommendationsRequestAwsOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| recommendationType | [string](#string) |  | Required. Valid values: &#39;reservation&#39;, &#39;rightsizing&#39;, &#39;scheduling&#39;. Only &#39;reservation&#39; is supported for now. |
| type | [string](#string) |  | For recommendationType = &#39;reservation&#39;. Optional. Valid values: &#39;combined&#39;, &#39;individual&#39; Default: &#39;combined&#39; |
| riServices | [string](#string) | repeated | For recommendationType = &#39;reservation&#39;. Optional. List of Services [&#34;AmazonEC2&#34;, &#34;AmazonRDS&#34;, &#34;AmazonElastiCache&#34;, &#34;AmazonES&#34;, &#34;AmazonRedshift&#34;]. Default: Empty list. |
| spServices | [string](#string) | repeated | For recommendationType = &#39;reservation&#39;. Optional. List of Services [&#34;AmazonECS&#34;, &#34;AmazonEKS&#34;, &#34;AWSLambda&#34;]. Default: Empty list. |
| purchaseEC2SavingsPlan | [bool](#bool) |  | For recommendationType = &#39;reservation&#39;. Optional. If set to &#34;true&#34;, recommends EC2 Instance Savings Plan that will cover usage not covered by RI. Default: false. |
| ec2SpProductFamily | [string](#string) |  | For recommendationType = &#39;reservation&#39;. Optional. Valid values: &#39;EC2Instance&#39;, &#39;Compute&#39;. Default: &#39;EC2Instance&#39;. |
| term | [string](#string) |  | For recommendationType = &#39;reservation&#39;. Optional. Valid values: &#39;1yr&#39;, &#39;3yr&#39;. Default: &#39;1yr&#39;. |
| offeringClass | [string](#string) |  | For recommendationType = &#39;reservation&#39;. Optional. Valid values: &#39;standard&#39;, &#39;convertible&#39;. Default: &#39;standard&#39;. |
| paymentOption | [string](#string) |  | For recommendationType = &#39;reservation&#39;. Optional. Valid values: &#39;allUpfront&#39;, &#39;partialUpfront&#39;, &#39;noUpfront&#39;. Default: &#39;allUpfront&#39;. |
| coveragePercentage | [double](#double) |  | For recommendationType = &#39;reservation&#39;. Optional. Percentage of the usage (in NormalizedUnits) to be covered by Reserved Instance or Savings Plan. Default: 100. |






<a name="blueapi.cost.v1.GetRecommendationsResponse"></a>

### GetRecommendationsResponse
Request message for GetRecommendations


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| orgId | [string](#string) |  |  |
| awsRecommendations | [blueapi.api.aws.AwsRecommendations](#blueapi.api.aws.AwsRecommendations) |  |  |






<a name="blueapi.cost.v1.GetUtilizationRequest"></a>

### GetUtilizationRequest
Request message for GetUtilization


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| orgId | [string](#string) |  | Required. Organization Id. |
| type | [string](#string) |  | Required. For AWS, &#34;ri&#34; or &#34;sp&#34;. |
| fromDate | [string](#string) |  | Optional. The start date of the displayed data. If not set, the first day of the current month will be used. Format: yyyy-mm-dd. |
| toDate | [string](#string) |  | Optional. The end date of the displayed data. If not set, current date will be used. Format: yyyy-mm-dd. |
| payerId | [string](#string) |  | Optional. Payer Id. |
| billingInternalId | [string](#string) |  | Optional. Billing group Id. |
| groupId | [string](#string) |  | Optional. Account group Id. |






<a name="blueapi.cost.v1.GetUtilizationResponse"></a>

### GetUtilizationResponse
Response message for GetUtilization


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| orgId | [string](#string) |  |  |
| utilizationData | [blueapi.api.UtilizationData](#blueapi.api.UtilizationData) | repeated |  |






<a name="blueapi.cost.v1.ImportCurFilesRequest"></a>

### ImportCurFilesRequest
Request message for the Cost.ImportCurFiles rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| month | [string](#string) |  | Optional. The UTC month to import. If empty, it defaults to the current month. Format is `yyyymm`. For example, June 2021 will be `202106`. |
| filter | [string](#string) |  | Optional. A comma-separated list of management accounts to import. If empty, all CURs associated with all your management accounts will be imported. |






<a name="blueapi.cost.v1.ListAccountsRequest"></a>

### ListAccountsRequest
Request message for the Cost.ListAccounts rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, `aws` and `gcp` is supported. |
| groupId | [string](#string) |  | Optional. The billing group internal id. Only valid for Ripple users. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. |






<a name="blueapi.cost.v1.ListCalculationsHistoryAwsResponse"></a>

### ListCalculationsHistoryAwsResponse
AWS-specific response message for the Cost.ListCalculationsHistory rpc. Should be compatible with the Operations API.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operations | [blueapi.api.Operation](#blueapi.api.Operation) | repeated |  |






<a name="blueapi.cost.v1.ListCalculationsHistoryRequest"></a>

### ListCalculationsHistoryRequest
Request message for the Cost.ListCalculationsHistory rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| asOf | [string](#string) |  | Optional. List operations on and after this date. Format is yyyymmdd. For example, if you want to list all operations starting from June 01, 2021, set to `20210601`. If not set, defaults to the first day of the current UTC month. |
| excludeDone | [bool](#bool) |  | Optional. If true, exclude all operations that are marked as done. Include by default. |






<a name="blueapi.cost.v1.ListCalculationsHistoryResponse"></a>

### ListCalculationsHistoryResponse
Response message for the Cost.ListCalculationsHistory rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| aws | [ListCalculationsHistoryAwsResponse](#blueapi.cost.v1.ListCalculationsHistoryAwsResponse) |  |  |






<a name="blueapi.cost.v1.ListCalculationsSchedulesRequest"></a>

### ListCalculationsSchedulesRequest
Request message for the Cost.ListCalculationsSchedules rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |






<a name="blueapi.cost.v1.ListCalculationsSchedulesResponse"></a>

### ListCalculationsSchedulesResponse
Response message for the Cost.ListCalculationsSchedules rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| schedules | [CalculationsSchedule](#blueapi.cost.v1.CalculationsSchedule) | repeated |  |






<a name="blueapi.cost.v1.ListCalculatorCostModifiersRequest"></a>

### ListCalculatorCostModifiersRequest
Request message for the Cost.ListCalculatorCostModifiers rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |






<a name="blueapi.cost.v1.ListCalculatorRunningAccountsRequest"></a>

### ListCalculatorRunningAccountsRequest
Request message for the Cost.ListCalculatorRunningAccounts rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| month | [string](#string) |  | Optional. The UTC month to query. Defaults to current month if empty. Format is `yyyymm`. For example, June 2021 will be `202106`. |






<a name="blueapi.cost.v1.ListCalculatorRunningAccountsResponse"></a>

### ListCalculatorRunningAccountsResponse
Response message for the Cost.ListCalculatorRunningAccounts rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| aws | [ListCalculatorRunningAccountsResponse.AwsRunningAccount](#blueapi.cost.v1.ListCalculatorRunningAccountsResponse.AwsRunningAccount) |  | AWS-specific entry. |






<a name="blueapi.cost.v1.ListCalculatorRunningAccountsResponse.AwsRunningAccount"></a>

### ListCalculatorRunningAccountsResponse.AwsRunningAccount



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| month | [string](#string) |  | The queried month. Format is yyyy-mm. |
| account | [string](#string) |  | The AWS account that is actively processing. |
| date | [string](#string) |  | The target date the account is processing for. |
| started | [string](#string) |  | The timestamp when the calculation has started. |






<a name="blueapi.cost.v1.ListCostFilters"></a>

### ListCostFilters
Response message for the ListCostFilters rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filterId | [string](#string) |  | Required. Filter Id. |
| filterName | [string](#string) |  | Required. Filter Name. |
| vendor | [string](#string) |  | Required. Vendor. |
| groupId | [string](#string) |  | Optional. If set, reads the usage-based cost details of this group. Only valid for Ripple users. Implied as the parent billing group for Wave(Pro) users.

For AWS Ripple, only billing internal ids are supported at the moment. Overriden when `accountId` is set to anything other than `*`. Set this and `accountId` to `*` to read the usage-based cost details of the whole organization. Optional for AWS Wave(Pro). |
| accountId | [string](#string) |  | Optional. You can set it to a single account or a comma-separated list of accounts.

For AWS, setting this will override `groupId`. Set this and `groupId` to `*` to read the usage-based cost details of the whole organization. |
| awsOptions | [ReadCostsRequestAwsOptions](#blueapi.cost.v1.ReadCostsRequestAwsOptions) |  | Optional. Valid only for the `aws` vendor. AWS-specific options. |






<a name="blueapi.cost.v1.ListCostFiltersRequest"></a>

### ListCostFiltersRequest
Request message for the ListCostFilters rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |






<a name="blueapi.cost.v1.ListCostFiltersResponse"></a>

### ListCostFiltersResponse
Response message for the ListCostFilters rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| costFilters | [ListCostFilters](#blueapi.cost.v1.ListCostFilters) | repeated |  |






<a name="blueapi.cost.v1.ListPayerAccountsRequest"></a>

### ListPayerAccountsRequest
Request message for the Cost.ListPayerAccounts rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |






<a name="blueapi.cost.v1.ListTagsRequest"></a>

### ListTagsRequest
Request message for the Cost.ListTags rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| groupId | [string](#string) |  | Optional. The billing group internal id. Only valid for Ripple users. |
| field_mask | [google.protobuf.FieldMask](#google.protobuf.FieldMask) |  | Optional. |






<a name="blueapi.cost.v1.ReadAdjustmentsRequest"></a>

### ReadAdjustmentsRequest
Request message for the Cost.ReadAdjustments rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` or `azure` is supported. |
| groupId | [string](#string) |  | Optional. At the moment, only billing internal ids are supported. If set, reads the non-usage-based adjustment details of this group. Valid only if `accountId` is not set. If both `groupId` and `accountId` are not set, reads the adjustment details of the whole organization. Only valid for Ripple users. Implied (or discarded) for Wave(Pro) users. |
| accountId | [string](#string) |  | Optional. If set, reads the non-usaged-based adjustment details of this account. Also invalidates the `groupId` value even if set. If both `groupId` and `accountId` are not set, reads the adjustment details of the whole organization. |
| startTime | [string](#string) |  | Optional. The UTC date to start streaming data from. If not set, the first day of the current month will be used. Format: `yyyymmdd`. |
| endTime | [string](#string) |  | Optional. The UTC date to end the streaming data. If not set, current date will be used. Format: `yyyymmdd`. |
| awsOptions | [ReadAdjustmentsRequestAwsOptions](#blueapi.cost.v1.ReadAdjustmentsRequestAwsOptions) |  | Optional. Valid only for the `aws` vendor. AWS-specific options. |






<a name="blueapi.cost.v1.ReadAdjustmentsRequestAwsOptions"></a>

### ReadAdjustmentsRequestAwsOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| toCurrency | [string](#string) |  | Optional. Set to US dollars (USD) by default (AWS CUR&#39;s default currency). You can set it to the desired three-letter currency symbol (i.e. JPY, EUR, GBP), in which case, it will use the latest exchange rates provided by https://fixer.io. If you prefer a custom exchange rate, you can append the rate to the currency&#39;s three-letter symbol. For example, `JPY:110.622` for the Japanese Yen. Note that the exchange rate should be against the US dollar (USD). |






<a name="blueapi.cost.v1.ReadCostAttributesRequest"></a>

### ReadCostAttributesRequest
Request message for the Cost.ReadCostAttributes rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| groupId | [string](#string) |  | Optional. If set, reads the cost attributes of this group. Only valid for Ripple users. Implied as the parent billing group for Wave(Pro) users.

For AWS Ripple, only billing internal ids are supported at the moment. Overriden when `accountId` is set to anything other than `*`. Set this and `accountId` to `*` to read the cost attributes of the whole organization. Optional for AWS Wave(Pro). |
| accountId | [string](#string) |  | Optional. You can set it to a single account or a comma-separated list of accounts.

For AWS, setting this will override `groupId`. Set this and `groupId` to `*` to read the cost attributes of the whole organization. |
| startTime | [string](#string) |  | Optional. The UTC date to start streaming data from. If not set, the first day of the current month will be used. Format: `yyyymmdd`. The oldest supported date is `20200101`. |
| endTime | [string](#string) |  | Optional. The UTC date to end the streaming data. If not set, current date will be used. Format: `yyyymmdd`. |
| awsOptions | [ReadCostAttributesRequest.AwsOptions](#blueapi.cost.v1.ReadCostAttributesRequest.AwsOptions) |  | Optional. Valid only for the `aws` vendor. AWS-specific options. |






<a name="blueapi.cost.v1.ReadCostAttributesRequest.AwsOptions"></a>

### ReadCostAttributesRequest.AwsOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| dimensions | [string](#string) |  | Optional. A comma-separated list of dimensions to query. Valid values are `productCode`, `serviceCode`, `region`, `zone`, `usageType`, `instanceType`, `operation`, `invoiceId`, `description`, `resourceId`, `tags`, and `costCategories`. Sequence doesn&#39;t matter. An empty value implies all attributes will be returned. |






<a name="blueapi.cost.v1.ReadCostsRequest"></a>

### ReadCostsRequest
Request message for the Cost.ReadCosts rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, `aws` and `gcp` are supported. |
| groupId | [string](#string) |  | Optional. If set, reads the usage-based cost details of this group. Only valid for Ripple users. Implied as the parent billing group for Wave(Pro) users.

For AWS Ripple, only billing internal ids are supported at the moment. Overriden when `accountId` is set to anything other than `*`. Set this and `accountId` to `*` to read the usage-based cost details of the whole organization. Optional for AWS Wave(Pro). |
| accountId | [string](#string) |  | Optional. You can set it to a single account or a comma-separated list of accounts.

For AWS, setting this will override `groupId`. Set this and `groupId` to `*` to read the usage-based cost details of the whole organization. |
| startTime | [string](#string) |  | Optional. The UTC date to start streaming data from. If not set, the first day of the current month will be used. Format: `yyyymmdd`. The oldest supported date is `20200101`. |
| endTime | [string](#string) |  | Optional. The UTC date to end the streaming data. If not set, current date will be used. Format: `yyyymmdd`. |
| awsOptions | [ReadCostsRequestAwsOptions](#blueapi.cost.v1.ReadCostsRequestAwsOptions) |  | Optional. Valid only for the `aws` vendor. AWS-specific options. |
| gcpOptions | [ReadCostsRequestGcpOptions](#blueapi.cost.v1.ReadCostsRequestGcpOptions) |  | Optional. Valid only for the `gcp` vendor. GCP-specific options. |






<a name="blueapi.cost.v1.ReadCostsRequestAwsOptions"></a>

### ReadCostsRequestAwsOptions
AWS-specific options for ReadCostsRequest.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| groupByColumns | [string](#string) |  | Optional. A comma-separated list of columns to aggregate the data into. Valid values are `productCode`, `serviceCode`, `region`, `zone`, `usageType`, `instanceType`, `operation`, `invoiceId`, `description`, and `resourceId`. A special value of `none` is also supported, which means query by date or month per account only.

For example, if you only want the services and region data, you can set this field to `productCode,region`. Your input sequence doesn&#39;t matter (although the sequence above is recommended) as the actual sequence is already fixed in the return data (see the definition in https://github.com/alphauslabs/blueapi/blob/main/api/aws/cost.proto), which is generic to specific, top to bottom. Invalid values are discarded. Excluded columns will be empty. |
| groupByMonth | [bool](#bool) |  | Optional. If set to true, return data grouped by month within the date range. If you want data that is grouped per account per month, set this to `true`, then set `groupByColumns` to `none`. You can also use `groupByColumns` while setting this to true. |
| groupAccounts | [bool](#bool) |  | Optional. If set to true, group all input accounts into one. |
| filters | [ReadCostsRequestAwsOptionsFilters](#blueapi.cost.v1.ReadCostsRequestAwsOptionsFilters) | repeated | Optional. A list of filtering options. See [ReadCostsRequestAwsOptionsFilters] for more information on each filter item. Multiple filter items will use the logical &#39;or&#39; operator, e.g. filter1 || filter2 || filter3, etc. |
| tagFilters | [ReadCostsRequestAwsOptions.TagFilters](#blueapi.cost.v1.ReadCostsRequestAwsOptions.TagFilters) | repeated | Optional. A list of filtering options specific for tags. Multiple filter items will use the logical &#39;or&#39; operator, e.g. filter1 || filter2 || filter3, etc. Discarded when `groupByColumns` field is set or if `groupByMonth` is true. |
| includeTags | [bool](#bool) |  | Optional. If set to true, stream will include resource tags. Discarded when `groupByColumns` field is set to `none`. |
| includeCostCategories | [bool](#bool) |  | Optional. If set to true, stream will include resource cost category information. Discarded when `groupByColumns` field is set to `none`. |
| toCurrency | [string](#string) |  | Optional. Set to US dollars (USD) by default (AWS CUR&#39;s default currency). You can set it to the desired three-letter currency symbol (i.e. JPY, EUR, GBP), in which case, it will use the latest exchange rates provided by https://fixer.io. If you prefer a custom exchange rate, you can append the rate to the currency&#39;s three-letter symbol. For example, `JPY:110.622` for the Japanese Yen. Note that the exchange rate should be against the US dollar (USD). |
| forceLatest | [bool](#bool) |  | Optional. If set to true, always get the up-to-date calculation results. This data isn&#39;t necessarily in-sync with your invoice data as AWS could still have updated your CUR files even after you created your invoices. By default, returned data are those that are always in-sync with your invoices.

This field is discarded for Wave(Pro) users. You will always get the latest data that is in-sync with your invoices. |
| noCache | [bool](#bool) |  | If true, force API to not use cached data. |






<a name="blueapi.cost.v1.ReadCostsRequestAwsOptions.TagFilters"></a>

### ReadCostsRequestAwsOptions.TagFilters
A map of &#34;key:value&#34; tag filters. The key indicates the tag key while the value is the filter tag value which can be prefixed by either &#34;eq:&#34; (equal), &#34;re:&#34; (regular expressions based on https://github.com/google/re2), or &#34;!re:&#34; (reverse &#34;re:&#34;). No prefix is the same as &#34;eq:&#34;. Multiple map items will use the logical &#39;and&#39; operator, e.g. mapfilter1 &amp;&amp; mapfilter2 &amp;&amp; mapfilter3, etc.

For example, if you want to query lineitems with the tag `project:MY_PROJECT`, set to `{&#34;project&#34;:&#34;MY_PROJECT&#34;}`. You can also use regular expressions for tag values, such as `{&#34;name&#34;:&#34;re:[A-Za-z0-9]*&#34;}`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| andFilters | [ReadCostsRequestAwsOptions.TagFilters.AndFiltersEntry](#blueapi.cost.v1.ReadCostsRequestAwsOptions.TagFilters.AndFiltersEntry) | repeated |  |






<a name="blueapi.cost.v1.ReadCostsRequestAwsOptions.TagFilters.AndFiltersEntry"></a>

### ReadCostsRequestAwsOptions.TagFilters.AndFiltersEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="blueapi.cost.v1.ReadCostsRequestAwsOptionsFilters"></a>

### ReadCostsRequestAwsOptionsFilters
A map of &#34;key:value&#34; column filters. Dependent on `groupByColumns` and/or `groupByMonth`. The key indicates the column name while the value is the filter value prefixed by either &#34;eq:&#34; (equal), &#34;re:&#34; (regular expressions based on https://github.com/google/re2), or &#34;!re:&#34; (reverse &#34;re:&#34;). No prefix is the same as &#34;eq:&#34;. Multiple map items will use the logical &#39;and&#39; operator, e.g. mapfilter1 &amp;&amp; mapfilter2 &amp;&amp; mapfilter3, etc.

For example, if you like to filter `productCode` to return only `AmazonEC2`, set to `{&#34;productCode&#34;:&#34;eq:AmazonEC2&#34;}` or `{&#34;productCode&#34;:&#34;AmazonEC2&#34;}`. You can also use a regular expression like `{&#34;productCode&#34;:&#34;re:AmazonEC2|AmazonRDS&#34;}`, which means return all AmazonEC2 or AmazonRDS lineitems. Or reverse regexp, such as `{&#34;productCode&#34;:&#34;!re:^AmazonEC2$&#34;}`, which means return all items except `AmazonEC2`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| andFilters | [ReadCostsRequestAwsOptionsFilters.AndFiltersEntry](#blueapi.cost.v1.ReadCostsRequestAwsOptionsFilters.AndFiltersEntry) | repeated |  |






<a name="blueapi.cost.v1.ReadCostsRequestAwsOptionsFilters.AndFiltersEntry"></a>

### ReadCostsRequestAwsOptionsFilters.AndFiltersEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="blueapi.cost.v1.ReadCostsRequestGcpOptions"></a>

### ReadCostsRequestGcpOptions
GCP-specific options for ReadCostsRequest.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| groupByColumns | [string](#string) |  | Optional. A comma-separated list of columns to aggregate the data into. Valid values are `service`, `sku`, `region`, `zone`, and `usageUnit`. A special value of `none` is also supported, which means query by date or month per account only. |
| groupByMonth | [bool](#bool) |  | Optional. If set to true, return data grouped by month within the date range. If you want data that is grouped per account per month, set this to `true`, then set `groupByColumns` to `none`. |
| groupAccounts | [bool](#bool) |  | Optional. If set to true, group all input accounts into one. Valid only if `groupByMonth` is true. |
| filters | [ReadCostsRequestGcpOptionsFilters](#blueapi.cost.v1.ReadCostsRequestGcpOptionsFilters) | repeated | Optional. A list of filtering options. See [ReadCostsRequestGcpOptionsFilters] for more information on each filter item. Multiple filter items will use the logical &#39;or&#39; operator, e.g. filter1 || filter2 || filter3, etc. |
| includeInvoiceMonth | [bool](#bool) |  | Optional. If set to true, stream will include invoice month. Discarded when `groupByColumns` field is set to `none`.

The last usage occurrence of invoice month based on endTime is set to endTime. For example, (Assumption: Last usage start time 2022-02-01 01:00:00 UTC) If you set to &#34;endTime:20210131&#34;, automatically set to &#34;endTime:20220101&#34;. Ignored if the batch calculation for invoice month has not been completed. |
| includeCredits | [bool](#bool) |  | Optional. If set to true, stream will include credits{&#34;creditsType&#34;,&#34;creditsName&#34;}. Discarded when `groupByColumns` field is set to `none`. |
| rounding | [bool](#bool) |  | Optional. If set to true, round the cost data to a rounded format. It will be rounded off in the unit specified by `groupByColumns`. |
| noCache | [bool](#bool) |  | If true, force API to not use cached data. |






<a name="blueapi.cost.v1.ReadCostsRequestGcpOptionsFilters"></a>

### ReadCostsRequestGcpOptionsFilters
A map of &#34;key:value&#34; column filters. Dependent on `groupByColumns` and/or `groupByMonth`. The key indicates the column name while the value is the filter value prefixed by either &#34;eq:&#34; (equal), &#34;re:&#34; (regular expressions based on https://github.com/google/re2), or &#34;!re:&#34; (reverse &#34;re:&#34;). No prefix is the same as &#34;eq:&#34;. Multiple map items will use the logical &#39;and&#39; operator, e.g. mapfilter1 &amp;&amp; mapfilter2 &amp;&amp; mapfilter3, etc.

For example, if you like to filter `service` to return only `Compute Engine`, set to `{&#34;service&#34;:&#34;eq:Compute Engine&#34;}` or `{&#34;service&#34;:&#34;Compute Engine&#34;}`. You can also use a regular expression like `{&#34;service&#34;:&#34;re:Compute Engine|Cloud Storage&#34;}`, which means return all Compute Engine or Cloud Storage lineitems. Or reverse regexp, such as `{&#34;service&#34;:&#34;!re:^Cloud Engine$&#34;}`, which means return all items except `Cloud Engine`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| andFilters | [ReadCostsRequestGcpOptionsFilters.AndFiltersEntry](#blueapi.cost.v1.ReadCostsRequestGcpOptionsFilters.AndFiltersEntry) | repeated |  |






<a name="blueapi.cost.v1.ReadCostsRequestGcpOptionsFilters.AndFiltersEntry"></a>

### ReadCostsRequestGcpOptionsFilters.AndFiltersEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="blueapi.cost.v1.ReadNonTagCostsRequest"></a>

### ReadNonTagCostsRequest
Request message for the Cost.ReadNonTagCosts rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| billingInternalId | [string](#string) |  | Required. The billing internal id to stream. |
| startTime | [string](#string) |  | Optional. Timestamp to start streaming data from. If not set, the first day of the current month will be used. Format: `yyyymmdd`. |
| endTime | [string](#string) |  | Optional. Timestamp to end the streaming data. If not set, current date will be used. Format: `yyyymmdd`. |
| groupByMonths | [bool](#bool) |  | Optional. Group services and costs by months in the range of `startTime` and `endTime`. If not set, daily data will be returned. |






<a name="blueapi.cost.v1.ReadTagCostsRequest"></a>

### ReadTagCostsRequest
Request message for the Cost.ReadTagCosts rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| billingInternalId | [string](#string) |  | Required. The billing internal id to stream. |
| startTime | [string](#string) |  | Optional. Timestamp to start streaming data from. If not set, the first day of the current month will be used. Format: `yyyymmdd`. |
| endTime | [string](#string) |  | Optional. Timestamp to end the streaming data. If not set, current date will be used. Format: `yyyymmdd`. |
| groupByMonths | [bool](#bool) |  | Optional. Group services and costs by months in the range of `startTime` and `endTime`. If not set, daily data will be returned. |
| awsOptions | [ReadTagCostsRequestAwsOptions](#blueapi.cost.v1.ReadTagCostsRequestAwsOptions) |  | Optional. Valid only for the `aws` vendor. AWS-specific options. |






<a name="blueapi.cost.v1.ReadTagCostsRequestAwsOptions"></a>

### ReadTagCostsRequestAwsOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tagId | [string](#string) |  | Optional. If set, only return data for this tagId. |
| groupByColumns | [string](#string) |  | Optional. A comma-separated list of columns to aggregate the data into. Valid values are `productCode`, `serviceCode`, `region`, `zone`, `usageType`, `instanceType`, `operation`, `invoiceId`, `description`, and `resourceId`. A special value of `none` is also supported, which means query by date or month per account only.

For example, if you only want the services and region data, you can set this field to `productCode,region`. Your input sequence doesn&#39;t matter (although the sequence above is recommended) as the actual sequence is already fixed in the return data (see the definition in https://github.com/alphauslabs/blueapi/blob/main/api/aws/cost.proto), which is generic to specific, top to bottom. Invalid values are discarded. Excluded columns will be empty. |
| groupByMonth | [bool](#bool) |  | Optional. If set to true, return data grouped by month within the date range. If you want data that is grouped per account per month, set this to `true`, then set `groupByColumns` to `none`. You can also use `groupByColumns` while setting this to true. |
| filters | [ReadCostsRequestAwsOptionsFilters](#blueapi.cost.v1.ReadCostsRequestAwsOptionsFilters) | repeated | Optional. A list of filtering options. See [ReadCostsRequestAwsOptionsFilters] for more information on each filter item. Multiple filter items will use the logical &#39;or&#39; operator, e.g. filter1 || filter2 || filter3, etc. |
| tagFilters | [ReadTagCostsRequestAwsOptions.TagFilters](#blueapi.cost.v1.ReadTagCostsRequestAwsOptions.TagFilters) | repeated | Optional. A list of filtering options specific for tags. Multiple filter items will use the logical &#39;or&#39; operator, e.g. filter1 || filter2 || filter3, etc. Discarded when `groupByColumns` field is set or if `groupByMonth` is true. |
| includeTags | [bool](#bool) |  | Optional. If set to true, stream will include resource tags. Discarded when `groupByColumns` field is set to `none`. |
| includeCostCategories | [bool](#bool) |  | Optional. If set to true, stream will include resource cost category information. Discarded when `groupByColumns` field is set to `none`. |
| toCurrency | [string](#string) |  | Optional. Set to US dollars (USD) by default (AWS CUR&#39;s default currency). You can set it to the desired three-letter currency symbol (i.e. JPY, EUR, GBP), in which case, it will use the latest exchange rates provided by https://fixer.io. If you prefer a custom exchange rate, you can append the rate to the currency&#39;s three-letter symbol. For example, `JPY:110.622` for the Japanese Yen. Note that the exchange rate should be against the US dollar (USD). |
| forceLatest | [bool](#bool) |  | Optional. If set to true, always get the up-to-date calculation results. This data isn&#39;t necessarily in-sync with your invoice data as AWS could still have updated your CUR files even after you created your invoices. By default, returned data are those that are always in-sync with your invoices.

This field is discarded for Wave(Pro) users. You will always get the latest data that is in-sync with your invoices. |
| noCache | [bool](#bool) |  | If true, force API to not use cached data. |
| tagIds | [string](#string) | repeated | Optional. If set, only return data list tags. |






<a name="blueapi.cost.v1.ReadTagCostsRequestAwsOptions.TagFilters"></a>

### ReadTagCostsRequestAwsOptions.TagFilters
A map of &#34;key:value&#34; tag filters. The key indicates the tag key while the value is the filter tag value which can be prefixed by either &#34;eq:&#34; (equal), &#34;re:&#34; (regular expressions based on https://github.com/google/re2), or &#34;!re:&#34; (reverse &#34;re:&#34;). No prefix is the same as &#34;eq:&#34;. Multiple map items will use the logical &#39;and&#39; operator, e.g. mapfilter1 &amp;&amp; mapfilter2 &amp;&amp; mapfilter3, etc.

For example, if you want to query lineitems with the tag `project:MY_PROJECT`, set to `{&#34;project&#34;:&#34;MY_PROJECT&#34;}`. You can also use regular expressions for tag values, such as `{&#34;name&#34;:&#34;re:[A-Za-z0-9]*&#34;}`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| andFilters | [ReadTagCostsRequestAwsOptions.TagFilters.AndFiltersEntry](#blueapi.cost.v1.ReadTagCostsRequestAwsOptions.TagFilters.AndFiltersEntry) | repeated |  |






<a name="blueapi.cost.v1.ReadTagCostsRequestAwsOptions.TagFilters.AndFiltersEntry"></a>

### ReadTagCostsRequestAwsOptions.TagFilters.AndFiltersEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="blueapi.cost.v1.UpdateAccountBudgetAlertsRequest"></a>

### UpdateAccountBudgetAlertsRequest
Request message for UpdateAccountBudgetAlerts


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| id | [string](#string) |  | Required. Account Id |
| budgetAlert | [blueapi.api.wave.BudgetAlert](#blueapi.api.wave.BudgetAlert) |  | Required. Budget alert setting.

Set only the setting value to be changed. For example, If you want to change only daily value, set `{&#34;budget&#34;:[{&#34;id&#34;:&#34;daily&#34;,&#34;value&#34;:100,&#34;enabled&#34;:true}}` as a parameter The same goes for notification. If you want to change only email value, set `{&#34;notification&#34;:[{&#34;id&#34;:&#34;email&#34;,&#34;destination&#34;:&#34;budgetalert-example@alphaus.cloud&#34;,&#34;enabled&#34;:true}}` as a parameter |






<a name="blueapi.cost.v1.UpdateAccountBudgetRequest"></a>

### UpdateAccountBudgetRequest
Request message for UpdateAccountBudget


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| budgetId | [string](#string) |  | Required. Budget Id |
| data | [blueapi.api.Budget](#blueapi.api.Budget) |  |  |






<a name="blueapi.cost.v1.UpdateCostFiltersRequest"></a>

### UpdateCostFiltersRequest
Request message for the UpdateCostFilters rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| vendor | [string](#string) |  | Required. At the moment, only `aws` is supported. |
| filterId | [string](#string) |  | Required. Filter Id. |
| filterName | [string](#string) |  | Required. Filter Name. Specify characters between 1 ~ 100 |
| groupId | [string](#string) |  | Required. If set, reads the usage-based cost details of this group. Only valid for Ripple users. Implied as the parent billing group for Wave(Pro) users.

For AWS Ripple, only billing internal ids are supported at the moment. Overriden when `accountId` is set to anything other than `*`. Set this and `accountId` to `*` to read the usage-based cost details of the whole organization. Optional for AWS Wave(Pro). |
| accountId | [string](#string) |  | Required. You can set it to a single account or a comma-separated list of accounts.

For AWS, setting this will override `groupId`. Set this and `groupId` to `*` to read the usage-based cost details of the whole organization. |
| awsOptions | [ReadCostsRequestAwsOptions](#blueapi.cost.v1.ReadCostsRequestAwsOptions) |  | Required. Valid only for the `aws` vendor. AWS-specific options. |






<a name="blueapi.cost.v1.UpdateCostFiltersResponse"></a>

### UpdateCostFiltersResponse
Response message for the UpdateCostFilters rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filterId | [string](#string) |  | Required. Filter Id. |





 

 

 


<a name="blueapi.cost.v1.Cost"></a>

### Cost
Service for reading aggregated costs for your cloud costs and usages.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| ListPayerAccounts | [ListPayerAccountsRequest](#blueapi.cost.v1.ListPayerAccountsRequest) | [.blueapi.api.Account](#blueapi.api.Account) stream | Lists vendor payer accounts. For AWS, these are management accounts (formerly known as master or payer accounts); for Azure, these are subscriptions, for GCP, these are projects. |
| GetPayerAccount | [GetPayerAccountRequest](#blueapi.cost.v1.GetPayerAccountRequest) | [.blueapi.api.ripple.Payer](#blueapi.api.ripple.Payer) | Gets a vendor payer account. This API includes all of the account&#39;s metadata. See https://alphauslabs.github.io/blueapi/ for the list of supported attributes. For AWS, this means a management account (formerly known as master or payer account); for Azure, this means a subscription, for GCP, this means a project. |
| GetPayerAccountImportHistory | [GetPayerAccountImportHistoryRequest](#blueapi.cost.v1.GetPayerAccountImportHistoryRequest) | [GetPayerAccountImportHistoryResponse](#blueapi.cost.v1.GetPayerAccountImportHistoryResponse) stream | Gets a payer account&#39;s import history, which is a list of timestamps our system tracks when the account&#39;s data are imported to our system, which in turn, triggers processing. At the moment, this only supports AWS (CUR files). You can also set {id} to `*` to return all payers&#39; information under the organization. |
| CreatePayerAccount | [CreatePayerAccountRequest](#blueapi.cost.v1.CreatePayerAccountRequest) | [.blueapi.api.Account](#blueapi.api.Account) | DEPRECATED: Registers a vendor payer account. This is now deprecated for AWS payer accounts. To register an AWS payer account, check out the &#39;CreateDefaultCostAccess&#39; API. |
| DeletePayerAccount | [DeletePayerAccountRequest](#blueapi.cost.v1.DeletePayerAccountRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes a vendor payer account. |
| ListAccounts | [ListAccountsRequest](#blueapi.cost.v1.ListAccountsRequest) | [.blueapi.api.Account](#blueapi.api.Account) stream | Lists all vendor accounts. |
| GetAccount | [GetAccountRequest](#blueapi.cost.v1.GetAccountRequest) | [.blueapi.api.Account](#blueapi.api.Account) | Gets a vendor account. This API includes all of the account&#39;s metadata. See https://alphauslabs.github.io/blueapi/ for the list of supported attributes. |
| CreateAccount | [CreateAccountRequest](#blueapi.cost.v1.CreateAccountRequest) | [.blueapi.api.Account](#blueapi.api.Account) | Registers a vendor account. |
| DeleteAccount | [DeleteAccountRequest](#blueapi.cost.v1.DeleteAccountRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | WORK-IN-PROGRESS: Deletes a vendor account. |
| ListTags | [ListTagsRequest](#blueapi.cost.v1.ListTagsRequest) | [.blueapi.api.CostTag](#blueapi.api.CostTag) stream | Lists all vendor tags. |
| ListCalculatorRunningAccounts | [ListCalculatorRunningAccountsRequest](#blueapi.cost.v1.ListCalculatorRunningAccountsRequest) | [ListCalculatorRunningAccountsResponse](#blueapi.cost.v1.ListCalculatorRunningAccountsResponse) stream | Lists the vendor calculator&#39;s queued accounts for calculation. If result is non-empty, it means calculation is still in progress for the returned accounts. Only available in Ripple. |
| GetCalculatorConfig | [GetCalculatorConfigRequest](#blueapi.cost.v1.GetCalculatorConfigRequest) | [GetCalculatorConfigResponse](#blueapi.cost.v1.GetCalculatorConfigResponse) | WORK-IN-PROGRESS: Gets the vendor cost calculator&#39;s current configuration. |
| ListCalculatorCostModifiers | [ListCalculatorCostModifiersRequest](#blueapi.cost.v1.ListCalculatorCostModifiersRequest) | [CalculatorCostModifier](#blueapi.cost.v1.CalculatorCostModifier) stream | Lists the cost calculator&#39;s cost modifiers. At the moment, the supported {vendor} is &#39;aws&#39;. Only available in Ripple. |
| CreateCalculatorCostModifier | [CreateCalculatorCostModifierRequest](#blueapi.cost.v1.CreateCalculatorCostModifierRequest) | [CreateCalculatorCostModifierResponse](#blueapi.cost.v1.CreateCalculatorCostModifierResponse) | Creates a cost modifier. A cost modifier allows you to modify the cost per lineitem. At the moment, the supported {vendor} is &#39;aws&#39; and only applies to items not affected by trueunblended calculations. Items not covered include some usages under AmazonEC2, AmazonRDS, AmazonElastiCache, AmazonES, and AmazonRedShift, that are covered by their respective RIs and/or SPs. Non-usage items such as discounts, refunds, fees, etc. are also not covered. Only available in Ripple. |
| DeleteCalculatorCostModifier | [DeleteCalculatorCostModifierRequest](#blueapi.cost.v1.DeleteCalculatorCostModifierRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes a cost modifier. At the moment, the supported {vendor} is &#39;aws&#39;. Only available in Ripple. |
| ImportCurFiles | [ImportCurFilesRequest](#blueapi.cost.v1.ImportCurFilesRequest) | [.blueapi.api.Operation](#blueapi.api.Operation) | Initiates an ondemand import of all registered CUR files. See [https://help.alphaus.cloud/en/articles/3612555-ripple-aws-things-you-need-to-prepare-before-starting] for more information. |
| CalculateCosts | [CalculateCostsRequest](#blueapi.cost.v1.CalculateCostsRequest) | [.blueapi.api.Operation](#blueapi.api.Operation) | Triggers monthly calculations for costs and invoices at either organization or billing group level. For the AWS calculator, aggregation is done at daily and monthly level. Also, all occurrences of the character `|` (pipe) in the CUR descriptions and tag key/values are replaced with the `/` (forward-slash) character. This is due to the `|` character having a special designation in the data processing workflows. |
| ListCalculationsHistory | [ListCalculationsHistoryRequest](#blueapi.cost.v1.ListCalculationsHistoryRequest) | [ListCalculationsHistoryResponse](#blueapi.cost.v1.ListCalculationsHistoryResponse) | Lists vendor costs calculations history and statuses. |
| ListCalculationsSchedules | [ListCalculationsSchedulesRequest](#blueapi.cost.v1.ListCalculationsSchedulesRequest) | [ListCalculationsSchedulesResponse](#blueapi.cost.v1.ListCalculationsSchedulesResponse) | Lists the schedules of your monthly calculations. Only available in Ripple. |
| CreateCalculationsSchedule | [CreateCalculationsScheduleRequest](#blueapi.cost.v1.CreateCalculationsScheduleRequest) | [CalculationsSchedule](#blueapi.cost.v1.CalculationsSchedule) | Creates a schedule to trigger your monthly calculations. At the moment, only one schedule is allowed per account. Only available in Ripple. |
| DeleteCalculationsSchedule | [DeleteCalculationsScheduleRequest](#blueapi.cost.v1.DeleteCalculationsScheduleRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes the schedule of your monthly calculations. Only available in Ripple. |
| ListCostFilters | [ListCostFiltersRequest](#blueapi.cost.v1.ListCostFiltersRequest) | [ListCostFiltersResponse](#blueapi.cost.v1.ListCostFiltersResponse) | Lists the usage-based cost filter condition. Only available in Wave(Pro). |
| CreateCostFilters | [CreateCostFiltersRequest](#blueapi.cost.v1.CreateCostFiltersRequest) | [CreateCostFiltersResponse](#blueapi.cost.v1.CreateCostFiltersResponse) | Creates the usage-based cost filter condition. You can consider cost filters as predefined/prefiltered queries using the &#39;v1/{vendor}/costs:read&#39; or &#39;ReadCosts&#39; API. Only available in Wave(Pro). |
| UpdateCostFilters | [UpdateCostFiltersRequest](#blueapi.cost.v1.UpdateCostFiltersRequest) | [UpdateCostFiltersResponse](#blueapi.cost.v1.UpdateCostFiltersResponse) | Updates the usage-based cost filter condition. Only available in Wave(Pro). |
| DeleteCostFilters | [DeleteCostFiltersRequest](#blueapi.cost.v1.DeleteCostFiltersRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes the usage-based cost filter condition. Only available in Wave(Pro). |
| ExportCostFiltersFile | [ExportCostFiltersFileRequest](#blueapi.cost.v1.ExportCostFiltersFileRequest) | [ExportCostFiltersFileResponse](#blueapi.cost.v1.ExportCostFiltersFileResponse) | Exports the usage-based cost filter condition. Only available in Wave(Pro). |
| ReadCostAttributes | [ReadCostAttributesRequest](#blueapi.cost.v1.ReadCostAttributesRequest) | [CostAttributeItem](#blueapi.cost.v1.CostAttributeItem) stream | Reads the available cost attributes of an organization (Ripple) or billing group (Wave). Similar to the &#39;ReadCosts&#39; API but without the aggregated usages and costs. At the moment, the supported {vendor} is &#39;aws&#39;. If datetime range parameters are not set, month-to-date (current month) will be returned. |
| GetCostAttributes | [GetCostAttributesRequest](#blueapi.cost.v1.GetCostAttributesRequest) | [GetCostAttributesResponse](#blueapi.cost.v1.GetCostAttributesResponse) | WORK-IN-PROGRESS: Reads the available cost attributes of an organization (Ripple) or billing group (Wave). |
| ReadCosts | [ReadCostsRequest](#blueapi.cost.v1.ReadCostsRequest) | [CostItem](#blueapi.cost.v1.CostItem) stream | Reads the usage-based cost details of an organization (Ripple) or billing group (Wave). At the moment, the supported {vendor} are &#39;aws&#39; and &#39;gcp&#39;. If datetime range parameters are not set, month-to-date (current month) will be returned. |
| ReadAdjustments | [ReadAdjustmentsRequest](#blueapi.cost.v1.ReadAdjustmentsRequest) | [CostItem](#blueapi.cost.v1.CostItem) stream | Reads the non-usage-based details of an organization (Ripple) or billing group (Wave). This API covers non-usage-based adjustments, such as Fees, Credits, Discounts, Tax, Upfront Fees, etc. At the moment, the supported {vendor} is &#39;aws&#39; or &#39;azure&#39;. If datetime range parameters are not set, month-to-date (current month) will be returned. |
| ReadTagCosts | [ReadTagCostsRequest](#blueapi.cost.v1.ReadTagCostsRequest) | [CostItem](#blueapi.cost.v1.CostItem) stream | Reads the usage-based tag costs of a billing group. At the moment, the supported {vendor} is &#39;aws&#39;. If datetime range parameters are not set, month-to-date (current month) will be returned. |
| ReadNonTagCosts | [ReadNonTagCostsRequest](#blueapi.cost.v1.ReadNonTagCostsRequest) | [CostItem](#blueapi.cost.v1.CostItem) stream | Reads the usage-based non tag costs of a billing group. At the moment, the supported {vendor} is &#39;aws&#39;. If datetime range parameters are not set, month-to-date (current month) will be returned. |
| GetForecasts | [GetForecastsRequest](#blueapi.cost.v1.GetForecastsRequest) | [GetForecastsResponse](#blueapi.cost.v1.GetForecastsResponse) | Fetches cost forecasts for the specified billing group. Includes historical cost (up to previous month) and forecasted cost (up to three months for now). |
| GetMonthlyCostForecast | [GetMonthlyCostForecastRequest](#blueapi.cost.v1.GetMonthlyCostForecastRequest) | [GetMonthlyCostForecastResponse](#blueapi.cost.v1.GetMonthlyCostForecastResponse) | Fetches monthly accumulated costs vs forecasted cost vs budget for the id. |
| GetMonthOnMonthCostForecast | [GetMonthOnMonthCostForecastRequest](#blueapi.cost.v1.GetMonthOnMonthCostForecastRequest) | [GetMonthOnMonthCostForecastResponse](#blueapi.cost.v1.GetMonthOnMonthCostForecastResponse) | Fetches previous month cost vs current month forecast vs current accumulated cost per category for id. |
| GetMonthToDateCostForecast | [GetMonthToDateCostForecastRequest](#blueapi.cost.v1.GetMonthToDateCostForecastRequest) | [GetMonthToDateCostForecastResponse](#blueapi.cost.v1.GetMonthToDateCostForecastResponse) | Fetches current month daily forecast vs current accumulated daily cost for id. |
| GetAccountBudget | [GetAccountBudgetRequest](#blueapi.cost.v1.GetAccountBudgetRequest) | [GetAccountBudgetResponse](#blueapi.cost.v1.GetAccountBudgetResponse) | Fetches monthly budget for the account/acctgroup id. |
| CreateAccountBudget | [CreateAccountBudgetRequest](#blueapi.cost.v1.CreateAccountBudgetRequest) | [CreateAccountBudgetResponse](#blueapi.cost.v1.CreateAccountBudgetResponse) | Creates monthly budget for the account/acctgroup id. |
| UpdateAccountBudget | [UpdateAccountBudgetRequest](#blueapi.cost.v1.UpdateAccountBudgetRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Updates monthly budget for the account/acctgroup id. |
| DeleteAccountBudget | [DeleteAccountBudgetRequest](#blueapi.cost.v1.DeleteAccountBudgetRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Removes monthly budget for the account/acctgroup id from database. |
| GetAccountBudgetAlerts | [GetAccountBudgetAlertsRequest](#blueapi.cost.v1.GetAccountBudgetAlertsRequest) | [.blueapi.api.wave.BudgetAlert](#blueapi.api.wave.BudgetAlert) | WORK-IN-PROGRESS: Get the budget alerts for the account id. Only available in Wave(Pro). |
| CreateAccountBudgetAlerts | [CreateAccountBudgetAlertsRequest](#blueapi.cost.v1.CreateAccountBudgetAlertsRequest) | [.blueapi.api.wave.BudgetAlert](#blueapi.api.wave.BudgetAlert) | WORK-IN-PROGRESS: Create the budget alerts for the account id. Only available in Wave(Pro). |
| UpdateAccountBudgetAlerts | [UpdateAccountBudgetAlertsRequest](#blueapi.cost.v1.UpdateAccountBudgetAlertsRequest) | [.blueapi.api.wave.BudgetAlert](#blueapi.api.wave.BudgetAlert) | WORK-IN-PROGRESS: Update the budget alerts for the account id. Only available in Wave(Pro). |
| DeleteAccountBudgetAlerts | [DeleteAccountBudgetAlertsRequest](#blueapi.cost.v1.DeleteAccountBudgetAlertsRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | WORK-IN-PROGRESS: Delete the budget alerts for the account id. Only available in Wave(Pro). |
| GetRecommendations | [GetRecommendationsRequest](#blueapi.cost.v1.GetRecommendationsRequest) | [GetRecommendationsResponse](#blueapi.cost.v1.GetRecommendationsResponse) | WORK-IN-PROGRESS: Get cost opmtimization recommendations for an organization (or MSP). |
| GetCostReduction | [GetCostReductionRequest](#blueapi.cost.v1.GetCostReductionRequest) | [GetCostReductionResponse](#blueapi.cost.v1.GetCostReductionResponse) | Get cost reduction details for an organization (or MSP). |
| GetUtilization | [GetUtilizationRequest](#blueapi.cost.v1.GetUtilizationRequest) | [GetUtilizationResponse](#blueapi.cost.v1.GetUtilizationResponse) | WORK-IN-PROGRESS: Get the utilization details for an organization (or MSP). |
| GetCoverageOptions | [GetCoverageOptionsRequest](#blueapi.cost.v1.GetCoverageOptionsRequest) | [GetCoverageOptionsResponse](#blueapi.cost.v1.GetCoverageOptionsResponse) | WORK-IN-PROGRESS: Get coverage options details for an organization (or MSP). |
| GetCoverageOndemand | [GetCoverageOndemandRequest](#blueapi.cost.v1.GetCoverageOndemandRequest) | [GetCoverageOndemandResponse](#blueapi.cost.v1.GetCoverageOndemandResponse) | WORK-IN-PROGRESS: Get ondemand cost details for an organization (or MSP). |
| GetBreakevenPoint | [GetBreakevenPointRequest](#blueapi.cost.v1.GetBreakevenPointRequest) | [GetBreakevenPointResponse](#blueapi.cost.v1.GetBreakevenPointResponse) | WORK-IN-PROGRESS: Get the breakeven point details for the RI or SP. |

 



<a name="iam/v1/iam.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## iam/v1/iam.proto



<a name="blueapi.iam.v1.CreateApiClientRequest"></a>

### CreateApiClientRequest
Request message for the Iam.CreateApiClient rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The descriptive name of the API client to create. |






<a name="blueapi.iam.v1.CreateGroupRootUserRequest"></a>

### CreateGroupRootUserRequest
Request message for the Iam.CreateGroupRootUser rpc


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | The email address of the user being created. |
| password | [string](#string) |  | The password of the user being created. A value will be generated if not is provided for this field |
| groupId | [string](#string) |  | The ID of the group to which the user will be added. This must either be a billing group ID or an access group ID. |
| groupType | [string](#string) |  | The type of group which is represented by the group ID. Valid values include &#34;billing_group&#34; or &#34;access_group&#34;. |
| inputType | [string](#string) |  | This value determines whether the password should be auto-generated or if the plaintext value received with the request should be used. A value of &#34;Auto&#34; will result in an auto-generated password whereas a value of &#34;Custom&#34; will result in the password included with the request being used. |
| plan | [string](#string) |  | The plan associated with the root-user account. Valid values include &#34;trial&#34;, &#34;limited3&#34; and &#34;limited4&#34;. |
| emailNotification | [bool](#bool) |  | Whether or not a notification should be sent to the provided email after the user has been created. |
| meta | [blueapi.api.FeatureFlags](#blueapi.api.FeatureFlags) |  | A collection of feature flags and whether or not they should be enabled. For a full list of such flags, see https://alphauslabs.github.io/blueapi/apis/iam.html. |






<a name="blueapi.iam.v1.CreateIdentityProviderRequest"></a>

### CreateIdentityProviderRequest
Request message for the Iam.CreateIdentityProvider rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The IdP name. |
| type | [string](#string) |  | Required. Value is `saml`. |
| metadata | [string](#string) |  | Required. The contents of the metadata file from your IdP. |






<a name="blueapi.iam.v1.CreateIpFilterRequest"></a>

### CreateIpFilterRequest
Request message for the Iam.CreateIpFilter rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| value | [string](#string) |  | Required. The IP input to filter, either blacklist or whitelist. Should be in CIDR format (i.e. `1.2.3.4/32`). |
| type | [string](#string) |  | Optional. Can be `whitelist` or `blacklist`. Defaults to `blacklist` if empty. |
| rootUser | [string](#string) |  | Optional. If `rootUser` is valid and `subUser` is empty, filter is for this rootuser. If both `rootUser` and `subUser` inputs are empty, filter is at global scope. |
| subUser | [string](#string) |  | Optional. If `subuser` is valid, filter is for this subuser; `rootUser` value is discarded. If both `rootUser` and `subUser` inputs are empty, filter is at global scope. |






<a name="blueapi.iam.v1.CreatePartnerTokenRequest"></a>

### CreatePartnerTokenRequest
Request message for the Iam.CreatePartnerToken rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Required. Partner id or audience for the token. |






<a name="blueapi.iam.v1.CreateRoleRequest"></a>

### CreateRoleRequest
Request message for the Iam.CreateRole rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. The name of the role to create. Role names should have at least 6 characters in length and 32 characters maximum. It should also be alphanumeric. Hyphens and underscores are allowed in between. The regular expression used for validation is `^[A-Za-z0-9][A-Za-z0-9_-]*[A-Za-z0-9]$`. |
| namespace | [string](#string) |  | Required. The namespace where this role will belong. |
| permissions | [string](#string) | repeated | Required. The list of permissions to attach to this role. |






<a name="blueapi.iam.v1.CreateUserRequest"></a>

### CreateUserRequest
Request message for the Iam.CreateUser rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Required. Min: 4, max: 18, allowed characters: letters, numbers, `_` (underscore), `.` (period) and `-` (hyphen) characters. |
| password | [string](#string) |  | Required. Minimum of 8 characters. |
| email | [string](#string) |  | Optional. Email address of the subuser. |
| nickName | [string](#string) |  | Optional. Nickname or description. It is set to &#39;name&#39; if empty. |






<a name="blueapi.iam.v1.CreateUserRoleMappingRequest"></a>

### CreateUserRoleMappingRequest
Request message for the Iam.CreateUserRoleMapping rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subUser | [string](#string) |  | Optional. The subuser to map the roles. Defaults to caller if not set. |
| roles | [MapRole](#blueapi.iam.v1.MapRole) | repeated | Required. The roles to map to the user. Limited to 5 items. |






<a name="blueapi.iam.v1.CreateUserRoleMappingResponse"></a>

### CreateUserRoleMappingResponse
Response message for the Iam.CreateUserRoleMapping rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [string](#string) | repeated |  |
| failed | [string](#string) | repeated |  |
| filters | [string](#string) | repeated |  |






<a name="blueapi.iam.v1.DeleteApiClientRequest"></a>

### DeleteApiClientRequest
Request message for the Iam.DeleteApiClient rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Required. The client id to delete. |






<a name="blueapi.iam.v1.DeleteGroupRootUserRequest"></a>

### DeleteGroupRootUserRequest
Request message for the Iam.DeleteGroupRootUser rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="blueapi.iam.v1.DeleteIdentityProviderRequest"></a>

### DeleteIdentityProviderRequest
Request message for the Iam.DeleteIdentityProvider rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Required. The IdP id to delete. |






<a name="blueapi.iam.v1.DeleteIpFilterRequest"></a>

### DeleteIpFilterRequest
Request message for the Iam.DeleteIpFilter rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The IP filter id to delete. |






<a name="blueapi.iam.v1.DeleteRoleRequest"></a>

### DeleteRoleRequest
Request message for the Iam.DeleteRole rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| namespace | [string](#string) |  | Required. The parent namespace. |
| name | [string](#string) |  | Required. The role name to delete. |






<a name="blueapi.iam.v1.DeleteUserRequest"></a>

### DeleteUserRequest
Request message for the Iam.DeleteUser rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Required. The subuser name to delete. |






<a name="blueapi.iam.v1.GetFeatureFlagsRequest"></a>

### GetFeatureFlagsRequest
Request message for the Iam.GetUpdateFeatureFlags rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="blueapi.iam.v1.GetGroupRootRequest"></a>

### GetGroupRootRequest
Request message for the Iam.GetGroupRootUser rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="blueapi.iam.v1.GetUserRequest"></a>

### GetUserRequest
Request message for the Iam.GetUser rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="blueapi.iam.v1.IpFilter"></a>

### IpFilter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | IP filter item id. Note that this name is transcient and is not fixed. However, you can use any of its permutations to endpoints that accept it, such as the `DELETE:/iam/v?/ipfilters/{id}` endpoint, without issues. |
| scope | [string](#string) |  | Can be `global`, `rootuser`, or `subuser`. |
| target | [string](#string) |  | The target of the filter. If global scope, this is usually empty. Rootuser name for rootuser scope, and subuser name for subuser scope. For subuser targets, format is `rootuser/subuser`. |
| type | [string](#string) |  | The type of IP filter. It could be `whitelist` or `blacklist`. |
| value | [string](#string) |  | The IP filter value. Should be in CIDR format. |






<a name="blueapi.iam.v1.ListApiClientsRequest"></a>

### ListApiClientsRequest
Request message for the Iam.ListApiClients rpc.






<a name="blueapi.iam.v1.ListGroupRootUsersRequest"></a>

### ListGroupRootUsersRequest
Request message for the Iam.ListGroupRootUsers rpc.






<a name="blueapi.iam.v1.ListIdentityProvidersRequest"></a>

### ListIdentityProvidersRequest
Request message for the Iam.ListIdentityProviders rpc.






<a name="blueapi.iam.v1.ListIdentityProvidersResponse"></a>

### ListIdentityProvidersResponse
Response message for the Iam.ListIdentityProviders rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [ListIdentityProvidersResponse.IdentityProvider](#blueapi.iam.v1.ListIdentityProvidersResponse.IdentityProvider) | repeated |  |






<a name="blueapi.iam.v1.ListIdentityProvidersResponse.IdentityProvider"></a>

### ListIdentityProvidersResponse.IdentityProvider



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |
| type | [string](#string) |  |  |
| saml | [ListIdentityProvidersResponse.IdentityProvider.samlInfo](#blueapi.iam.v1.ListIdentityProvidersResponse.IdentityProvider.samlInfo) |  |  |






<a name="blueapi.iam.v1.ListIdentityProvidersResponse.IdentityProvider.samlInfo"></a>

### ListIdentityProvidersResponse.IdentityProvider.samlInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [string](#string) |  |  |






<a name="blueapi.iam.v1.ListIpFiltersRequest"></a>

### ListIpFiltersRequest
Request message for the Iam.ListIpFilters rpc.






<a name="blueapi.iam.v1.ListPermissionsRequest"></a>

### ListPermissionsRequest
Request message for the Iam.ListPermissions rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subUser | [string](#string) |  | Optional. The subuser to query. If empty (default), query all available permissions. If set to a valid subuser, query that subuser&#39;s permissions, if allowed. You can also set this field to `me` to query your own permissions. |






<a name="blueapi.iam.v1.ListPermissionsResponse"></a>

### ListPermissionsResponse
Response message for the Iam.ListPermissions rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| permissions | [blueapi.api.Permission](#blueapi.api.Permission) | repeated |  |






<a name="blueapi.iam.v1.ListRolesRequest"></a>

### ListRolesRequest
Request message for the Iam.ListRoles rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| namespace | [string](#string) |  | Optional. If not set, all roles will be returned. |






<a name="blueapi.iam.v1.ListRolesResponse"></a>

### ListRolesResponse
Response message for the Iam.ListRoles rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| roles | [blueapi.api.Role](#blueapi.api.Role) | repeated |  |






<a name="blueapi.iam.v1.ListUserRoleMappingsRequest"></a>

### ListUserRoleMappingsRequest
Request message for the Iam.ListUserRoleMappings rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subUser | [string](#string) |  | Optional. The subuser to query. Defaults to caller if not set. |






<a name="blueapi.iam.v1.ListUserRoleMappingsResponse"></a>

### ListUserRoleMappingsResponse
Response message for the Iam.ListUserRoleMappings rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| userRoleMappings | [blueapi.api.UserRoleMapping](#blueapi.api.UserRoleMapping) | repeated |  |






<a name="blueapi.iam.v1.ListUsersRequest"></a>

### ListUsersRequest
Request message for the Iam.ListUsers rpc.






<a name="blueapi.iam.v1.MapRole"></a>

### MapRole



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| namespace | [string](#string) |  |  |
| role | [string](#string) |  |  |






<a name="blueapi.iam.v1.PartnerToken"></a>

### PartnerToken



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [string](#string) |  |  |






<a name="blueapi.iam.v1.RefreshPartnerTokenRequest"></a>

### RefreshPartnerTokenRequest
Request message for the Iam.RefreshPartnerToken rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Required. Partner id or audience for the token. |
| token | [string](#string) |  | Required. The previous (old) token to be refreshed. |






<a name="blueapi.iam.v1.UpdateFeatureFlagsRequest"></a>

### UpdateFeatureFlagsRequest
Request message for the Iam.UpdateFeatureFlags rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| featureFlags | [blueapi.api.FeatureFlags](#blueapi.api.FeatureFlags) |  |  |






<a name="blueapi.iam.v1.UpdateRoleRequest"></a>

### UpdateRoleRequest
Request message for the Iam.UpdateRole rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| namespace | [string](#string) |  | Required. The new namespace. |
| name | [string](#string) |  | Required. The role name to update. |
| newName | [string](#string) |  | Optional. If set, update the current name to this. |
| permissions | [string](#string) | repeated | Required. The list of permissions to attach to this role. |






<a name="blueapi.iam.v1.UpdateUserRoleMappingRequest"></a>

### UpdateUserRoleMappingRequest
Request message for the Iam.UpdateUserRoleMapping rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subUser | [string](#string) |  | Optional. The subuser to map the roles. Defaults to caller if not set. |
| roles | [MapRole](#blueapi.iam.v1.MapRole) | repeated | Required. The roles to map to the user. Limited to 5 items. Setting `role` to empty will remove the mapping. |






<a name="blueapi.iam.v1.UpdateUserRoleMappingResponse"></a>

### UpdateUserRoleMappingResponse
Response message for the Iam.UpdateUserRoleMapping rpc.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [string](#string) | repeated |  |
| failed | [string](#string) | repeated |  |
| filters | [string](#string) | repeated |  |






<a name="blueapi.iam.v1.WhoAmIRequest"></a>

### WhoAmIRequest
Request message for the Iam.WhoAmI rpc.





 

 

 


<a name="blueapi.iam.v1.Iam"></a>

### Iam
IAM service definition.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| WhoAmI | [WhoAmIRequest](#blueapi.iam.v1.WhoAmIRequest) | [.blueapi.api.User](#blueapi.api.User) | Gets user information about the caller. This call includes all of the user metadata. See [https://alphauslabs.github.io/blueapi/] for the list of supported attributes. |
| ListUsers | [ListUsersRequest](#blueapi.iam.v1.ListUsersRequest) | [.blueapi.api.User](#blueapi.api.User) stream | Lists all subusers. |
| GetUser | [GetUserRequest](#blueapi.iam.v1.GetUserRequest) | [.blueapi.api.User](#blueapi.api.User) | Gets subuser information. This call includes all of the subuser metadata. See [https://alphauslabs.github.io/blueapi/] for the list of supported attributes. If the `{name}` parameter is `me` or `-`, returns the caller information, which is equivalent to `WhoAmI()` or `GET:/iam/v*/whoami`. |
| CreateUser | [CreateUserRequest](#blueapi.iam.v1.CreateUserRequest) | [.blueapi.api.User](#blueapi.api.User) | Creates a subuser. |
| DeleteUser | [DeleteUserRequest](#blueapi.iam.v1.DeleteUserRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes a subuser. |
| CreateGroupRootUser | [CreateGroupRootUserRequest](#blueapi.iam.v1.CreateGroupRootUserRequest) | [.blueapi.api.GroupRootUser](#blueapi.api.GroupRootUser) | WORK-IN-PROGRESS: Creates a new root user for a billing group or access group. |
| ListGroupRootUsers | [ListGroupRootUsersRequest](#blueapi.iam.v1.ListGroupRootUsersRequest) | [.blueapi.api.GroupRootUser](#blueapi.api.GroupRootUser) stream | WORK-IN-PROGRESS: Retrieves all the existing group root users asscoiated with the organization. |
| GetGroupRootUser | [GetGroupRootRequest](#blueapi.iam.v1.GetGroupRootRequest) | [.blueapi.api.GroupRootUser](#blueapi.api.GroupRootUser) | WORK-IN-PROGRESS: Retrieves a group root user. |
| DeleteGroupRootUser | [DeleteGroupRootUserRequest](#blueapi.iam.v1.DeleteGroupRootUserRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | WORK-IN-PROGRESS: Deletes an existing group root user. |
| GetFeatureFlags | [GetFeatureFlagsRequest](#blueapi.iam.v1.GetFeatureFlagsRequest) | [.blueapi.api.FeatureFlags](#blueapi.api.FeatureFlags) | WORK-IN-PROGRESS: Retrieves the features available to a user on an Alphaus product. For a list of valid feature flags, see our documentation at https://alphauslabs.github.io/blueapi/apis/iam.html. |
| UpdateFeatureFlags | [UpdateFeatureFlagsRequest](#blueapi.iam.v1.UpdateFeatureFlagsRequest) | [.blueapi.api.FeatureFlags](#blueapi.api.FeatureFlags) | WORK-IN-PROGRESS: Updates the features available to a user on an Alphaus product. For a list of valid feature flags, see our documentation at https://alphauslabs.github.io/blueapi/apis/iam.html. |
| ListApiClients | [ListApiClientsRequest](#blueapi.iam.v1.ListApiClientsRequest) | [.blueapi.api.ApiClient](#blueapi.api.ApiClient) stream | Lists all API clients belonging to the caller. |
| CreateApiClient | [CreateApiClientRequest](#blueapi.iam.v1.CreateApiClientRequest) | [.blueapi.api.ApiClient](#blueapi.api.ApiClient) | Creates an API client for the caller. |
| DeleteApiClient | [DeleteApiClientRequest](#blueapi.iam.v1.DeleteApiClientRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes an API client belonging to the caller. |
| ListPermissions | [ListPermissionsRequest](#blueapi.iam.v1.ListPermissionsRequest) | [ListPermissionsResponse](#blueapi.iam.v1.ListPermissionsResponse) | WORK-IN-PROGRESS: Lists all permissions based on the input&#39;s scope. For reference, supported permissions can be found on [https://github.com/mobingi/rbac-permissions]. |
| ListRoles | [ListRolesRequest](#blueapi.iam.v1.ListRolesRequest) | [ListRolesResponse](#blueapi.iam.v1.ListRolesResponse) | WORK-IN-PROGRESS: Lists all available roles. |
| CreateRole | [CreateRoleRequest](#blueapi.iam.v1.CreateRoleRequest) | [.blueapi.api.Role](#blueapi.api.Role) | WORK-IN-PROGRESS: Creates a role. If your `permissions` list contains an `Admin` entry, all other entries will be discarded except `Admin`. Roles are root user-level. That means all roles created by the root user, or any subuser that has permissions to create roles, are available to all subusers. |
| UpdateRole | [UpdateRoleRequest](#blueapi.iam.v1.UpdateRoleRequest) | [.blueapi.api.Role](#blueapi.api.Role) | WORK-IN-PROGRESS: Updates a role. If role name is different, rename mapped role name. |
| DeleteRole | [DeleteRoleRequest](#blueapi.iam.v1.DeleteRoleRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | WORK-IN-PROGRESS: Deletes a role. Deleting a role will also remove all mappings. |
| ListUserRoleMappings | [ListUserRoleMappingsRequest](#blueapi.iam.v1.ListUserRoleMappingsRequest) | [ListUserRoleMappingsResponse](#blueapi.iam.v1.ListUserRoleMappingsResponse) | WORK-IN-PROGRESS: Lists roles attached to the caller or the input. |
| CreateUserRoleMapping | [CreateUserRoleMappingRequest](#blueapi.iam.v1.CreateUserRoleMappingRequest) | [CreateUserRoleMappingResponse](#blueapi.iam.v1.CreateUserRoleMappingResponse) | WORK-IN-PROGRESS: Maps roles to a subuser. You can only map (or attach) up to 5 roles to a user per namespace. There is no limit for filtering rules per user. |
| UpdateUserRoleMapping | [UpdateUserRoleMappingRequest](#blueapi.iam.v1.UpdateUserRoleMappingRequest) | [UpdateUserRoleMappingResponse](#blueapi.iam.v1.UpdateUserRoleMappingResponse) | WORK-IN-PROGRESS: Updates user-to-role mappings. You can only map (or attach) up to 5 roles to a user per namespace. There is no limit for filtering rules per user. |
| ListIdentityProviders | [ListIdentityProvidersRequest](#blueapi.iam.v1.ListIdentityProvidersRequest) | [ListIdentityProvidersResponse](#blueapi.iam.v1.ListIdentityProvidersResponse) | Lists all SSO Identity Providers (IdP). |
| CreateIdentityProvider | [CreateIdentityProviderRequest](#blueapi.iam.v1.CreateIdentityProviderRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Registers an SSO Identity Provider (IdP). |
| DeleteIdentityProvider | [DeleteIdentityProviderRequest](#blueapi.iam.v1.DeleteIdentityProviderRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes an SSO Identity Provider (IdP). |
| ListIpFilters | [ListIpFiltersRequest](#blueapi.iam.v1.ListIpFiltersRequest) | [IpFilter](#blueapi.iam.v1.IpFilter) stream | Lists all IP filters. At the moment, this API is only available to root users. |
| CreateIpFilter | [CreateIpFilterRequest](#blueapi.iam.v1.CreateIpFilterRequest) | [IpFilter](#blueapi.iam.v1.IpFilter) | Creates an IP filter item for IP blacklisting or whitelisting. At the moment, this API is only available to root users. |
| DeleteIpFilter | [DeleteIpFilterRequest](#blueapi.iam.v1.DeleteIpFilterRequest) | [.google.protobuf.Empty](#google.protobuf.Empty) | Deletes an IP filter item. At the moment, this API is only available to root users. |
| CreatePartnerToken | [CreatePartnerTokenRequest](#blueapi.iam.v1.CreatePartnerTokenRequest) | [PartnerToken](#blueapi.iam.v1.PartnerToken) | BETA: Creates a partner token for custom integrations. Available only to Ripple and Cover users. |
| RefreshPartnerToken | [RefreshPartnerTokenRequest](#blueapi.iam.v1.RefreshPartnerTokenRequest) | [PartnerToken](#blueapi.iam.v1.PartnerToken) | WORK-IN-PROGRESS: Refreshes an expired partner token. Only partners are expected to call this API. |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

