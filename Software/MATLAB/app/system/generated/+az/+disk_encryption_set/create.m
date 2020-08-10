classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az disk-encryption-set create : Create a disk encryption set.
            this.BaseCmd = 'az disk-encryption-set create ';
        end
        function this = key_url(this, varargin)
            % URL pointing to a key or secret in KeyVault.
            this.Options = [this.Options, '--key-url', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of disk encryption set.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = source_vault(this, varargin)
            % Name or ID of the KeyVault containing the key or secret.
            this.Options = [this.Options, '--source-vault', varargin{:}];
        end

        function this = encryption_type(this, varargin)
            % The type of key used to encrypt the data of the disk. EncryptionAtRestWithPlatformKey: Disk is encrypted at rest with Platform managed key. It is the default encryption type. EncryptionAtRestWithCustomerKey: Disk is encrypted at rest with Customer managed key that can be changed and revoked by a customer. EncryptionAtRestWithPlatformAndCustomerKeys: Disk is encrypted at rest with 2 layers of encryption. One of the keys is Customer managed and the other key is Platform managed. Allowed values: EncryptionAtRestWithCustomerKey, EncryptionAtRestWithPlatformAndCustomerKeys, EncryptionAtRestWithPlatformKey.
            this.Options = [this.Options, '--encryption-type', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az disk-encryption-set create : Create a disk encryption set.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --key-url           [Required] : URL pointing to a key or secret in KeyVault.')
            fprintf('%s\n', '    --name -n           [Required] : Name of disk encryption set.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --source-vault      [Required] : Name or ID of the KeyVault containing the key or secret.')
            fprintf('%s\n', '    --encryption-type              : The type of key used to encrypt the data of the disk.')
            fprintf('%s\n', '                                     EncryptionAtRestWithPlatformKey: Disk is encrypted at rest with')
            fprintf('%s\n', '                                     Platform managed key. It is the default encryption type.')
            fprintf('%s\n', '                                     EncryptionAtRestWithCustomerKey: Disk is encrypted at rest with')
            fprintf('%s\n', '                                     Customer managed key that can be changed and revoked by a')
            fprintf('%s\n', '                                     customer. EncryptionAtRestWithPlatformAndCustomerKeys: Disk is')
            fprintf('%s\n', '                                     encrypted at rest with 2 layers of encryption. One of the keys')
            fprintf('%s\n', '                                     is Customer managed and the other key is Platform managed.')
            fprintf('%s\n', '                                     Allowed values: EncryptionAtRestWithCustomerKey,')
            fprintf('%s\n', '                                     EncryptionAtRestWithPlatformAndCustomerKeys,')
            fprintf('%s\n', '                                     EncryptionAtRestWithPlatformKey.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a disk encryption set.')
            fprintf('%s\n', '        az disk-encryption-set create --resource-group MyResourceGroup --name MyDiskEncryptionSet')
            fprintf('%s\n', '        --key-url MyKey --source-vault MyVault')
            fprintf('%s\n', '    Create a disk encryption set that supports double encryption.')
            fprintf('%s\n', '        az disk-encryption-set create --resource-group MyResourceGroup --name MyDiskEncryptionSet')
            fprintf('%s\n', '        --key-url MyKey --source-vault MyVault --encryption-type')
            fprintf('%s\n', '        EncryptionAtRestWithPlatformAndCustomerKeys')
            fprintf('%s\n', 'For more specific examples, use: az find "az disk-encryption-set create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
