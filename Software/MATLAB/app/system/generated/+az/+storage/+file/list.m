classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az storage file list : List files and directories in a share.
            this.BaseCmd = 'az storage file list ';
        end
        function this = share_name(this, varargin)
            % The file share name.
            this.Options = [this.Options, '--share-name', varargin{:}];
        end

        function this = exclude_dir(this, varargin)
            % List only files in the given share.
            this.Options = [this.Options, '--exclude-dir', varargin{:}];
        end

        function this = marker(this, varargin)
            % An opaque continuation token. This value can be retrieved from the next_marker field of a previous generator object if num_results was specified and that generator has finished enumerating results. If specified, this generator will begin returning results from the point where the previous generator stopped.
            this.Options = [this.Options, '--marker', varargin{:}];
        end

        function this = num_results(this, varargin)
            % Specifies the maximum number of results to return. Provide "*" to return all.  Default: 5000.
            this.Options = [this.Options, '--num-results', varargin{:}];
        end

        function this = path(this, varargin)
            % The directory path within the file share.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = snapshot(this, varargin)
            % A string that represents the snapshot version, if applicable.
            this.Options = [this.Options, '--snapshot', varargin{:}];
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
            fprintf('%s\n', '    az storage file list : List files and directories in a share.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --share-name -s [Required] : The file share name.')
            fprintf('%s\n', '    --exclude-dir              : List only files in the given share.')
            fprintf('%s\n', '    --marker                   : An opaque continuation token. This value can be retrieved from the')
            fprintf('%s\n', '                                 next_marker field of a previous generator object if num_results was')
            fprintf('%s\n', '                                 specified and that generator has finished enumerating results. If')
            fprintf('%s\n', '                                 specified, this generator will begin returning results from the')
            fprintf('%s\n', '                                 point where the previous generator stopped.')
            fprintf('%s\n', '    --num-results              : Specifies the maximum number of results to return. Provide "*" to')
            fprintf('%s\n', '                                 return all.  Default: 5000.')
            fprintf('%s\n', '    --path -p                  : The directory path within the file share.')
            fprintf('%s\n', '    --snapshot                 : A string that represents the snapshot version, if applicable.')
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
            fprintf('%s\n', '    List files and directories in a share. (autogenerated)')
            fprintf('%s\n', '        az storage file list --share-name MyShare')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage file list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
