classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az storage cors add : Add a CORS rule to a storage account.
            this.BaseCmd = 'az storage cors add ';
        end
        function this = methods(this, varargin)
            % Space-separated list of HTTP methods allowed to be executed by the origin.  Allowed values: DELETE, GET, HEAD, MERGE, OPTIONS, POST, PUT.
            this.Options = [this.Options, '--methods', varargin{:}];
        end

        function this = origins(this, varargin)
            % Space-separated list of origin domains that will be allowed via CORS, or '*' to allow all domains.
            this.Options = [this.Options, '--origins', varargin{:}];
        end

        function this = services(this, varargin)
            % The storage service(s) to add rules to. Allowed options are: (b)lob, (f)ile, (q)ueue, (t)able. Can be combined.
            this.Options = [this.Options, '--services', varargin{:}];
        end

        function this = allowed_headers(this, varargin)
            % Space-separated list of response headers allowed to be part of the cross-origin request.
            this.Options = [this.Options, '--allowed-headers', varargin{:}];
        end

        function this = exposed_headers(this, varargin)
            % Space-separated list of response headers to expose to CORS clients.
            this.Options = [this.Options, '--exposed-headers', varargin{:}];
        end

        function this = max_age(this, varargin)
            % The maximum number of seconds the client/browser should cache a preflight response.
            this.Options = [this.Options, '--max-age', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage cors add"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage cors add : Add a CORS rule to a storage account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --methods  [Required] : Space-separated list of HTTP methods allowed to be executed by the')
            fprintf('%s\n', '                            origin.  Allowed values: DELETE, GET, HEAD, MERGE, OPTIONS, POST, PUT.')
            fprintf('%s\n', '    --origins  [Required] : Space-separated list of origin domains that will be allowed via CORS, or')
            fprintf('%s\n', '                            ''*'' to allow all domains.')
            fprintf('%s\n', '    --services [Required] : The storage service(s) to add rules to. Allowed options are: (b)lob,')
            fprintf('%s\n', '                            (f)ile, (q)ueue, (t)able. Can be combined.')
            fprintf('%s\n', '    --allowed-headers     : Space-separated list of response headers allowed to be part of the')
            fprintf('%s\n', '                            cross-origin request.')
            fprintf('%s\n', '    --exposed-headers     : Space-separated list of response headers to expose to CORS clients.')
            fprintf('%s\n', '    --max-age             : The maximum number of seconds the client/browser should cache a')
            fprintf('%s\n', '                            preflight response.')
            fprintf('%s\n', '    --timeout             : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key         : Storage account key. Must be used in conjunction with storage account')
            fprintf('%s\n', '                            name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name        : Storage account name. Related environment variable:')
            fprintf('%s\n', '                            AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either storage')
            fprintf('%s\n', '                            account key or a SAS token. If neither are present, the command will try')
            fprintf('%s\n', '                            to query the storage account key using the authenticated Azure account.')
            fprintf('%s\n', '                            If a large number of storage commands are executed the API quota may be')
            fprintf('%s\n', '                            hit.')
            fprintf('%s\n', '    --connection-string   : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                            AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token           : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                            storage account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage cors add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
