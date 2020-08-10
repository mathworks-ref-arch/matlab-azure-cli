classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az storage fs file list : List files and directories in ADLS Gen2 file system.
            this.BaseCmd = 'az storage fs file list ';
        end
        function this = file_system(this, varargin)
            % File system name.
            this.Options = [this.Options, '--file-system', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = exclude_dir(this, varargin)
            % List only files in the given file system.
            this.Options = [this.Options, '--exclude-dir', varargin{:}];
        end

        function this = marker(this, varargin)
            % An opaque continuation token. This value can be retrieved from the next_marker field of a previous generator object. If specified, this generator will begin returning results from this point.
            this.Options = [this.Options, '--marker', varargin{:}];
        end

        function this = num_results(this, varargin)
            % Specify the maximum number of results to return. If the request does not specify num_results or specifies a value greater than 5,000, the server will return up to 5,000 items.  Default: 5000.
            this.Options = [this.Options, '--num-results', varargin{:}];
        end

        function this = path(this, varargin)
            % Filter the results to return only paths under the specified path.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = recursive(this, varargin)
            % Look into sub-directories recursively when set to true.  Allowed values: false, true.  Default: 1.
            this.Options = [this.Options, '--recursive', varargin{:}];
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
            fprintf('%s\n', '    az storage fs file list : List files and directories in ADLS Gen2 file system.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --file-system -f [Required] : File system name.')
            fprintf('%s\n', '    --auth-mode                 : The mode in which to run the command. "login" mode will directly')
            fprintf('%s\n', '                                  use your login credentials for the authentication. The legacy')
            fprintf('%s\n', '                                  "key" mode will attempt to query for an account key if no')
            fprintf('%s\n', '                                  authentication parameters for the account are provided.')
            fprintf('%s\n', '                                  Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values:')
            fprintf('%s\n', '                                  key, login.')
            fprintf('%s\n', '    --exclude-dir               : List only files in the given file system.')
            fprintf('%s\n', '    --marker                    : An opaque continuation token. This value can be retrieved from the')
            fprintf('%s\n', '                                  next_marker field of a previous generator object. If specified,')
            fprintf('%s\n', '                                  this generator will begin returning results from this point.')
            fprintf('%s\n', '    --num-results               : Specify the maximum number of results to return. If the request')
            fprintf('%s\n', '                                  does not specify num_results or specifies a value greater than')
            fprintf('%s\n', '                                  5,000, the server will return up to 5,000 items.  Default: 5000.')
            fprintf('%s\n', '    --path                      : Filter the results to return only paths under the specified path.')
            fprintf('%s\n', '    --recursive                 : Look into sub-directories recursively when set to true.  Allowed')
            fprintf('%s\n', '                                  values: false, true.  Default: 1.')
            fprintf('%s\n', '    --timeout                   : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key               : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                  account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name              : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                  AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                  storage account key or a SAS token. If neither are present, the')
            fprintf('%s\n', '                                  command will try to query the storage account key using the')
            fprintf('%s\n', '                                  authenticated Azure account. If a large number of storage commands')
            fprintf('%s\n', '                                  are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string         : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                  AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                 : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                                  storage account name. Environment variable:')
            fprintf('%s\n', '                                  AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List files and directories in ADLS Gen2 file system.')
            fprintf('%s\n', '        az storage fs file list -f fsname --account-name myadlsaccount --account-key 0000-0000')
            fprintf('%s\n', '    List files in ADLS Gen2 file system.')
            fprintf('%s\n', '        az storage fs file list --exclude-dir -f fsname --account-name myadlsaccount --account-key')
            fprintf('%s\n', '        0000-0000')
            fprintf('%s\n', '    List files and directories in a specified path.')
            fprintf('%s\n', '        az storage fs file list --path dir -f fsname --account-name myadlsaccount --account-key')
            fprintf('%s\n', '        0000-0000')
            fprintf('%s\n', '    List files and directories from a specific marker.')
            fprintf('%s\n', '        az storage fs file list --marker "VBaS6LvPufaqrTANTQvbmV3dHJ5FgAAAA==" -f fsname --account-')
            fprintf('%s\n', '        name myadlsaccount --account-key 0000-0000')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage fs file list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
