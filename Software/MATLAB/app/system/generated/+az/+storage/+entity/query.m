classdef query < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = query()
            % az storage entity query : List entities which satisfy a query.
            this.BaseCmd = 'az storage entity query ';
        end
        function this = table_name(this, varargin)
            % The name of the table to query.
            this.Options = [this.Options, '--table-name', varargin{:}];
        end

        function this = accept(this, varargin)
            % Specifies how much metadata to include in the response payload. Allowed values: full, minimal, none.  Default: minimal.
            this.Options = [this.Options, '--accept', varargin{:}];
        end

        function this = filter(this, varargin)
            % Returns only entities that satisfy the specified filter. Note that no more than 15 discrete comparisons are permitted within a $filter string. See http://msdn.microsoft.com/en- us/library/windowsazure/dd894031.aspx for more information on constructing filters.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = marker(this, varargin)
            % Space-separated list of key=value pairs. Must contain a nextpartitionkey and a nextrowkey. This value can be retrieved from the next_marker field of a previous generator object if max_results was specified and that generator has finished enumerating results. If specified, this generator will begin returning results from the point where the previous generator stopped.
            this.Options = [this.Options, '--marker', varargin{:}];
        end

        function this = num_results(this, varargin)
            % The maximum number of entities to return.
            this.Options = [this.Options, '--num-results', varargin{:}];
        end

        function this = select(this, varargin)
            % Space-separated list of properties to return for each entity.
            this.Options = [this.Options, '--select', varargin{:}];
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

        function this = opt_query(this, varargin)
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
            fprintf('%s\n', '    az storage entity query : List entities which satisfy a query.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --table-name -t [Required] : The name of the table to query.')
            fprintf('%s\n', '    --accept                   : Specifies how much metadata to include in the response payload.')
            fprintf('%s\n', '                                 Allowed values: full, minimal, none.  Default: minimal.')
            fprintf('%s\n', '    --filter                   : Returns only entities that satisfy the specified filter. Note that')
            fprintf('%s\n', '                                 no more than 15 discrete comparisons are permitted within a $filter')
            fprintf('%s\n', '                                 string. See http://msdn.microsoft.com/en-')
            fprintf('%s\n', '                                 us/library/windowsazure/dd894031.aspx for more information on')
            fprintf('%s\n', '                                 constructing filters.')
            fprintf('%s\n', '    --marker                   : Space-separated list of key=value pairs. Must contain a')
            fprintf('%s\n', '                                 nextpartitionkey and a nextrowkey.')
            fprintf('%s\n', '        This value can be retrieved from the next_marker field of a previous generator object if')
            fprintf('%s\n', '        max_results was specified and that generator has finished enumerating results. If specified,')
            fprintf('%s\n', '        this generator will begin returning results from the point where the previous generator')
            fprintf('%s\n', '        stopped.')
            fprintf('%s\n', '    --num-results              : The maximum number of entities to return.')
            fprintf('%s\n', '    --select                   : Space-separated list of properties to return for each entity.')
            fprintf('%s\n', '    --timeout                  : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key              : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                 account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name             : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                 storage account key or a SAS token. If neither are present, the')
            fprintf('%s\n', '                                 command will try to query the storage account key using the')
            fprintf('%s\n', '                                 authenticated Azure account. If a large number of storage commands')
            fprintf('%s\n', '                                 are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string        : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                                 storage account name. Environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List entities which satisfy a query. (autogenerated)')
            fprintf('%s\n', '        az storage entity query --table-name MyTable')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage entity query"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class query 
