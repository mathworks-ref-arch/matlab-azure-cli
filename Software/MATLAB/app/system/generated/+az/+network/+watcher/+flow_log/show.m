classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az network watcher flow-log show : Get the flow log configuration of a network security group.
            this.BaseCmd = 'az network watcher flow-log show ';
        end
        function this = location(this, varargin)
            % Location to identify the exclusive Network Watcher under a region. Only one Network Watcher can be existed per subscription and region.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the flow logger.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = nsg(this, varargin)
            % Name or ID of the network security group. Argument 'nsg' has been deprecated and will be removed in a future release. Use '-- location and --name combination' instead.
            this.Options = [this.Options, '--nsg', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az network watcher flow-log show : Get the flow log configuration of a network security group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l       : Location to identify the exclusive Network Watcher under a region. Only')
            fprintf('%s\n', '                          one Network Watcher can be existed per subscription and region.')
            fprintf('%s\n', '    --name -n           : The name of the flow logger.')
            fprintf('%s\n', '    --nsg  [Deprecated] : Name or ID of the network security group.')
            fprintf('%s\n', '        Argument ''nsg'' has been deprecated and will be removed in a future release. Use ''--')
            fprintf('%s\n', '        location and --name combination'' instead.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Show NSG flow logs. (Deprecated)')
            fprintf('%s\n', '        az network watcher flow-log show -g MyResourceGroup --nsg MyNsg')
            fprintf('%s\n', '    Show NSG flow logs with Azure Resource Management formatted.')
            fprintf('%s\n', '        az network watcher flow-log show --location MyNetworkWatcher --name MyFlowLog')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher flow-log show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
