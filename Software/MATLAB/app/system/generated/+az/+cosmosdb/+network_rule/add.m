classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az cosmosdb network-rule add : Adds a virtual network rule to an existing Cosmos DB database
            % account.
            this.BaseCmd = 'az cosmosdb network-rule add ';
        end
        function this = subnet(this, varargin)
            % Name or ID of the subnet.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = ignore_missing_endpoint(this, varargin)
            % Create firewall rule before the virtual network has vnet service endpoint enabled. Allowed values: false, true.
            this.Options = [this.Options, '--ignore-missing-endpoint', varargin{:}];
        end

        function this = virtual_network(this, varargin)
            % The name of the VNET, which must be provided in conjunction with the name of the subnet.
            this.Options = [this.Options, '--virtual-network', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
            this.Options = [this.Options, '--output', varargin{:}];
        end

        function this = query(this, varargin)
            % JMESPath query string. See http://jmespath.org/ for more information and examples.
            this.Options = [this.Options, '--query', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az cosmosdb network-rule add"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Cosmos DB database account.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az cosmosdb network-rule add : Adds a virtual network rule to an existing Cosmos DB database')
            fprintf('%s\n', '    account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --subnet                                              [Required] : Name or ID of the subnet.')
            fprintf('%s\n', '    --ignore-missing-endpoint --ignore-missing-vnet-service-endpoint : Create firewall rule before')
            fprintf('%s\n', '                                                                       the virtual network has vnet')
            fprintf('%s\n', '                                                                       service endpoint enabled.')
            fprintf('%s\n', '                                                                       Allowed values: false, true.')
            fprintf('%s\n', '    --virtual-network --vnet-name                                    : The name of the VNET, which')
            fprintf('%s\n', '                                                                       must be provided in')
            fprintf('%s\n', '                                                                       conjunction with the name of')
            fprintf('%s\n', '                                                                       the subnet.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                                            : One or more resource IDs')
            fprintf('%s\n', '                                                                       (space-delimited). It should')
            fprintf('%s\n', '                                                                       be a complete resource ID')
            fprintf('%s\n', '                                                                       containing all information of')
            fprintf('%s\n', '                                                                       ''Resource Id'' arguments. You')
            fprintf('%s\n', '                                                                       should provide either --ids')
            fprintf('%s\n', '                                                                       or other ''Resource Id''')
            fprintf('%s\n', '                                                                       arguments.')
            fprintf('%s\n', '    --name -n                                                        : Name of the Cosmos DB')
            fprintf('%s\n', '                                                                       database account.')
            fprintf('%s\n', '    --resource-group -g                                              : Name of resource group. You')
            fprintf('%s\n', '                                                                       can configure the default')
            fprintf('%s\n', '                                                                       group using `az configure')
            fprintf('%s\n', '                                                                       --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                                                   : Name or ID of subscription.')
            fprintf('%s\n', '                                                                       You can configure the default')
            fprintf('%s\n', '                                                                       subscription using `az')
            fprintf('%s\n', '                                                                       account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                                          : Increase logging verbosity to')
            fprintf('%s\n', '                                                                       show all debug logs.')
            fprintf('%s\n', '    --help -h                                                        : Show this help message and')
            fprintf('%s\n', '                                                                       exit.')
            fprintf('%s\n', '    --only-show-errors                                               : Only show errors, suppressing')
            fprintf('%s\n', '                                                                       warnings.')
            fprintf('%s\n', '    --output -o                                                      : Output format.  Allowed')
            fprintf('%s\n', '                                                                       values: json, jsonc, none,')
            fprintf('%s\n', '                                                                       table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                                                                       Default: json.')
            fprintf('%s\n', '    --query                                                          : JMESPath query string. See')
            fprintf('%s\n', '                                                                       http://jmespath.org/ for more')
            fprintf('%s\n', '                                                                       information and examples.')
            fprintf('%s\n', '    --verbose                                                        : Increase logging verbosity.')
            fprintf('%s\n', '                                                                       Use --debug for full debug')
            fprintf('%s\n', '                                                                       logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az cosmosdb network-rule add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
