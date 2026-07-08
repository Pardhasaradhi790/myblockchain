Infrastructure Access Request — RBAC Role Assignment Details
Note: The exact Managed Identity name was not specified in the original request document. "mi-hcb-merk-nonprod-use2-app" is used below as a placeholder based on the resource group naming convention (rg-hcb-merk-nonprod-use2-db) — please confirm/replace with the exact Managed Identity name before submitting.
1. Azure Data Factory (ADF)
Azure AD group/MI/SP (No direct Human ID): mi-hcb-merk-nonprod-use2-app (Managed Identity)
Role (least privilege — minimum privileges required to do the task): Data Factory Contributor — mi-hcb-merk-nonprod-use2-app
Subscription name: SUB-HCB-COMMON-NONPROD
Resource group name: rg-hcb-merk-nonprod-use2-db
Scope (At what level — Management group, subscription, RG, or resource): Resource Group — rg-hcb-merk-nonprod-use2-db
Reason (Why this permission is required): The application's Managed Identity requires this role to create, trigger, and monitor Azure Data Factory pipelines used for data ingestion.

2. Function App Components
Azure AD group/MI/SP (No direct Human ID): mi-hcb-merk-nonprod-use2-app (Managed Identity)
Role (least privilege — minimum privileges required to do the task): Contributor — mi-hcb-merk-nonprod-use2-app
Subscription name: SUB-HCB-COMMON-NONPROD
Resource group name: rg-hcb-merk-nonprod-use2-db
Scope (At what level — Management group, subscription, RG, or resource): Resource Group — rg-hcb-merk-nonprod-use2-db
Reason (Why this permission is required): The Managed Identity requires this role to deploy, configure, and manage the Function App components that host the application's processing logic.

3. Data Storage (ADLS Gen2)
Azure AD group/MI/SP (No direct Human ID): mi-hcb-merk-nonprod-use2-app (Managed Identity)
Role (least privilege — minimum privileges required to do the task): Storage Blob Data Contributor — mi-hcb-merk-nonprod-use2-app
Subscription name: SUB-HCB-COMMON-NONPROD
Resource group name: rg-hcb-merk-nonprod-use2-db
Scope (At what level — Management group, subscription, RG, or resource): Resource Group — rg-hcb-merk-nonprod-use2-db
Reason (Why this permission is required): The Managed Identity requires this role to read and write data files in ADLS Gen2 as part of the data ingestion and storage workflow.

4. Key Vault
Azure AD group/MI/SP (No direct Human ID): mi-hcb-merk-nonprod-use2-app (Managed Identity)
Role (least privilege — minimum privileges required to do the task): Key Vault Secrets User — mi-hcb-merk-nonprod-use2-app
Subscription name: SUB-HCB-COMMON-NONPROD
Resource group name: rg-hcb-merk-nonprod-use2-db
Scope (At what level — Management group, subscription, RG, or resource): Resource Group — rg-hcb-merk-nonprod-use2-db
Reason (Why this permission is required): The Managed Identity requires this role to retrieve secrets and connection strings needed for application configuration, including CMEK-related key access.

5. Azure OpenAI Service
Azure AD group/MI/SP (No direct Human ID): mi-hcb-merk-nonprod-use2-app (Managed Identity)
Role (least privilege — minimum privileges required to do the task): Cognitive Services OpenAI User — mi-hcb-merk-nonprod-use2-app
Subscription name: SUB-HCB-COMMON-NONPROD
Resource group name: rg-hcb-merk-nonprod-use2-db
Scope (At what level — Management group, subscription, RG, or resource): Resource Group — rg-hcb-merk-nonprod-use2-db
Reason (Why this permission is required): The Managed Identity requires this role to invoke Azure OpenAI models for model/service invocation as part of the application's functionality.

6. Blob Storage
Azure AD group/MI/SP (No direct Human ID): mi-hcb-merk-nonprod-use2-app (Managed Identity)
Role (least privilege — minimum privileges required to do the task): Storage Blob Data Contributor — mi-hcb-merk-nonprod-use2-app
Subscription name: SUB-HCB-COMMON-NONPROD
Resource group name: rg-hcb-merk-nonprod-use2-db
Scope (At what level — Management group, subscription, RG, or resource): Resource Group — rg-hcb-merk-nonprod-use2-db
Reason (Why this permission is required): The Managed Identity requires this role to read and write blob data used by the application.

7. Text-Embedding-3-Large Model
Azure AD group/MI/SP (No direct Human ID): mi-hcb-merk-nonprod-use2-app (Managed Identity)
Role (least privilege — minimum privileges required to do the task): Cognitive Services OpenAI User — mi-hcb-merk-nonprod-use2-app
Subscription name: SUB-HCB-COMMON-NONPROD
Resource group name: rg-hcb-merk-nonprod-use2-db
Scope (At what level — Management group, subscription, RG, or resource): Resource Group — rg-hcb-merk-nonprod-use2-db
Reason (Why this permission is required): The Managed Identity requires this role to invoke the text-embedding-3-large model deployment for generating vector embeddings.

