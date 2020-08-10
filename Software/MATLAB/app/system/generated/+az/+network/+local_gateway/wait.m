classdef wait < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = wait()
            % az network local-gateway wait : Place the CLI in a waiting state until a condition of the local
            % gateway is met.
            this.BaseCmd = 'az network local-gateway wait ';
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
            % Name of the local network gateway.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Wait Condition Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = created(this, varargin)
            % Wait until created with 'provisioningState' at 'Succeeded'.
            this.Options = [this.Options, '--created', varargin{:}];
        end

        function this = custom(this, varargin)
            % Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!='InProgress', instanceView.statuses[?code=='PowerState/running'].
            this.Options = [this.Options, '--custom', varargin{:}];
        end

        function this = deleted(this, varargin)
            % Wait until deleted.
            this.Options = [this.Options, '--deleted', varargin{:}];
        end

        function this = exists(this, varargin)
            % Wait until the resource exists.
            this.Options = [this.Options, '--exists', varargin{:}];
        end

        function this = interval(this, varargin)
            % Polling interval in seconds.  Default: 30.
            this.Options = [this.Options, '--interval', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Maximum wait in seconds.  Default: 3600.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = updated(this, varargin)
            % Wait until updated with provisioningState at 'Succeeded'.
            this.Options = [this.Options, '--updated', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network local-gateway wait : Place the CLI in a waiting state until a condition of the local')
            fprintf('%s\n', '    gateway is met.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : Name of the local network gateway.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Wait Condition Arguments')
            fprintf('%s\n', '    --created           : Wait until created with ''provisioningState'' at ''Succeeded''.')
            fprintf('%s\n', '    --custom            : Wait until the condition satisfies a custom JMESPath query. E.g.')
            fprintf('%s\n', '                          provisioningState!=''InProgress'',')
            fprintf('%s\n', '                          instanceView.statuses[?code==''PowerState/running''].')
            fprintf('%s\n', '    --deleted           : Wait until deleted.')
            fprintf('%s\n', '    --exists            : Wait until the resource exists.')
            fprintf('%s\n', '    --interval          : Polling interval in seconds.  Default: 30.')
            fprintf('%s\n', '    --timeout           : Maximum wait in seconds.  Default: 3600.')
            fprintf('%s\n', '    --updated           : Wait until updated with provisioningState at ''Succeeded''.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Wait for Local Network Gateway to return as created.')
            fprintf('%s\n', '        az network local-gateway wait -g MyResourceGroup -n MyLocalGateway --created')
            fprintf('%s\n', 'For more specific examples, use: az find "az network local-gateway wait"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class wait 
