classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az monitor log-analytics cluster update : Update a cluster instance.
            this.BaseCmd = 'az monitor log-analytics cluster update ';
        end
        function this = name(this, varargin)
            % The name of the Log Analytics cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = key_name(this, varargin)
            % The name of the key associated with the Log Analytics cluster.
            this.Options = [this.Options, '--key-name', varargin{:}];
        end

        function this = key_vault_uri(this, varargin)
            % The Key Vault uri which holds the key associated with the Log Analytics cluster.
            this.Options = [this.Options, '--key-vault-uri', varargin{:}];
        end

        function this = key_version(this, varargin)
            % The version of the key associated with the Log Analytics cluster.
            this.Options = [this.Options, '--key-version', varargin{:}];
        end

        function this = sku_capacity(this, varargin)
            % The capacity of the SKU. It must be in the range of 1000-2000 per day and must be in multiples of 100. If you want to increase the limit, please contact LAIngestionRate@microsoft.com. It can be decreased only after 31 days.
            this.Options = [this.Options, '--sku-capacity', varargin{:}];
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
            fprintf('%s\n', '    az monitor log-analytics cluster update : Update a cluster instance.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the Log Analytics cluster.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --key-name                     : The name of the key associated with the Log Analytics cluster.')
            fprintf('%s\n', '    --key-vault-uri                : The Key Vault uri which holds the key associated with the Log')
            fprintf('%s\n', '                                     Analytics cluster.')
            fprintf('%s\n', '    --key-version                  : The version of the key associated with the Log Analytics')
            fprintf('%s\n', '                                     cluster.')
            fprintf('%s\n', '    --sku-capacity                 : The capacity of the SKU. It must be in the range of 1000-2000')
            fprintf('%s\n', '                                     per day and must be in multiples of 100. If you want to')
            fprintf('%s\n', '                                     increase the limit, please contact')
            fprintf('%s\n', '                                     LAIngestionRate@microsoft.com. It can be decreased only after')
            fprintf('%s\n', '                                     31 days.')
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
            fprintf('%s\n', '    Update a cluster instance.')
            fprintf('%s\n', '        az monitor log-analytics cluster update -g MyResourceGroup -n MyCluster \')
            fprintf('%s\n', '          --key-vault-uri https://myvault.vault.azure.net/ --key-name my-key \')
            fprintf('%s\n', '          --key-version fe0adcedd8014aed9c22e9aefb81a1ds --sku-capacity 1000')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor log-analytics cluster update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
