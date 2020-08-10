classdef assign < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = assign()
            % az vmss identity assign : Enable managed service identity on a VMSS.
            % This is required to authenticate and interact with other Azure services using bearer tokens.
            this.BaseCmd = 'az vmss identity assign ';
        end
        function this = identities(this, varargin)
            % Space-separated identities to assign. Use '[system]' to refer to the system assigned identity. Default: '[system]'.
            this.Options = [this.Options, '--identities', varargin{:}];
        end

        function this = role(this, varargin)
            % Role name or id the system assigned identity will have.  Default: Contributor.
            this.Options = [this.Options, '--role', varargin{:}];
        end

        function this = scope(this, varargin)
            % Scope that the system assigned identity can access.
            this.Options = [this.Options, '--scope', varargin{:}];
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
            fprintf('%s\n', '    az vmss identity assign : Enable managed service identity on a VMSS.')
            fprintf('%s\n', '        This is required to authenticate and interact with other Azure services using bearer tokens.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --identities        : Space-separated identities to assign. Use ''[system]'' to refer to the')
            fprintf('%s\n', '                          system assigned identity. Default: ''[system]''.')
            fprintf('%s\n', '    --role              : Role name or id the system assigned identity will have.  Default:')
            fprintf('%s\n', '                          Contributor.')
            fprintf('%s\n', '    --scope             : Scope that the system assigned identity can access.')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Enable system assigned identity on a VMSS with the ''Owner'' role.')
            fprintf('%s\n', '        az vmss identity assign -g MyResourceGroup -n MyVmss --role Owner --scope')
            fprintf('%s\n', '        /subscriptions/db5eb68e-73e2-4fa8-b18a-0123456789999/resourceGroups/MyResourceGroup')
            fprintf('%s\n', '    Enable managed service identity on a VMSS. (autogenerated)')
            fprintf('%s\n', '        az vmss identity assign --identities readerId writerId --name MyVmss --resource-group')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az vmss identity assign"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class assign 
