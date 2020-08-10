classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az managedservices definition delete : Deletes a registration.
            this.BaseCmd = 'az managedservices definition delete ';
        end
        function this = definition(this, varargin)
            % The identifier (guid) or the fully qualified resource id of the registration definition. When resource id is used, subscription id and resource group parameters are ignored.
            this.Options = [this.Options, '--definition', varargin{:}];
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
            fprintf('%s\n', '    az managedservices definition delete : Deletes a registration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --definition [Required] : The identifier (guid) or the fully qualified resource id of the')
            fprintf('%s\n', '                              registration definition. When resource id is used, subscription id and')
            fprintf('%s\n', '                              resource group parameters are ignored.')
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
            fprintf('%s\n', '    Deletes the registration definition given its identifier under the default subscription scope.')
            fprintf('%s\n', '        az managedservices definition delete --definition af8772a0-fd9c-4ddc-8ad0-7d4b3913d7dd')
            fprintf('%s\n', '    Deletes the registration definition given its fully qualified resource id.')
            fprintf('%s\n', '        az managedservices definition delete --definition /subscriptions/39033314-9b39-4c7b-84fd-0e2')
            fprintf('%s\n', '        6e55f15dc/providers/Microsoft.ManagedServices/registrationDefinitions/1d693e4f-9e79-433a-b3a')
            fprintf('%s\n', '        2-afce1f8b61ec')
            fprintf('%s\n', 'For more specific examples, use: az find "az managedservices definition delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
