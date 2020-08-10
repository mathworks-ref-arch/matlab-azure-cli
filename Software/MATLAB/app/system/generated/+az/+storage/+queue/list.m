classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az storage queue list : List queues in a storage account.
            this.BaseCmd = 'az storage queue list ';
        end
        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE. Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = include_metadata(this, varargin)
            % Specifies that container metadata be returned in the response.
            this.Options = [this.Options, '--include-metadata', varargin{:}];
        end

        function this = marker(this, varargin)
            % An opaque continuation token. This value can be retrieved from the next_marker field of a previous generator object if num_results was specified and that generator has finished enumerating results. If specified, this generator will begin returning results from the point where the previous generator stopped.
            this.Options = [this.Options, '--marker', varargin{:}];
        end

        function this = num_results(this, varargin)
            % The maximum number of queues to return.
            this.Options = [this.Options, '--num-results', varargin{:}];
        end

        function this = prefix(this, varargin)
            % Filters the results to return only queues with names that begin with the specified prefix.
            this.Options = [this.Options, '--prefix', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage queue list"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage queue list : List queues in a storage account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --auth-mode         : The mode in which to run the command. "login" mode will directly use your')
            fprintf('%s\n', '                          login credentials for the authentication. The legacy "key" mode will')
            fprintf('%s\n', '                          attempt to query for an account key if no authentication parameters for')
            fprintf('%s\n', '                          the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.')
            fprintf('%s\n', '                          Allowed values: key, login.')
            fprintf('%s\n', '    --include-metadata  : Specifies that container metadata be returned in the response.')
            fprintf('%s\n', '    --marker            : An opaque continuation token. This value can be retrieved from the')
            fprintf('%s\n', '                          next_marker field of a previous generator object if num_results was')
            fprintf('%s\n', '                          specified and that generator has finished enumerating results. If')
            fprintf('%s\n', '                          specified, this generator will begin returning results from the point')
            fprintf('%s\n', '                          where the previous generator stopped.')
            fprintf('%s\n', '    --num-results       : The maximum number of queues to return.')
            fprintf('%s\n', '    --prefix            : Filters the results to return only queues with names that begin with the')
            fprintf('%s\n', '                          specified prefix.')
            fprintf('%s\n', '    --timeout           : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key       : Storage account key. Must be used in conjunction with storage account')
            fprintf('%s\n', '                          name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name      : Storage account name. Related environment variable: AZURE_STORAGE_ACCOUNT.')
            fprintf('%s\n', '                          Must be used in conjunction with either storage account key or a SAS')
            fprintf('%s\n', '                          token. If neither are present, the command will try to query the storage')
            fprintf('%s\n', '                          account key using the authenticated Azure account. If a large number of')
            fprintf('%s\n', '                          storage commands are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                          AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token         : A Shared Access Signature (SAS). Must be used in conjunction with storage')
            fprintf('%s\n', '                          account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az storage queue list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
