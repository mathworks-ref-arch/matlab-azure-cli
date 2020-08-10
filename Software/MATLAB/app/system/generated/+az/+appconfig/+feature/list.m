classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az appconfig feature list : List feature flags.
            % Command group 'appconfig feature' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az appconfig feature list ';
        end
        function this = all(this, varargin)
            % List all feature flags.
            this.Options = [this.Options, '--all', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Combination of access key and endpoint of App Configuration. Can be found using 'az appconfig credential list'. Users can preset it using `az configure --defaults appconfig_connection_string=<connection_string>` or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = feature(this, varargin)
            % Key of the feature to be listed. Support star sign as filters, for instance * means all key and abc* means keys with abc as prefix. Comma separated keys are not supported. Please provide escaped string if your feature name contains comma.
            this.Options = [this.Options, '--feature', varargin{:}];
        end

        function this = fields(this, varargin)
            % Customize output fields for Feature Flags.  Allowed values: conditions, description, key, label, last_modified, locked, state.
            this.Options = [this.Options, '--fields', varargin{:}];
        end

        function this = label(this, varargin)
            % If no label specified, list all labels. Support star sign as filters, for instance * means all labels and abc* means labels with abc as prefix. Use '\0' for null label.
            this.Options = [this.Options, '--label', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the App Configuration. You can configure the default name using `az configure --defaults app_configuration_store=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = top(this, varargin)
            % Maximum number of items to return. Must be a positive integer. Default to 100.
            this.Options = [this.Options, '--top', varargin{:}];
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
            fprintf('%s\n', '    az appconfig feature list : List feature flags.')
            fprintf('%s\n', '        Command group ''appconfig feature'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --all               : List all feature flags.')
            fprintf('%s\n', '    --connection-string : Combination of access key and endpoint of App Configuration. Can be found')
            fprintf('%s\n', '                          using ''az appconfig credential list''. Users can preset it using `az')
            fprintf('%s\n', '                          configure --defaults appconfig_connection_string=<connection_string>` or')
            fprintf('%s\n', '                          environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING.')
            fprintf('%s\n', '    --feature           : Key of the feature to be listed. Support star sign as filters, for')
            fprintf('%s\n', '                          instance * means all key and abc* means keys with abc as prefix. Comma')
            fprintf('%s\n', '                          separated keys are not supported. Please provide escaped string if your')
            fprintf('%s\n', '                          feature name contains comma.')
            fprintf('%s\n', '    --fields            : Customize output fields for Feature Flags.  Allowed values: conditions,')
            fprintf('%s\n', '                          description, key, label, last_modified, locked, state.')
            fprintf('%s\n', '    --label             : If no label specified, list all labels. Support star sign as filters, for')
            fprintf('%s\n', '                          instance * means all labels and abc* means labels with abc as prefix. Use')
            fprintf('%s\n', '                          ''\0'' for null label.')
            fprintf('%s\n', '    --name -n           : Name of the App Configuration. You can configure the default name using')
            fprintf('%s\n', '                          `az configure --defaults app_configuration_store=<name>`.')
            fprintf('%s\n', '    --top -t            : Maximum number of items to return. Must be a positive integer. Default to')
            fprintf('%s\n', '                          100.')
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
            fprintf('%s\n', '    List all feature flags.')
            fprintf('%s\n', '        az appconfig feature list -n MyAppConfiguration')
            fprintf('%s\n', '    List all feature flags with null labels.')
            fprintf('%s\n', '        az appconfig feature list -n MyAppConfiguration --label \0')
            fprintf('%s\n', '    List a specfic feature for any label start with v1. using connection string.')
            fprintf('%s\n', '        az appconfig feature list --feature color --connection-string')
            fprintf('%s\n', '        Endpoint=https://contoso.azconfig.io;Id=xxx;Secret=xxx --label v1.*')
            fprintf('%s\n', '    List all features with any labels and query only key, state and conditions.')
            fprintf('%s\n', '        az appconfig feature list --connection-string')
            fprintf('%s\n', '        Endpoint=https://contoso.azconfig.io;Id=xxx;Secret=xxx --fields key state conditions')
            fprintf('%s\n', '    List 150 feature flags with any labels.')
            fprintf('%s\n', '        az appconfig feature list --connection-string')
            fprintf('%s\n', '        Endpoint=https://contoso.azconfig.io;Id=xxx;Secret=xxx  --top 150')
            fprintf('%s\n', '    List feature flags with multiple labels.')
            fprintf('%s\n', '        az appconfig feature list --label test,prod,\0 -n MyAppConfiguration')
            fprintf('%s\n', 'For more specific examples, use: az find "az appconfig feature list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
