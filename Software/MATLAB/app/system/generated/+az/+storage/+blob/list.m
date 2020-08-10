classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az storage blob list : List blobs in a given container.
            this.BaseCmd = 'az storage blob list ';
        end
        function this = container_name(this, varargin)
            % The container name.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = delimiter(this, varargin)
            % When the request includes this parameter, the operation returns a :class:`~azure.storage.blob.models.BlobPrefix` element in the result list that acts as a placeholder for all blobs whose names begin with the same substring up to the appearance of the delimiter character. The delimiter may be a single character or a string.
            this.Options = [this.Options, '--delimiter', varargin{:}];
        end

        function this = include(this, varargin)
            % Specifies additional datasets to include: (c)opy-info, (m)etadata, (s)napshots, (d)eleted-soft. Can be combined.
            this.Options = [this.Options, '--include', varargin{:}];
        end

        function this = marker(this, varargin)
            % An opaque continuation token. This value can be retrieved from the next_marker field of a previous generator object if num_results was specified and that generator has finished enumerating results. If specified, this generator will begin returning results from the point where the previous generator stopped.
            this.Options = [this.Options, '--marker', varargin{:}];
        end

        function this = num_results(this, varargin)
            % Specifies the maximum number of results to return. Provide "*" to return all.  Default: 5000.
            this.Options = [this.Options, '--num-results', varargin{:}];
        end

        function this = prefix(this, varargin)
            % Filters the results to return only blobs whose names begin with the specified prefix.
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
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage blob list : List blobs in a given container.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container-name -c [Required] : The container name.')
            fprintf('%s\n', '    --auth-mode                    : The mode in which to run the command. "login" mode will')
            fprintf('%s\n', '                                     directly use your login credentials for the authentication. The')
            fprintf('%s\n', '                                     legacy "key" mode will attempt to query for an account key if')
            fprintf('%s\n', '                                     no authentication parameters for the account are provided.')
            fprintf('%s\n', '                                     Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values:')
            fprintf('%s\n', '                                     key, login.')
            fprintf('%s\n', '    --delimiter                    : When the request includes this parameter, the operation returns')
            fprintf('%s\n', '                                     a :class:`~azure.storage.blob.models.BlobPrefix` element in the')
            fprintf('%s\n', '                                     result list that acts as a placeholder for all blobs whose')
            fprintf('%s\n', '                                     names begin with the same substring up to the appearance of the')
            fprintf('%s\n', '                                     delimiter character. The delimiter may be a single character or')
            fprintf('%s\n', '                                     a string.')
            fprintf('%s\n', '    --include                      : Specifies additional datasets to include: (c)opy-info,')
            fprintf('%s\n', '                                     (m)etadata, (s)napshots, (d)eleted-soft. Can be combined.')
            fprintf('%s\n', '    --marker                       : An opaque continuation token. This value can be retrieved from')
            fprintf('%s\n', '                                     the next_marker field of a previous generator object if')
            fprintf('%s\n', '                                     num_results was specified and that generator has finished')
            fprintf('%s\n', '                                     enumerating results. If specified, this generator will begin')
            fprintf('%s\n', '                                     returning results from the point where the previous generator')
            fprintf('%s\n', '                                     stopped.')
            fprintf('%s\n', '    --num-results                  : Specifies the maximum number of results to return. Provide "*"')
            fprintf('%s\n', '                                     to return all.  Default: 5000.')
            fprintf('%s\n', '    --prefix                       : Filters the results to return only blobs whose names begin with')
            fprintf('%s\n', '                                     the specified prefix.')
            fprintf('%s\n', '    --timeout                      : Request timeout in seconds. Applies to each call to the')
            fprintf('%s\n', '                                     service.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key                  : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                     account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name                 : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                     AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                     storage account key or a SAS token. If neither are present, the')
            fprintf('%s\n', '                                     command will try to query the storage account key using the')
            fprintf('%s\n', '                                     authenticated Azure account. If a large number of storage')
            fprintf('%s\n', '                                     commands are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string            : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                     AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                    : A Shared Access Signature (SAS). Must be used in conjunction')
            fprintf('%s\n', '                                     with storage account name. Environment variable:')
            fprintf('%s\n', '                                     AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List all storage blobs in a container whose names start with ''foo''; will match names such as')
            fprintf('%s\n', '    ''foo'', ''foobar'', and ''foo/bar''')
            fprintf('%s\n', '        az storage blob list -c MyContainer --prefix foo')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
