classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az storage logging update : Update logging settings for a storage account.
            this.BaseCmd = 'az storage logging update ';
        end
        function this = log(this, varargin)
            % The operations for which to enable logging: (r)ead (w)rite (d)elete. Can be combined.
            this.Options = [this.Options, '--log', varargin{:}];
        end

        function this = retention(this, varargin)
            % Number of days for which to retain logs. 0 to disable.
            this.Options = [this.Options, '--retention', varargin{:}];
        end

        function this = services(this, varargin)
            % The storage service(s) for which to update logging info: (b)lob (q)ueue (t)able. Can be combined.
            this.Options = [this.Options, '--services', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = version(this, varargin)
            % Version of the logging schema. Storage Account Arguments
            this.Options = [this.Options, '--version', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage logging update"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage logging update : Update logging settings for a storage account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --log       [Required] : The operations for which to enable logging: (r)ead (w)rite (d)elete.')
            fprintf('%s\n', '                             Can be combined.')
            fprintf('%s\n', '    --retention [Required] : Number of days for which to retain logs. 0 to disable.')
            fprintf('%s\n', '    --services  [Required] : The storage service(s) for which to update logging info: (b)lob (q)ueue')
            fprintf('%s\n', '                             (t)able. Can be combined.')
            fprintf('%s\n', '    --timeout              : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', '    --version              : Version of the logging schema.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az storage logging update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
