Cloud Security Services
Engagement Request
SUB-HCB-COMMON-NONPROD  |  Development / Non-Production (dev-use2)

1. Request Overview

Field	Details
Request Type	Cloud Access (IAM) & Architecture Security Review
Target Subscription	SUB-HCB-COMMON-NONPROD
Environment	Development / Non-Production (dev-use2)

2. Access & Role Assignments (IAM Requirements)

The following Managed Identity requires specific RBAC role assignments at the Resource Group scope to ensure proper functionality of the deployed application components.
IAM Field	Value
Azure AD Identity / MI	mi-corp-mwdip-dev-use2-app (Managed Identity)
Required Role	Storage Blob Data Contributor
Target Subscription	SUB-CORP-COMMON-NONPROD
Target Resource Group	rg-corp-mwdip-dev-use2-app
Scope Level	Resource Group
Business Justification	The function app instance requires Storage Blob Data Contributor access on this resource group in order to function properly and access necessary storage workloads.

3. Completed Infrastructure & Resource Details

3.1  Network Architecture (Landing Zone)
Host VNet: vnet-sub-hcb-common-nonprod-use2-host1
Subnets Deployed:

Subnet Name	CIDR	Purpose
snet-hcb-qnxtcap-dev-use2-adf	10.152.109.96/28	Azure Data Factory
snet-hcb-qnxtcap-dev-use2-ai	10.152.109.64/28	Azure OpenAI / AI Services
snet-hcb-qnxtcap-dev-use2-app	10.152.109.80/28	Core Applications
snet-hcb-qnxtcap-dev-use2-pe	10.152.109.128/27	Private Endpoints

3.2  Azure Data Factory (ADF)
Resource Group: rg-hcb-qnxtcap-dev-use2-data
ADF Name: hcb-qnxtcap-dev-use2-adf
Storage Account: sthcbqnxtcapdevuse2adf

3.3  Function App Components
Component	Value
Function App Name	func-hcb-qnxtcap-dev-use2-main
App Service Plan	asp-hcb-qnxtcap-dev-use2-funclnx
ASP Resource Group	rg-hcb-qnxtcap-dev-use2-aas
Storage Account	sthcbqnxtcap0101func
Resource Group	rg-hcb-qnxtcap-dev-use2-app

3.4  Data Storage (ADLS Gen2)
Storage Account Name: sthcbqnxtcap0101adls
Resource Group: rg-hcb-qnxtcap-dev-use2-app

3.5  Key Vault
Resource Group: rg-hcb-qnxtcap-dev-use2-secr
Key Vault Name: kv-qnxtcapapplnx2r2

3.6  Azure OpenAI Service
Field	Value
Resource Name	cog-hcb-qnxtcap-dev-use2-oai
Resource Group	rg-hcb-qnxtcap-dev-use2-ai
Models Deployed	gpt-4.1, gpt-5.2

4. Pending Items & Security Exceptions

The following items are currently blocked or pending capacity/regional availability from Microsoft. Security visibility is provided here for tracking and potential exception handling.
Azure AI Search Service
Field	Details
Current Status	No ETA from Microsoft for East US 2 regional availability.
Contingency Plan	If an update is not received by end of week, the team will provision this service in an alternate region (East US instead of East US 2).
Security Action	This document serves as notice that the Security team will be engaged for a regional variance exception if required.

Text-Embedding-3-Large Model
Field	Details
Current Status	Model quota request is actively in progress with Microsoft.
Expected ETA	Early next week.
Security Blocker	No security blocker identified; awaiting capacity allocation from Microsoft.

