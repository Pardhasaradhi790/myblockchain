I understand that RG-level/Resources level Contributor access couldn’t be approved for the project resources. I need contributor-level permissions (deploy, configure, manage, trigger) across all the components below, but I’m not fully aware of which specific least-privilege role maps to each one. Could you please review and confirm/approve the correct role for each?
	1.	Data Factory – deploy, trigger, monitor pipelines
	2.	Function App – deploy, configure, manage
	3.	Data Storage (ADLS Gen2) – read/write data
	4.	Key Vault – retrieve secrets and connection strings
	5.	Azure OpenAI Service – invoke models
	6.	Blob Storage – read/write blob data
	7.	Text-Embedding-3-Large Model – invoke model for embeddings
All scoped to rg-hcb-merk-nonprod-use2-app (Key Vault under rg-hcb-merk-nonprod-use2-secr), under SUB-HCB-COMMON-NONPROD, tied to the MBUAIDEV AD group.
Could you advise or approve the correct role for each of the above resources so I can proceed with my required actions?

Thanks,
