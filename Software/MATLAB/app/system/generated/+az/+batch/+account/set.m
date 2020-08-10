classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az batch account set : Update properties for a Batch account.
            this.BaseCmd = 'az batch account set ';
        end
        function this = name(this, varargin)
            % Name of the Batch account.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of the resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = encryption_key_identifier(this, varargin)
            % Part of the encryption configuration for the Batch account. Full path to the versioned secret. Example https://mykeyvault.v ault.azure.net/keys/testkey/6e34a81fef704045975661e297a4c053.
            this.Options = [this.Options, '--encryption-key-identifier', varargin{:}];
        end

        function this = encryption_key_source(this, varargin)
            % Part of the encryption configuration for the Batch account. Type of the key source. Can be either Microsoft.Batch or Microsoft.KeyVault.
            this.Options = [this.Options, '--encryption-key-source', varargin{:}];
        end

        function this = identity_type(this, varargin)
            % The type of identity used for the Batch account.  Allowed values: None, SystemAssigned.
            this.Options = [this.Options, '--identity-type', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % The storage account name or resource ID to be used for auto storage.
            this.Options = [this.Options, '--storage-account', varargin{:}];
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
            fprintf('%s\n', '    az batch account set : Update properties for a Batch account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the Batch account.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of the resource group.')
            fprintf('%s\n', '    --encryption-key-identifier    : Part of the encryption configuration for the Batch account.')
            fprintf('%s\n', '                                     Full path to the versioned secret. Example https://mykeyvault.v')
            fprintf('%s\n', '                                     ault.azure.net/keys/testkey/6e34a81fef704045975661e297a4c053.')
            fprintf('%s\n', '    --encryption-key-source        : Part of the encryption configuration for the Batch account.')
            fprintf('%s\n', '                                     Type of the key source. Can be either Microsoft.Batch or')
            fprintf('%s\n', '                                     Microsoft.KeyVault.')
            fprintf('%s\n', '    --identity-type                : The type of identity used for the Batch account.  Allowed')
            fprintf('%s\n', '                                     values: None, SystemAssigned.')
            fprintf('%s\n', '    --storage-account              : The storage account name or resource ID to be used for auto')
            fprintf('%s\n', '                                     storage.')
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
            fprintf('%s\n', '    Update properties for a Batch account. (autogenerated)')
            fprintf('%s\n', '        az batch account set --name MyBatchAccount --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az batch account set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
