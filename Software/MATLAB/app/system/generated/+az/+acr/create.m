classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az acr create : Create an Azure Container Registry.
            this.BaseCmd = 'az acr create ';
        end
        function this = name(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sku(this, varargin)
            % The SKU of the container registry.  Allowed values: Basic, Classic, Premium, Standard.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = admin_enabled(this, varargin)
            % Indicates whether the admin user is enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--admin-enabled', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = workspace(this, varargin)
            % Name or ID of the Log Analytics workspace to send registry diagnostic logs to. All events will be enabled. You can use "az monitor log-analytics workspace create" to create one. Extra billing may apply. Argument '--workspace' is in preview. It may be changed/removed in a future release. Customer managed key Arguments
            this.Options = [this.Options, '--workspace', varargin{:}];
        end

        function this = identity(this, varargin)
            % Use assigned managed identity resource id or name if in the same resource group.
            this.Options = [this.Options, '--identity', varargin{:}];
        end

        function this = key_encryption_key(this, varargin)
            % Key vault key uri. Network Rule Arguments
            this.Options = [this.Options, '--key-encryption-key', varargin{:}];
        end

        function this = default_action(this, varargin)
            % Default action to apply when no rule matches. Only applicable to Premium SKU.  Allowed values: Allow, Deny.
            this.Options = [this.Options, '--default-action', varargin{:}];
        end

        function this = public_network_enabled(this, varargin)
            % Allow public network access for the container registry. The Default is allowed.  Allowed values: false, true.
            this.Options = [this.Options, '--public-network-enabled', varargin{:}];
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
            fprintf('%s\n', '    az acr create : Create an Azure Container Registry.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the container registry. You can configure the')
            fprintf('%s\n', '                                     default registry name using `az configure --defaults')
            fprintf('%s\n', '                                     acr=<registry name>`.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sku               [Required] : The SKU of the container registry.  Allowed values: Basic,')
            fprintf('%s\n', '                                     Classic, Premium, Standard.')
            fprintf('%s\n', '    --admin-enabled                : Indicates whether the admin user is enabled.  Allowed values:')
            fprintf('%s\n', '                                     false, true.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --workspace          [Preview] : Name or ID of the Log Analytics workspace to send')
            fprintf('%s\n', '                                     registry diagnostic logs to. All events will be enabled. You')
            fprintf('%s\n', '                                     can use "az monitor log-analytics workspace create" to create')
            fprintf('%s\n', '                                     one. Extra billing may apply.')
            fprintf('%s\n', '        Argument ''--workspace'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Customer managed key Arguments')
            fprintf('%s\n', '    --identity                     : Use assigned managed identity resource id or name if in the')
            fprintf('%s\n', '                                     same resource group.')
            fprintf('%s\n', '    --key-encryption-key           : Key vault key uri.')
            fprintf('%s\n', 'Network Rule Arguments')
            fprintf('%s\n', '    --default-action               : Default action to apply when no rule matches. Only applicable')
            fprintf('%s\n', '                                     to Premium SKU.  Allowed values: Allow, Deny.')
            fprintf('%s\n', '    --public-network-enabled       : Allow public network access for the container registry. The')
            fprintf('%s\n', '                                     Default is allowed.  Allowed values: false, true.')
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
            fprintf('%s\n', '    Create a managed container registry with the Standard SKU.')
            fprintf('%s\n', '        az acr create -n MyRegistry -g MyResourceGroup --sku Standard')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
