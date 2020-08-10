classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az storage account create : Create a storage account.
            % The SKU of the storage account defaults to 'Standard_RAGRS'.
            this.BaseCmd = 'az storage account create ';
        end
        function this = name(this, varargin)
            % The storage account name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            % User domain assigned to the storage account. Name is the CNAME source.
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

        function this = enable_hierarchical_namespace(this, varargin)
            % Allow the blob service to exhibit filesystem semantics. This property can be enabled only when storage account kind is StorageV2.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-hierarchical-namespace', varargin{:}];
        end

        function this = enable_large_file_share(this, varargin)
            % Enable the capability to support large file shares with more than 5 TiB capacity for storage account.Once the property is enabled, the feature cannot be disabled. Currently only supported for LRS and ZRS replication types, hence account conversions to geo- redundant accounts would not be possible. For more information, please refer to https://go.microsoft.com/fwlink/?linkid=2086047.
            this.Options = [this.Options, '--enable-large-file-share', varargin{:}];
        end

        function this = encryption_key_type_for_queue(this, varargin)
            % Set the encryption key type for Queue service. "Account": Queue will be encrypted with account-scoped encryption key. "Service": Queue will always be encrypted with service-scoped keys. Currently the default encryption key type is "Service".  Allowed values: Account, Service.
            this.Options = [this.Options, '--encryption-key-type-for-queue', varargin{:}];
        end

        function this = encryption_key_type_for_table(this, varargin)
            % Set the encryption key type for Table service. "Account": Table will be encrypted with account-scoped encryption key. "Service": Table will always be encrypted with service-scoped keys. Currently the default encryption key type is "Service".  Allowed values: Account, Service.
            this.Options = [this.Options, '--encryption-key-type-for-table', varargin{:}];
        end

        function this = encryption_services(this, varargin)
            % Specifies which service(s) to encrypt.  Allowed values: blob, file, queue, table.
            this.Options = [this.Options, '--encryption-services', varargin{:}];
        end

        function this = https_only(this, varargin)
            % Allow https traffic only to storage service if set to true. The default value is true.  Allowed values: false, true.
            this.Options = [this.Options, '--https-only', varargin{:}];
        end

        function this = kind(this, varargin)
            % Indicates the type of storage account.  Allowed values: BlobStorage, BlockBlobStorage, FileStorage, Storage, StorageV2.  Default: StorageV2.
            this.Options = [this.Options, '--kind', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = min_tls_version(this, varargin)
            % The minimum TLS version to be permitted on requests to storage. The default interpretation is TLS 1.0 for this property.  Allowed values: TLS1_0, TLS1_1, TLS1_2.
            this.Options = [this.Options, '--min-tls-version', varargin{:}];
        end

        function this = require_infrastructure_encryption(this, varargin)
            % A boolean indicating whether or not the service applies a secondary layer of encryption with platform managed keys for data at rest.  Allowed values: false, true.
            this.Options = [this.Options, '--require-infrastructure-encryption', varargin{:}];
        end

        function this = sku(this, varargin)
            % The storage account SKU.  Allowed values: Premium_LRS, Premium_ZRS, Standard_GRS, Standard_GZRS, Standard_LRS, Standard_RAGRS, Standard_RAGZRS, Standard_ZRS.  Default: Standard_RAGRS.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Azure Active Directory Properties Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
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
            % Specify the NetBIOS domain name. Required when --enable-files-adds is set to True. Network Rule Arguments
            this.Options = [this.Options, '--net-bios-domain-name', varargin{:}];
        end

        function this = bypass(this, varargin)
            % Bypass traffic for space-separated uses.  Allowed values: AzureServices, Logging, Metrics, None.
            this.Options = [this.Options, '--bypass', varargin{:}];
        end

        function this = default_action(this, varargin)
            % Default action to apply when no rule matches.  Allowed values: Allow, Deny. Routing Preference Arguments
            this.Options = [this.Options, '--default-action', varargin{:}];
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

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage account create : Create a storage account.')
            fprintf('%s\n', '        The SKU of the storage account defaults to ''Standard_RAGRS''.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                    [Required] : The storage account name.')
            fprintf('%s\n', '    --resource-group -g          [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                              group using `az configure --defaults group=<name>`.')
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
            fprintf('%s\n', '                                              the CNAME source.')
            fprintf('%s\n', '    --enable-files-aadds                    : Enable Azure Active Directory Domain Services')
            fprintf('%s\n', '                                              authentication for Azure Files.  Allowed values:')
            fprintf('%s\n', '                                              false, true.')
            fprintf('%s\n', '    --enable-files-adds                     : Enable Azure Files Active Directory Domain Service')
            fprintf('%s\n', '                                              Authentication for storage account. When --enable-')
            fprintf('%s\n', '                                              files-adds is set to true, Azure Active Directory')
            fprintf('%s\n', '                                              Properties arguments must be provided.  Allowed')
            fprintf('%s\n', '                                              values: false, true.')
            fprintf('%s\n', '    --enable-hierarchical-namespace --hns   : Allow the blob service to exhibit filesystem')
            fprintf('%s\n', '                                              semantics. This property can be enabled only when')
            fprintf('%s\n', '                                              storage account kind is StorageV2.  Allowed values:')
            fprintf('%s\n', '                                              false, true.')
            fprintf('%s\n', '    --enable-large-file-share               : Enable the capability to support large file shares')
            fprintf('%s\n', '                                              with more than 5 TiB capacity for storage account.Once')
            fprintf('%s\n', '                                              the property is enabled, the feature cannot be')
            fprintf('%s\n', '                                              disabled. Currently only supported for LRS and ZRS')
            fprintf('%s\n', '                                              replication types, hence account conversions to geo-')
            fprintf('%s\n', '                                              redundant accounts would not be possible. For more')
            fprintf('%s\n', '                                              information, please refer to')
            fprintf('%s\n', '                                              https://go.microsoft.com/fwlink/?linkid=2086047.')
            fprintf('%s\n', '    --encryption-key-type-for-queue -q      : Set the encryption key type for Queue service.')
            fprintf('%s\n', '                                              "Account": Queue will be encrypted with account-scoped')
            fprintf('%s\n', '                                              encryption key. "Service": Queue will always be')
            fprintf('%s\n', '                                              encrypted with service-scoped keys. Currently the')
            fprintf('%s\n', '                                              default encryption key type is "Service".  Allowed')
            fprintf('%s\n', '                                              values: Account, Service.')
            fprintf('%s\n', '    --encryption-key-type-for-table -t      : Set the encryption key type for Table service.')
            fprintf('%s\n', '                                              "Account": Table will be encrypted with account-scoped')
            fprintf('%s\n', '                                              encryption key. "Service": Table will always be')
            fprintf('%s\n', '                                              encrypted with service-scoped keys. Currently the')
            fprintf('%s\n', '                                              default encryption key type is "Service".  Allowed')
            fprintf('%s\n', '                                              values: Account, Service.')
            fprintf('%s\n', '    --encryption-services                   : Specifies which service(s) to encrypt.  Allowed')
            fprintf('%s\n', '                                              values: blob, file, queue, table.')
            fprintf('%s\n', '    --https-only                            : Allow https traffic only to storage service if set to')
            fprintf('%s\n', '                                              true. The default value is true.  Allowed values:')
            fprintf('%s\n', '                                              false, true.')
            fprintf('%s\n', '    --kind                                  : Indicates the type of storage account.  Allowed')
            fprintf('%s\n', '                                              values: BlobStorage, BlockBlobStorage, FileStorage,')
            fprintf('%s\n', '                                              Storage, StorageV2.  Default: StorageV2.')
            fprintf('%s\n', '    --location -l                           : Location. Values from: `az account list-locations`.')
            fprintf('%s\n', '                                              You can configure the default location using `az')
            fprintf('%s\n', '                                              configure --defaults location=<location>`.')
            fprintf('%s\n', '    --min-tls-version                       : The minimum TLS version to be permitted on requests to')
            fprintf('%s\n', '                                              storage. The default interpretation is TLS 1.0 for')
            fprintf('%s\n', '                                              this property.  Allowed values: TLS1_0, TLS1_1,')
            fprintf('%s\n', '                                              TLS1_2.')
            fprintf('%s\n', '    --require-infrastructure-encryption -i  : A boolean indicating whether or not the service')
            fprintf('%s\n', '                                              applies a secondary layer of encryption with platform')
            fprintf('%s\n', '                                              managed keys for data at rest.  Allowed values: false,')
            fprintf('%s\n', '                                              true.')
            fprintf('%s\n', '    --sku                                   : The storage account SKU.  Allowed values: Premium_LRS,')
            fprintf('%s\n', '                                              Premium_ZRS, Standard_GRS, Standard_GZRS,')
            fprintf('%s\n', '                                              Standard_LRS, Standard_RAGRS, Standard_RAGZRS,')
            fprintf('%s\n', '                                              Standard_ZRS.  Default: Standard_RAGRS.')
            fprintf('%s\n', '    --tags                                  : Space-separated tags: key[=value] [key[=value] ...].')
            fprintf('%s\n', '                                              Use '''' to clear existing tags.')
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
            fprintf('%s\n', 'Network Rule Arguments')
            fprintf('%s\n', '    --bypass                                : Bypass traffic for space-separated uses.  Allowed')
            fprintf('%s\n', '                                              values: AzureServices, Logging, Metrics, None.')
            fprintf('%s\n', '    --default-action                        : Default action to apply when no rule matches.  Allowed')
            fprintf('%s\n', '                                              values: Allow, Deny.')
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
            fprintf('%s\n', '    --subscription                          : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                              default subscription using `az account set -s')
            fprintf('%s\n', '                                              NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                               : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                              logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a storage account ''mystorageaccount'' in resource group ''MyResourceGroup'' in the West US')
            fprintf('%s\n', '    region with locally redundant storage.')
            fprintf('%s\n', '        az storage account create -n mystorageaccount -g MyResourceGroup -l westus --sku')
            fprintf('%s\n', '        Standard_LRS')
            fprintf('%s\n', '    Create a storage account ''mystorageaccount'' in resource group ''MyResourceGroup'' in the')
            fprintf('%s\n', '    eastus2euap region with account-scoped encryption key enabled for Table Service.')
            fprintf('%s\n', '        az storage account create -n mystorageaccount -g MyResourceGroup --kind StorageV2 -l')
            fprintf('%s\n', '        eastus2euap -t Account')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage account create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
