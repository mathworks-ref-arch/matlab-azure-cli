classdef download_batch < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = download_batch()
            % az storage blob download-batch : Download blobs from a blob container recursively.
            this.BaseCmd = 'az storage blob download-batch ';
        end
        function this = destination(this, varargin)
            % The existing destination folder for this download operation.
            this.Options = [this.Options, '--destination', varargin{:}];
        end

        function this = source(this, varargin)
            % The blob container from where the files will be downloaded. The source can be the container URL or the container name. When the source is the container URL, the storage account name will be parsed from the URL.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = dryrun(this, varargin)
            % Show the summary of the operations to be taken instead of actually downloading the file(s).
            this.Options = [this.Options, '--dryrun', varargin{:}];
        end

        function this = max_connections(this, varargin)
            % Maximum number of parallel connections to use when the blob size exceeds 64MB.  Default: 2.
            this.Options = [this.Options, '--max-connections', varargin{:}];
        end

        function this = no_progress(this, varargin)
            % Include this flag to disable progress reporting for the command.
            this.Options = [this.Options, '--no-progress', varargin{:}];
        end

        function this = pattern(this, varargin)
            % The pattern used for globbing files or blobs in the source. The supported patterns are '*', '?', '[seq]', and '[!seq]'. For more information, please refer to https://docs.python.org/3.7/library/fnmatch.html. When you use '*' in --pattern, it will match any character including the the directory separator '/'.
            this.Options = [this.Options, '--pattern', varargin{:}];
        end

        function this = socket_timeout(this, varargin)
            % The socket timeout(secs), used by the service to regulate data flow. Storage Account Arguments
            this.Options = [this.Options, '--socket-timeout', varargin{:}];
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
            fprintf('%s\n', '    az storage blob download-batch : Download blobs from a blob container recursively.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination -d [Required] : The existing destination folder for this download operation.')
            fprintf('%s\n', '    --source -s      [Required] : The blob container from where the files will be downloaded.')
            fprintf('%s\n', '        The source can be the container URL or the container name. When the source is the container')
            fprintf('%s\n', '        URL, the storage account name will be parsed from the URL.')
            fprintf('%s\n', '    --auth-mode                 : The mode in which to run the command. "login" mode will directly')
            fprintf('%s\n', '                                  use your login credentials for the authentication. The legacy')
            fprintf('%s\n', '                                  "key" mode will attempt to query for an account key if no')
            fprintf('%s\n', '                                  authentication parameters for the account are provided.')
            fprintf('%s\n', '                                  Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values:')
            fprintf('%s\n', '                                  key, login.')
            fprintf('%s\n', '    --dryrun                    : Show the summary of the operations to be taken instead of actually')
            fprintf('%s\n', '                                  downloading the file(s).')
            fprintf('%s\n', '    --max-connections           : Maximum number of parallel connections to use when the blob size')
            fprintf('%s\n', '                                  exceeds 64MB.  Default: 2.')
            fprintf('%s\n', '    --no-progress               : Include this flag to disable progress reporting for the command.')
            fprintf('%s\n', '    --pattern                   : The pattern used for globbing files or blobs in the source. The')
            fprintf('%s\n', '                                  supported patterns are ''*'', ''?'', ''[seq]'', and ''[!seq]''. For more')
            fprintf('%s\n', '                                  information, please refer to')
            fprintf('%s\n', '                                  https://docs.python.org/3.7/library/fnmatch.html.')
            fprintf('%s\n', '        When you use ''*'' in --pattern, it will match any character including the the directory')
            fprintf('%s\n', '        separator ''/''.')
            fprintf('%s\n', '    --socket-timeout            : The socket timeout(secs), used by the service to regulate data')
            fprintf('%s\n', '                                  flow.')
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
            fprintf('%s\n', '    Download all blobs that end with .py')
            fprintf('%s\n', '        az storage blob download-batch -d . --pattern *.py -s mycontainer --account-name')
            fprintf('%s\n', '        mystorageaccount --account-key 00000000')
            fprintf('%s\n', '    Download all blobs in a directory named "dir" from container named "mycontainer".')
            fprintf('%s\n', '        az storage blob download-batch -d . -s mycontainer --pattern dir/*')
            fprintf('%s\n', '    Download all blobs with the format ''cli-2018-xx-xx.txt'' or ''cli-2019-xx-xx.txt'' in container to')
            fprintf('%s\n', '    current path.')
            fprintf('%s\n', '        az storage blob download-batch -d . -s mycontainer --pattern cli-201[89]-??-??.txt')
            fprintf('%s\n', '    Download all blobs with the format ''cli-201x-xx-xx.txt'' except cli-2018-xx-xx.txt'' and')
            fprintf('%s\n', '    ''cli-2019-xx-xx.txt'' in container to current path.')
            fprintf('%s\n', '        az storage blob download-batch -d . -s mycontainer --pattern cli-201[!89]-??-??.txt')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob download-batch"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class download_batch 
