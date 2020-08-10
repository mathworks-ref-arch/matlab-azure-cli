classdef sync < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = sync()
            % az storage blob sync : Sync blobs recursively to a storage blob container.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az storage blob sync ';
        end
        function this = container(this, varargin)
            % The sync destination container.
            this.Options = [this.Options, '--container', varargin{:}];
        end

        function this = source(this, varargin)
            % The source file path to sync from.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = destination(this, varargin)
            % The destination path that will be appended to the blob name. Additional Flags Arguments
            this.Options = [this.Options, '--destination', varargin{:}];
        end

        function this = exclude_path(this, varargin)
            % Exclude these paths. This option does not support wildcard characters (*). Checks relative path prefix. For example: myFolder;myFolder/subDirName/file.pdf.
            this.Options = [this.Options, '--exclude-path', varargin{:}];
        end

        function this = exclude_pattern(this, varargin)
            % Exclude these files where the name matches the pattern list. For example: *.jpg;*.pdf;exactName. This option supports wildcard characters (*).
            this.Options = [this.Options, '--exclude-pattern', varargin{:}];
        end

        function this = include_pattern(this, varargin)
            % Include only these files where the name matches the pattern list. For example: *.jpg;*.pdf;exactName. This option supports wildcard characters (*). Storage Account Arguments
            this.Options = [this.Options, '--include-pattern', varargin{:}];
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
            fprintf('%s\n', '    az storage blob sync : Sync blobs recursively to a storage blob container.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container -c [Required] : The sync destination container.')
            fprintf('%s\n', '    --source -s    [Required] : The source file path to sync from.')
            fprintf('%s\n', '    --auth-mode               : The mode in which to run the command. "login" mode will directly use')
            fprintf('%s\n', '                                your login credentials for the authentication. The legacy "key" mode')
            fprintf('%s\n', '                                will attempt to query for an account key if no authentication')
            fprintf('%s\n', '                                parameters for the account are provided. Environment variable:')
            fprintf('%s\n', '                                AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
            fprintf('%s\n', '    --destination -d          : The destination path that will be appended to the blob name.')
            fprintf('%s\n', 'Additional Flags Arguments')
            fprintf('%s\n', '    --exclude-path            : Exclude these paths. This option does not support wildcard')
            fprintf('%s\n', '                                characters (*). Checks relative path prefix. For example:')
            fprintf('%s\n', '                                myFolder;myFolder/subDirName/file.pdf.')
            fprintf('%s\n', '    --exclude-pattern         : Exclude these files where the name matches the pattern list. For')
            fprintf('%s\n', '                                example: *.jpg;*.pdf;exactName. This option supports wildcard')
            fprintf('%s\n', '                                characters (*).')
            fprintf('%s\n', '    --include-pattern         : Include only these files where the name matches the pattern list.')
            fprintf('%s\n', '                                For example: *.jpg;*.pdf;exactName. This option supports wildcard')
            fprintf('%s\n', '                                characters (*).')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key             : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name            : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                storage account key or a SAS token. If neither are present, the')
            fprintf('%s\n', '                                command will try to query the storage account key using the')
            fprintf('%s\n', '                                authenticated Azure account. If a large number of storage commands')
            fprintf('%s\n', '                                are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string       : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token               : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                                storage account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Sync a single blob to a container.')
            fprintf('%s\n', '        az storage blob sync -c mycontainer -s "path/to/file" -d NewBlob')
            fprintf('%s\n', '    Sync a directory to a container.')
            fprintf('%s\n', '        az storage blob sync -c mycontainer --account-name mystorageccount --account-key 00000000 -s')
            fprintf('%s\n', '        "path/to/directory"')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob sync"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class sync 
