classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az managedservices assignment show : Gets a registration assignment.
            this.BaseCmd = 'az managedservices assignment show ';
        end
        function this = assignment(this, varargin)
            % The identifier (guid) or the fully qualified resource id of the registration assignment. When resource id is used, subscription id and resource group parameters are ignored.
            this.Options = [this.Options, '--assignment', varargin{:}];
        end

        function this = include_definition(this, varargin)
            % When provided, gets the associated registration definition details. Allowed values: false, true.
            this.Options = [this.Options, '--include-definition', varargin{:}];
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
            fprintf('%s\n', '    az managedservices assignment show : Gets a registration assignment.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --assignment [Required] : The identifier (guid) or the fully qualified resource id of the')
            fprintf('%s\n', '                              registration assignment. When resource id is used, subscription id and')
            fprintf('%s\n', '                              resource group parameters are ignored.')
            fprintf('%s\n', '    --include-definition    : When provided, gets the associated registration definition details.')
            fprintf('%s\n', '                              Allowed values: false, true.')
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
            fprintf('%s\n', '    Get an assignment given its identifier under the default subscription scope.')
            fprintf('%s\n', '        az managedservices assignment show --assignment d3087cf0-e180-4cca-b147-54ae00c7b504')
            fprintf('%s\n', '    Get an assignment given its fully qualified resource id.')
            fprintf('%s\n', '        az managedservices assignment show --assignment /subscriptions/a62076fa-768a-403c-9d9d-6a991')
            fprintf('%s\n', '        9aae441/providers/Microsoft.ManagedServices/registrationAssignments/0c3e9687-b461-4615-b6e4-')
            fprintf('%s\n', '        74d54998d6e4')
            fprintf('%s\n', '    Get an assignment given its identifier under the default subscription scope with the')
            fprintf('%s\n', '    registration definition details.')
            fprintf('%s\n', '        az managedservices assignment show --assignment d3087cf0-e180-4cca-b147-54ae00c7b504')
            fprintf('%s\n', '        --include-definition true')
            fprintf('%s\n', 'For more specific examples, use: az find "az managedservices assignment show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
