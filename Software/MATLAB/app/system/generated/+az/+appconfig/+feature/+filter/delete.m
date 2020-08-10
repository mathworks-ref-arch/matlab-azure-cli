classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az appconfig feature filter delete : Delete a filter from a feature flag.
            % Command group 'appconfig feature' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az appconfig feature filter delete ';
        end
        function this = feature(this, varargin)
            % Name of the feature from which you want to delete the filter.
            this.Options = [this.Options, '--feature', varargin{:}];
        end

        function this = all(this, varargin)
            % Delete all filters associated with a feature flag.
            this.Options = [this.Options, '--all', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Combination of access key and endpoint of App Configuration. Can be found using 'az appconfig credential list'. Users can preset it using `az configure --defaults appconfig_connection_string=<connection_string>` or environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = filter_name(this, varargin)
            % Name of the filter to be deleted.
            this.Options = [this.Options, '--filter-name', varargin{:}];
        end

        function this = index(this, varargin)
            % Zero-based index of the filter to be deleted in case there are multiple instances with same filter name.
            this.Options = [this.Options, '--index', varargin{:}];
        end

        function this = label(this, varargin)
            % If no label specified, delete from the feature flag with null label by default.
            this.Options = [this.Options, '--label', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the App Configuration. You can configure the default name using `az configure --defaults app_configuration_store=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            fprintf('%s\n', '    az appconfig feature filter delete : Delete a filter from a feature flag.')
            fprintf('%s\n', '        Command group ''appconfig feature'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --feature [Required] : Name of the feature from which you want to delete the filter.')
            fprintf('%s\n', '    --all                : Delete all filters associated with a feature flag.')
            fprintf('%s\n', '    --connection-string  : Combination of access key and endpoint of App Configuration. Can be found')
            fprintf('%s\n', '                           using ''az appconfig credential list''. Users can preset it using `az')
            fprintf('%s\n', '                           configure --defaults appconfig_connection_string=<connection_string>` or')
            fprintf('%s\n', '                           environment variable with the name AZURE_APPCONFIG_CONNECTION_STRING.')
            fprintf('%s\n', '    --filter-name        : Name of the filter to be deleted.')
            fprintf('%s\n', '    --index              : Zero-based index of the filter to be deleted in case there are multiple')
            fprintf('%s\n', '                           instances with same filter name.')
            fprintf('%s\n', '    --label              : If no label specified, delete from the feature flag with null label by')
            fprintf('%s\n', '                           default.')
            fprintf('%s\n', '    --name -n            : Name of the App Configuration. You can configure the default name using')
            fprintf('%s\n', '                           `az configure --defaults app_configuration_store=<name>`.')
            fprintf('%s\n', '    --yes -y             : Do not prompt for confirmation.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Delete a filter from a feature using App Configuration name without confirmation.')
            fprintf('%s\n', '        az appconfig feature filter delete -n MyAppConfiguration --feature color --filter-name')
            fprintf('%s\n', '        MyFilter --yes')
            fprintf('%s\n', '    Delete a filter from a feature when you have multiple filters with that same name.')
            fprintf('%s\n', '        az appconfig feature filter delete --feature color --filter-name MyFilter --index 2')
            fprintf('%s\n', '        --connection-string Endpoint=https://contoso.azconfig.io;Id=xxx;Secret=xxx')
            fprintf('%s\n', '    Delete all filters of a feature using App Configuration name without confirmation.')
            fprintf('%s\n', '        az appconfig feature filter delete -n MyAppConfiguration --feature color --label MyLabel')
            fprintf('%s\n', '        --all --yes')
            fprintf('%s\n', 'For more specific examples, use: az find "az appconfig feature filter delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
