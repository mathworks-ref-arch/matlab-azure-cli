classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az managedservices assignment create : Creates a new registration assignment.
            this.BaseCmd = 'az managedservices assignment create ';
        end
        function this = definition(this, varargin)
            % The fully qualified resource id of the registration definition.
            this.Options = [this.Options, '--definition', varargin{:}];
        end

        function this = assignment_id(this, varargin)
            % Can be used to override the generated registration assignment id.
            this.Options = [this.Options, '--assignment-id', varargin{:}];
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
            fprintf('%s\n', '    az managedservices assignment create : Creates a new registration assignment.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --definition [Required] : The fully qualified resource id of the registration definition.')
            fprintf('%s\n', '    --assignment-id         : Can be used to override the generated registration assignment id.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an assignment under the default subscription scope.')
            fprintf('%s\n', '        az managedservices assignment create --definition "/subscriptions/a62076fa-768a-403c-9d9d-6a')
            fprintf('%s\n', '        9919aae441/providers/Microsoft.ManagedServices/registrationDefinitions/0c3e9687-b461-4615-b6')
            fprintf('%s\n', '        e4-74d54998d6e4"')
            fprintf('%s\n', '    Create an assignment under a given resource group scope.')
            fprintf('%s\n', '        az managedservices assignment create --definition "/subscriptions/a62076fa-768a-403c-9d9d-6a')
            fprintf('%s\n', '        9919aae441/providers/Microsoft.ManagedServices/registrationDefinitions/0c3e9687-b461-4615-b6')
            fprintf('%s\n', '        e4-74d54998d6e4" --resource-group mygroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az managedservices assignment create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
