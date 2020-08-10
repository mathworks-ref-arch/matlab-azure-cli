classdef configure < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = configure()
            % az network watcher configure : Configure the Network Watcher service for different regions.
            this.BaseCmd = 'az network watcher configure ';
        end
        function this = locations(this, varargin)
            % Space-separated list of locations to configure.
            this.Options = [this.Options, '--locations', varargin{:}];
        end

        function this = enabled(this, varargin)
            % Enabled status of Network Watcher in the specified regions.  Allowed values: false, true.
            this.Options = [this.Options, '--enabled', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. Required when enabling new regions. When a previously disabled region is enabled to use Network Watcher, a Network Watcher resource will be created in this resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az network watcher configure : Configure the Network Watcher service for different regions.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --locations -l [Required] : Space-separated list of locations to configure.')
            fprintf('%s\n', '    --enabled                 : Enabled status of Network Watcher in the specified regions.  Allowed')
            fprintf('%s\n', '                                values: false, true.')
            fprintf('%s\n', '    --resource-group -g       : Name of resource group. Required when enabling new regions.')
            fprintf('%s\n', '        When a previously disabled region is enabled to use Network Watcher, a')
            fprintf('%s\n', '            Network Watcher resource will be created in this resource group.')
            fprintf('%s\n', '    --tags                    : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                                existing tags.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Configure Network Watcher for the West US region.')
            fprintf('%s\n', '        az network watcher configure -g NetworkWatcherRG  -l westus --enabled true')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher configure"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class configure 
