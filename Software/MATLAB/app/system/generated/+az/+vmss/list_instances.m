classdef list_instances < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list_instances()
            % az vmss list-instances : Gets a list of all virtual machines in a VM scale sets.
            this.BaseCmd = 'az vmss list-instances ';
        end
        function this = expand(this, varargin)
            % The expand expression to apply to the operation. Allowed values are 'instanceView'.
            this.Options = [this.Options, '--expand', varargin{:}];
        end

        function this = filter(this, varargin)
            % The filter to apply to the operation. Allowed values are 'startswith(instanceView/statuses/code, 'PowerState') eq true', 'properties/latestModelApplied eq true', 'properties/latestModelApplied eq false'.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = select(this, varargin)
            % The list parameters. Allowed values are 'instanceView', 'instanceView/statuses'.
            this.Options = [this.Options, '--select', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az vmss list-instances"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Scale set name. You can configure the default using `az configure --defaults vmss=<name>`.
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
            fprintf('%s\n', '    az vmss list-instances : Gets a list of all virtual machines in a VM scale sets.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --expand            : The expand expression to apply to the operation. Allowed values are')
            fprintf('%s\n', '                          ''instanceView''.')
            fprintf('%s\n', '    --filter            : The filter to apply to the operation. Allowed values are')
            fprintf('%s\n', '                          ''startswith(instanceView/statuses/code, ''PowerState'') eq true'',')
            fprintf('%s\n', '                          ''properties/latestModelApplied eq true'', ''properties/latestModelApplied eq')
            fprintf('%s\n', '                          false''.')
            fprintf('%s\n', '    --select            : The list parameters. Allowed values are ''instanceView'',')
            fprintf('%s\n', '                          ''instanceView/statuses''.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : Scale set name. You can configure the default using `az configure')
            fprintf('%s\n', '                          --defaults vmss=<name>`.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az vmss list-instances"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list_instances 
