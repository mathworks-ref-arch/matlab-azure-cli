classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az storage account update : Update the properties of a storage account.
            this.BaseCmd = 'az storage account update ';
        end
        function this = access_tier(this, varargin)
            % The access tier used for billing StandardBlob accounts. Cannot be set for StandardLRS, StandardGRS, StandardRAGRS, or PremiumLRS account types. It is required for StandardBlob accounts during creation. Allowed values: Cool, Hot.
            this.Options = [this.Options, '--access-tier', varargin{:}];
        end

        function this = allow_blob_public_access(this, varargin)
            % Allow or disallow public access to all blobs or containers in the storage account. The default value for this property is null, which is equivalent to true. When true, containers in the account may be configured for public access. Note that setting this property to true does not enable anonymous access to any data in the account. The additional step of configuring the public access setting for a container is required to enable anonymous access.  Allowed values: false, true.
            this.Options = [this.Options, '--allow-blob-public-access', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % Generate and assign a new Storage Account Identity for this storage account for use with key management services like Azure KeyVault.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = custom_domain(this, varargin)
            % User domain assigned to the storage account. Name is the CNAME source. Use "" to clear existing value.
            this.Options = [this.Options, '--custom-domain', varargin{:}];
        end

        function this = enable_files_aadds(this, varargin)
            % Enable Azure Active Directory Domain Services authentication for Azure Files.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-files-aadds', varargin{:}];
        end

        function this = enable_files_adds(this, varargin)
            % Enable Azure Files Active Directory Domain Service Authentication for storage account. When --enable- files-adds is set to true, Azure Active Directory Properties arguments must be provided.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-files-adds', varargin{:}];
        end

        function this = enable_large_file_share(this, varargin)
            % Enable the capability to support large file shares with more than 5 TiB capacity for storage account.Once the property is enabled, the feature cannot be disabled. Currently only supported for LRS and ZRS replication types, hence account conversions to geo- redundant accounts would not be possible. For more information, please refer to https://go.microsoft.com/fwlink/?linkid=2086047.
            this.Options = [this.Options, '--enable-large-file-share', varargin{:}];
        end

        function this = encryption_services(this, varargin)
            % Specifies which service(s) to encrypt.  Allowed values: blob, file, queue, table.
            this.Options = [this.Options, '--encryption-services', varargin{:}];
        end

        function this = https_only(this, varargin)
            % Allows https traffic only to storage service.  Allowed values: false, true.
            this.Options = [this.Options, '--https-only', varargin{:}];
        end

        function this = min_tls_version(this, varargin)
            % The minimum TLS version to be permitted on requests to storage. The default interpretation is TLS 1.0 for this property.  Allowed values: TLS1_0, TLS1_1, TLS1_2.
            this.Options = [this.Options, '--min-tls-version', varargin{:}];
        end

        function this = sku(this, varargin)
            % The storage account SKU.  Allowed values: Premium_LRS, Premium_ZRS, Standard_GRS, Standard_GZRS, Standard_LRS, Standard_RAGRS, Standard_RAGZRS, Standard_ZRS.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = use_subdomain(this, varargin)
            % Specify whether to use indirect CNAME validation. Allowed values: false, true. Azure Active Directory Properties Arguments
            this.Options = [this.Options, '--use-subdomain', varargin{:}];
        end

        function this = azure_storage_sid(this, varargin)
            % Specify the security identifier (SID) for Azure Storage. Required when --enable-files-adds is set to True.
            this.Options = [this.Options, '--azure-storage-sid', varargin{:}];
        end

        function this = domain_guid(this, varargin)
            % Specify the domain GUID. Required when --enable-files- adds is set to True.
            this.Options = [this.Options, '--domain-guid', varargin{:}];
        end

        function this = domain_name(this, varargin)
            % Specify the primary domain that the AD DNS server is authoritative for. Required when --enable-files-adds is set to True.
            this.Options = [this.Options, '--domain-name', varargin{:}];
        end

        function this = domain_sid(this, varargin)
            % Specify the security identifier (SID). Required when --enable-files-adds is set to True.
            this.Options = [this.Options, '--domain-sid', varargin{:}];
        end

        function this = forest_name(this, varargin)
            % Specify the Active Directory forest to get. Required when --enable-files-adds is set to True.
            this.Options = [this.Options, '--forest-name', varargin{:}];
        end

        function this = net_bios_domain_name(this, varargin)
            % Specify the NetBIOS domain name. Required when --enable-files-adds is set to True. Customer managed key Arguments
            this.Options = [this.Options, '--net-bios-domain-name', varargin{:}];
        end

        function this = encryption_key_name(this, varargin)
            % The name of the KeyVault key.
            this.Options = [this.Options, '--encryption-key-name', varargin{:}];
        end

        function this = encryption_key_source(this, varargin)
            % The default encryption key source.  Allowed values: Microsoft.Keyvault, Microsoft.Storage.
            this.Options = [this.Options, '--encryption-key-source', varargin{:}];
        end

        function this = encryption_key_vault(this, varargin)
            % The Uri of the KeyVault.
            this.Options = [this.Options, '--encryption-key-vault', varargin{:}];
        end

        function this = encryption_key_version(this, varargin)
            % The version of the KeyVault key to use, which will opt out of implicit key rotation. Please use "" to opt in key auto-rotation again.
            this.Options = [this.Options, '--encryption-key-version', varargin{:}];
        end

        function this = debug(this, varargin)
            % Increase logging verbosity to show all debug logs.
            this.Options = [this.Options, '--debug', varargin{:}];
        end

        function this = only_show_errors(this, varargin)
            % Only show errors, suppressing warnings.
            this.Options = [this.Options, '--only-show-errors', varargin{:}];
        end

        function this = output(this, varargin)
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.  Default: json.
            this.Options = [this.Options, '--output', varargin{:}];
        end

        function this = query(this, varargin)
            % JMESPath query string. See http://jmespath.org/ for more information and examples.
            this.Options = [this.Options, '--query', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The storage account name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Routing Preference Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = publish_internet_endpoints(this, varargin)
            % A boolean flag which indicates whether internet routing storage endpoints are to be published.  Allowed values: false, true. Argument '--publish-internet-endpoints' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--publish-internet-endpoints', varargin{:}];
        end

        function this = publish_microsoft_endpoints(this, varargin)
            % A boolean flag which indicates whether microsoft routing storage endpoints are to be published.  Allowed values: false, true. Argument '--publish-microsoft-endpoints' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--publish-microsoft-endpoints', varargin{:}];
        end

        function this = routing_choice(this, varargin)
            % Routing Choice defines the kind of network routing opted by the user.  Allowed values: InternetRouting, MicrosoftRouting. Argument '--routing-choice' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--routing-choice', varargin{:}];
        end

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>. Network Rule Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = bypass(this, varargin)
            % Bypass traffic for space-separated uses.  Allowed values: AzureServices, Logging, Metrics, None.
            this.Options = [this.Options, '--bypass', varargin{:}];
        end

        function this = default_action(this, varargin)
            % Default action to apply when no rule matches.  Allowed values: Allow, Deny.
            this.Options = [this.Options, '--default-action', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage account update : Update the properties of a storage account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --access-tier                           : The access tier used for billing StandardBlob')
            fprintf('%s\n', '                                              accounts. Cannot be set for StandardLRS, StandardGRS,')
            fprintf('%s\n', '                                              StandardRAGRS, or PremiumLRS account types. It is')
            fprintf('%s\n', '                                              required for StandardBlob accounts during creation.')
            fprintf('%s\n', '                                              Allowed values: Cool, Hot.')
            fprintf('%s\n', '    --allow-blob-public-access              : Allow or disallow public access to all blobs or')
            fprintf('%s\n', '                                              containers in the storage account. The default value')
            fprintf('%s\n', '                                              for this property is null, which is equivalent to')
            fprintf('%s\n', '                                              true. When true, containers in the account may be')
            fprintf('%s\n', '                                              configured for public access. Note that setting this')
            fprintf('%s\n', '                                              property to true does not enable anonymous access to')
            fprintf('%s\n', '                                              any data in the account. The additional step of')
            fprintf('%s\n', '                                              configuring the public access setting for a container')
            fprintf('%s\n', '                                              is required to enable anonymous access.  Allowed')
            fprintf('%s\n', '                                              values: false, true.')
            fprintf('%s\n', '    --assign-identity                       : Generate and assign a new Storage Account Identity for')
            fprintf('%s\n', '                                              this storage account for use with key management')
            fprintf('%s\n', '                                              services like Azure KeyVault.')
            fprintf('%s\n', '    --custom-domain                         : User domain assigned to the storage account. Name is')
            fprintf('%s\n', '                                              the CNAME source. Use "" to clear existing value.')
            fprintf('%s\n', '    --enable-files-aadds                    : Enable Azure Active Directory Domain Services')
            fprintf('%s\n', '                                              authentication for Azure Files.  Allowed values:')
            fprintf('%s\n', '                                              false, true.')
            fprintf('%s\n', '    --enable-files-adds                     : Enable Azure Files Active Directory Domain Service')
            fprintf('%s\n', '                                              Authentication for storage account. When --enable-')
            fprintf('%s\n', '                                              files-adds is set to true, Azure Active Directory')
            fprintf('%s\n', '                                              Properties arguments must be provided.  Allowed')
            fprintf('%s\n', '                                              values: false, true.')
            fprintf('%s\n', '    --enable-large-file-share               : Enable the capability to support large file shares')
            fprintf('%s\n', '                                              with more than 5 TiB capacity for storage account.Once')
            fprintf('%s\n', '                                              the property is enabled, the feature cannot be')
            fprintf('%s\n', '                                              disabled. Currently only supported for LRS and ZRS')
            fprintf('%s\n', '                                              replication types, hence account conversions to geo-')
            fprintf('%s\n', '                                              redundant accounts would not be possible. For more')
            fprintf('%s\n', '                                              information, please refer to')
            fprintf('%s\n', '                                              https://go.microsoft.com/fwlink/?linkid=2086047.')
            fprintf('%s\n', '    --encryption-services                   : Specifies which service(s) to encrypt.  Allowed')
            fprintf('%s\n', '                                              values: blob, file, queue, table.')
            fprintf('%s\n', '    --https-only                            : Allows https traffic only to storage service.  Allowed')
            fprintf('%s\n', '                                              values: false, true.')
            fprintf('%s\n', '    --min-tls-version                       : The minimum TLS version to be permitted on requests to')
            fprintf('%s\n', '                                              storage. The default interpretation is TLS 1.0 for')
            fprintf('%s\n', '                                              this property.  Allowed values: TLS1_0, TLS1_1,')
            fprintf('%s\n', '                                              TLS1_2.')
            fprintf('%s\n', '    --sku                                   : The storage account SKU.  Allowed values: Premium_LRS,')
            fprintf('%s\n', '                                              Premium_ZRS, Standard_GRS, Standard_GZRS,')
            fprintf('%s\n', '                                              Standard_LRS, Standard_RAGRS, Standard_RAGZRS,')
            fprintf('%s\n', '                                              Standard_ZRS.')
            fprintf('%s\n', '    --tags                                  : Space-separated tags: key[=value] [key[=value] ...].')
            fprintf('%s\n', '                                              Use '''' to clear existing tags.')
            fprintf('%s\n', '    --use-subdomain                         : Specify whether to use indirect CNAME validation.')
            fprintf('%s\n', '                                              Allowed values: false, true.')
            fprintf('%s\n', 'Azure Active Directory Properties Arguments')
            fprintf('%s\n', '    --azure-storage-sid                     : Specify the security identifier (SID) for Azure')
            fprintf('%s\n', '                                              Storage. Required when --enable-files-adds is set to')
            fprintf('%s\n', '                                              True.')
            fprintf('%s\n', '    --domain-guid                           : Specify the domain GUID. Required when --enable-files-')
            fprintf('%s\n', '                                              adds is set to True.')
            fprintf('%s\n', '    --domain-name                           : Specify the primary domain that the AD DNS server is')
            fprintf('%s\n', '                                              authoritative for. Required when --enable-files-adds')
            fprintf('%s\n', '                                              is set to True.')
            fprintf('%s\n', '    --domain-sid                            : Specify the security identifier (SID). Required when')
            fprintf('%s\n', '                                              --enable-files-adds is set to True.')
            fprintf('%s\n', '    --forest-name                           : Specify the Active Directory forest to get. Required')
            fprintf('%s\n', '                                              when --enable-files-adds is set to True.')
            fprintf('%s\n', '    --net-bios-domain-name                  : Specify the NetBIOS domain name. Required when')
            fprintf('%s\n', '                                              --enable-files-adds is set to True.')
            fprintf('%s\n', 'Customer managed key Arguments')
            fprintf('%s\n', '    --encryption-key-name                   : The name of the KeyVault key.')
            fprintf('%s\n', '    --encryption-key-source                 : The default encryption key source.  Allowed values:')
            fprintf('%s\n', '                                              Microsoft.Keyvault, Microsoft.Storage.')
            fprintf('%s\n', '    --encryption-key-vault                  : The Uri of the KeyVault.')
            fprintf('%s\n', '    --encryption-key-version                : The version of the KeyVault key to use, which will opt')
            fprintf('%s\n', '                                              out of implicit key rotation. Please use "" to opt in')
            fprintf('%s\n', '                                              key auto-rotation again.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                   : Add an object to a list of objects by specifying a')
            fprintf('%s\n', '                                              path and key value pairs.  Example: --add')
            fprintf('%s\n', '                                              property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                                              string>.')
            fprintf('%s\n', '    --force-string                          : When using ''set'' or ''add'', preserve string literals')
            fprintf('%s\n', '                                              instead of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                                : Remove a property or an element from a list.  Example:')
            fprintf('%s\n', '                                              --remove property.list <indexToRemove> OR --remove')
            fprintf('%s\n', '                                              propertyToRemove.')
            fprintf('%s\n', '    --set                                   : Update an object by specifying a property path and')
            fprintf('%s\n', '                                              value to set.  Example: --set')
            fprintf('%s\n', '                                              property1.property2=<value>.')
            fprintf('%s\n', 'Network Rule Arguments')
            fprintf('%s\n', '    --bypass                                : Bypass traffic for space-separated uses.  Allowed')
            fprintf('%s\n', '                                              values: AzureServices, Logging, Metrics, None.')
            fprintf('%s\n', '    --default-action                        : Default action to apply when no rule matches.  Allowed')
            fprintf('%s\n', '                                              values: Allow, Deny.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                   : One or more resource IDs (space-delimited). It should')
            fprintf('%s\n', '                                              be a complete resource ID containing all information')
            fprintf('%s\n', '                                              of ''Resource Id'' arguments. You should provide either')
            fprintf('%s\n', '                                              --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                               : The storage account name.')
            fprintf('%s\n', '    --resource-group -g                     : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                              group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                          : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                              default subscription using `az account set -s')
            fprintf('%s\n', '                                              NAME_OR_ID`.')
            fprintf('%s\n', 'Routing Preference Arguments')
            fprintf('%s\n', '    --publish-internet-endpoints  [Preview] : A boolean flag which indicates whether')
            fprintf('%s\n', '                                              internet routing storage endpoints are to be')
            fprintf('%s\n', '                                              published.  Allowed values: false, true.')
            fprintf('%s\n', '        Argument ''--publish-internet-endpoints'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --publish-microsoft-endpoints [Preview] : A boolean flag which indicates whether')
            fprintf('%s\n', '                                              microsoft routing storage endpoints are to be')
            fprintf('%s\n', '                                              published.  Allowed values: false, true.')
            fprintf('%s\n', '        Argument ''--publish-microsoft-endpoints'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --routing-choice              [Preview] : Routing Choice defines the kind of network')
            fprintf('%s\n', '                                              routing opted by the user.  Allowed values:')
            fprintf('%s\n', '                                              InternetRouting, MicrosoftRouting.')
            fprintf('%s\n', '        Argument ''--routing-choice'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                             : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                              table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                 : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                              more information and examples.')
            fprintf('%s\n', '    --verbose                               : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                              logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update the properties of a storage account. (autogenerated)')
            fprintf('%s\n', '        az storage account update --default-action Allow --name MyStorageAccount --resource-group')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage account update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
