classdef assign < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = assign()
            % az network express-route port identity assign : Assign a managed service identity to an
            % ExpressRoute Port.
            this.BaseCmd = 'az network express-route port identity assign ';
        end
        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish. Identity Arguments
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = identity(this, varargin)
            % Name or ID of the ManagedIdentity Resource.
            this.Options = [this.Options, '--identity', varargin{:}];
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
            % ExpressRoute port name.
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
            fprintf('%s\n', '    az network express-route port identity assign : Assign a managed service identity to an')
            fprintf('%s\n', '    ExpressRoute Port.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --no-wait             : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Identity Arguments')
            fprintf('%s\n', '    --identity [Required] : Name or ID of the ManagedIdentity Resource.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                 : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                            resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                            should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n             : ExpressRoute port name.')
            fprintf('%s\n', '    --resource-group -g   : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                            configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Assign an identity to the ExpressRoute Port')
            fprintf('%s\n', '        az network express-route port identity assign \')
            fprintf('%s\n', '        --resource-group MyResourceGroupg \')
            fprintf('%s\n', '        --name MyExpressRoutePort \')
            fprintf('%s\n', '        --identity MyUserAssignedManagedServiceIdentity')
            fprintf('%s\n', 'For more specific examples, use: az find "az network express-route port identity assign"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class assign 
