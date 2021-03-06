classdef move < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = move()
            % az storage fs file move : Move a file in ADLS Gen2 Account.
            this.BaseCmd = 'az storage fs file move ';
        end
        function this = file_system(this, varargin)
            % File system name.
            this.Options = [this.Options, '--file-system', varargin{:}];
        end

        function this = new_path(this, varargin)
            % The new path the users want to move to. The value must have the following format: "{filesystem}/{directory}/{subdirectory}/{file}".
            this.Options = [this.Options, '--new-path', varargin{:}];
        end

        function this = path(this, varargin)
            % The original file path users want to move in a file system.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = content_cache_control(this, varargin)
            % The cache control string.
            this.Options = [this.Options, '--content-cache-control', varargin{:}];
        end

        function this = content_disposition(this, varargin)
            % Conveys additional information about how to process the response payload, and can also be used to attach additional metadata.
            this.Options = [this.Options, '--content-disposition', varargin{:}];
        end

        function this = content_encoding(this, varargin)
            % The content encoding type.
            this.Options = [this.Options, '--content-encoding', varargin{:}];
        end

        function this = content_language(this, varargin)
            % The content language.
            this.Options = [this.Options, '--content-language', varargin{:}];
        end

        function this = content_md5(this, varargin)
            % The content's MD5 hash.
            this.Options = [this.Options, '--content-md5', varargin{:}];
        end

        function this = content_type(this, varargin)
            % The content MIME type. Storage Account Arguments
            this.Options = [this.Options, '--content-type', varargin{:}];
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
            fprintf('%s\n', '    az storage fs file move : Move a file in ADLS Gen2 Account.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --file-system -f [Required] : File system name.')
            fprintf('%s\n', '    --new-path       [Required] : The new path the users want to move to. The value must have the')
            fprintf('%s\n', '                                  following format:')
            fprintf('%s\n', '                                  "{filesystem}/{directory}/{subdirectory}/{file}".')
            fprintf('%s\n', '    --path -p        [Required] : The original file path users want to move in a file system.')
            fprintf('%s\n', '    --auth-mode                 : The mode in which to run the command. "login" mode will directly')
            fprintf('%s\n', '                                  use your login credentials for the authentication. The legacy')
            fprintf('%s\n', '                                  "key" mode will attempt to query for an account key if no')
            fprintf('%s\n', '                                  authentication parameters for the account are provided.')
            fprintf('%s\n', '                                  Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values:')
            fprintf('%s\n', '                                  key, login.')
            fprintf('%s\n', '    --content-cache-control     : The cache control string.')
            fprintf('%s\n', '    --content-disposition       : Conveys additional information about how to process the response')
            fprintf('%s\n', '                                  payload, and can also be used to attach additional metadata.')
            fprintf('%s\n', '    --content-encoding          : The content encoding type.')
            fprintf('%s\n', '    --content-language          : The content language.')
            fprintf('%s\n', '    --content-md5               : The content''s MD5 hash.')
            fprintf('%s\n', '    --content-type              : The content MIME type.')
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
            fprintf('%s\n', '    Move a file in ADLS Gen2 Account.')
            fprintf('%s\n', '        az storage fs file move --new-path new-fs/new-dir/b.txt -p dir/a.txt -f fsname --account-')
            fprintf('%s\n', '        name myadlsaccount --account-key 0000-0000')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage fs file move"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class move 
