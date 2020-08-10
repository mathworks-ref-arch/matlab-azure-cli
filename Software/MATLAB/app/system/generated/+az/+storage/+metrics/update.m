classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az storage metrics update : Update metrics settings for a storage account.
            this.BaseCmd = 'az storage metrics update ';
        end
        function this = retention(this, varargin)
            % Number of days for which to retain metrics. 0 to disable. Applies to both hour and minute metrics if both are specified.
            this.Options = [this.Options, '--retention', varargin{:}];
        end

        function this = services(this, varargin)
            % The storage services from which to retrieve metrics info: (b)lob (q)ueue (t)able. Can be combined.
            this.Options = [this.Options, '--services', varargin{:}];
        end

        function this = api(this, varargin)
            % Specify whether to include API in metrics. Applies to both hour and minute metrics if both are specified. Must be specified if hour or minute metrics are enabled and being updated.  Allowed values: false, true.
            this.Options = [this.Options, '--api', varargin{:}];
        end

        function this = hour(this, varargin)
            % Update the hourly metrics.  Allowed values: false, true.
            this.Options = [this.Options, '--hour', varargin{:}];
        end

        function this = minute(this, varargin)
            % Update the by-minute metrics.  Allowed values: false, true.
            this.Options = [this.Options, '--minute', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Storage Account Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = account_key(this, varargin)
            % Storage account key. Must be used in conjunction with storage account name. Environment variable: AZURE_STORAGE_KEY.
            this.Options = [this.Options, '--account-key', varargin{:}];
        end

        function this = account_name(this, varargin)
            % Storage account name. Related environment variable: AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either storage account key or a SAS token. If neither are present, the command will try to query the storage account key using the authenticated Azure account. If a large number of storage commands are executed the API quota may be hit.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = connection_string(this, varargin)
            % Storage account connection string. Environment variable: AZURE_STORAGE_CONNECTION_STRING.
            this.Options = [this.Options, '--connection-string', varargin{:}];
        end

        function this = sas_token(this, varargin)
            % A Shared Access Signature (SAS). Must be used in conjunction with storage account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.
            this.Options = [this.Options, '--sas-token', varargin{:}];
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
            fprintf('%s\n', '    az storage metrics update : Update metrics settings for a storage account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --retention [Required] : Number of days for which to retain metrics. 0 to disable. Applies to')
            fprintf('%s\n', '                             both hour and minute metrics if both are specified.')
            fprintf('%s\n', '    --services  [Required] : The storage services from which to retrieve metrics info: (b)lob')
            fprintf('%s\n', '                             (q)ueue (t)able. Can be combined.')
            fprintf('%s\n', '    --api                  : Specify whether to include API in metrics. Applies to both hour and')
            fprintf('%s\n', '                             minute metrics if both are specified. Must be specified if hour or')
            fprintf('%s\n', '                             minute metrics are enabled and being updated.  Allowed values: false,')
            fprintf('%s\n', '                             true.')
            fprintf('%s\n', '    --hour                 : Update the hourly metrics.  Allowed values: false, true.')
            fprintf('%s\n', '    --minute               : Update the by-minute metrics.  Allowed values: false, true.')
            fprintf('%s\n', '    --timeout              : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key          : Storage account key. Must be used in conjunction with storage account')
            fprintf('%s\n', '                             name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name         : Storage account name. Related environment variable:')
            fprintf('%s\n', '                             AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either storage')
            fprintf('%s\n', '                             account key or a SAS token. If neither are present, the command will')
            fprintf('%s\n', '                             try to query the storage account key using the authenticated Azure')
            fprintf('%s\n', '                             account. If a large number of storage commands are executed the API')
            fprintf('%s\n', '                             quota may be hit.')
            fprintf('%s\n', '    --connection-string    : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                             AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token            : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                             storage account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update metrics settings for a storage account. (autogenerated)')
            fprintf('%s\n', '        az storage metrics update --account-name MyAccount --api true --hour true --minute true')
            fprintf('%s\n', '        --retention 10 --services bfqt')
            fprintf('%s\n', '    Update metrics settings for a storage account. (autogenerated)')
            fprintf('%s\n', '        az storage metrics update --api true --connection-string $connectionString --hour true')
            fprintf('%s\n', '        --minute true --retention 10 --services bfqt')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage metrics update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
