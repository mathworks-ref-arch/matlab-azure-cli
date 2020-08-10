classdef remove < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove()
            % az storage remove : Delete blobs or files from Azure Storage.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az storage remove ';
        end
        function this = container_name(this, varargin)
            % The container name.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The blob name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = path(this, varargin)
            % The path to the file within the file share.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = recursive(this, varargin)
            % Look into sub-directories recursively.
            this.Options = [this.Options, '--recursive', varargin{:}];
        end

        function this = share_name(this, varargin)
            % The file share name. Additional Flags Arguments
            this.Options = [this.Options, '--share-name', varargin{:}];
        end

        function this = exclude_path(this, varargin)
            % Exclude these paths. This option does not support wildcard characters (*). Checks relative path prefix. For example: myFolder;myFolder/subDirName/file.pdf.
            this.Options = [this.Options, '--exclude-path', varargin{:}];
        end

        function this = exclude_pattern(this, varargin)
            % Exclude these files where the name matches the pattern list. For example: *.jpg;*.pdf;exactName. This option supports wildcard characters (*).
            this.Options = [this.Options, '--exclude-pattern', varargin{:}];
        end

        function this = include_path(this, varargin)
            % Include only these paths. This option does not support wildcard characters (*). Checks relative path prefix. For example:myFolder;myFolder/subDirName/file.pdf.
            this.Options = [this.Options, '--include-path', varargin{:}];
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
            fprintf('%s\n', '    az storage remove : Delete blobs or files from Azure Storage.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container-name -c : The container name.')
            fprintf('%s\n', '    --name -n           : The blob name.')
            fprintf('%s\n', '    --path -p           : The path to the file within the file share.')
            fprintf('%s\n', '    --recursive -r      : Look into sub-directories recursively.')
            fprintf('%s\n', '    --share-name -s     : The file share name.')
            fprintf('%s\n', 'Additional Flags Arguments')
            fprintf('%s\n', '    --exclude-path      : Exclude these paths. This option does not support wildcard characters (*).')
            fprintf('%s\n', '                          Checks relative path prefix. For example:')
            fprintf('%s\n', '                          myFolder;myFolder/subDirName/file.pdf.')
            fprintf('%s\n', '    --exclude-pattern   : Exclude these files where the name matches the pattern list. For example:')
            fprintf('%s\n', '                          *.jpg;*.pdf;exactName. This option supports wildcard characters (*).')
            fprintf('%s\n', '    --include-path      : Include only these paths. This option does not support wildcard characters')
            fprintf('%s\n', '                          (*). Checks relative path prefix. For')
            fprintf('%s\n', '                          example:myFolder;myFolder/subDirName/file.pdf.')
            fprintf('%s\n', '    --include-pattern   : Include only these files where the name matches the pattern list. For')
            fprintf('%s\n', '                          example: *.jpg;*.pdf;exactName. This option supports wildcard characters')
            fprintf('%s\n', '                          (*).')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Remove a single blob.')
            fprintf('%s\n', '        az storage remove -c MyContainer -n MyBlob')
            fprintf('%s\n', '    Remove an entire virtual directory.')
            fprintf('%s\n', '        az storage remove -c MyContainer -n path/to/directory --recursive')
            fprintf('%s\n', '    Remove only the top blobs inside a virtual directory but not its sub-directories.')
            fprintf('%s\n', '        az storage remove -c MyContainer --recursive')
            fprintf('%s\n', '    Remove all the blobs in a Storage Container.')
            fprintf('%s\n', '        az storage remove -c MyContainer -n path/to/directory')
            fprintf('%s\n', '    Remove a subset of blobs in a virtual directory (For example, only jpg and pdf files, or if the')
            fprintf('%s\n', '    blob name is "exactName" and file names don''t start with "test").')
            fprintf('%s\n', '        az storage remove -c MyContainer --include-path path/to/directory --include-pattern')
            fprintf('%s\n', '        "*.jpg;*.pdf;exactName" --exclude-pattern "test*" --recursive')
            fprintf('%s\n', '    Remove an entire virtual directory but exclude certain blobs from the scope (For example, every')
            fprintf('%s\n', '    blob that starts with foo or ends with bar).')
            fprintf('%s\n', '        az storage remove -c MyContainer --include-path path/to/directory --exclude-pattern')
            fprintf('%s\n', '        "foo*;*bar" --recursive')
            fprintf('%s\n', '    Remove a single file.')
            fprintf('%s\n', '        az storage remove -s MyShare -p MyFile')
            fprintf('%s\n', '    Remove an entire directory.')
            fprintf('%s\n', '        az storage remove -s MyShare -p path/to/directory --recursive')
            fprintf('%s\n', '    Remove all the files in a Storage File Share.')
            fprintf('%s\n', '        az storage remove -s MyShare --recursive')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage remove"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove 
