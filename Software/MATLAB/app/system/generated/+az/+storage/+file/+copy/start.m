classdef start < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = start()
            % az storage file copy start : Copy a file asynchronously.
            this.BaseCmd = 'az storage file copy start ';
        end
        function this = destination_path(this, varargin)
            % The path to the file within the file share.
            this.Options = [this.Options, '--destination-path', varargin{:}];
        end

        function this = destination_share(this, varargin)
            % Name of the destination share. The share must exist.
            this.Options = [this.Options, '--destination-share', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs. This overwrites any existing metadata.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Copy Source Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = file_snapshot(this, varargin)
            % The file snapshot for the source storage account.
            this.Options = [this.Options, '--file-snapshot', varargin{:}];
        end

        function this = source_account_key(this, varargin)
            % The storage account key of the source blob.
            this.Options = [this.Options, '--source-account-key', varargin{:}];
        end

        function this = source_account_name(this, varargin)
            % The storage account name of the source blob.
            this.Options = [this.Options, '--source-account-name', varargin{:}];
        end

        function this = source_blob(this, varargin)
            % The blob name for the source storage account.
            this.Options = [this.Options, '--source-blob', varargin{:}];
        end

        function this = source_container(this, varargin)
            % The container name for the source storage account.
            this.Options = [this.Options, '--source-container', varargin{:}];
        end

        function this = source_path(this, varargin)
            % The file path for the source storage account.
            this.Options = [this.Options, '--source-path', varargin{:}];
        end

        function this = source_sas(this, varargin)
            % The shared access signature for the source storage account.
            this.Options = [this.Options, '--source-sas', varargin{:}];
        end

        function this = source_share(this, varargin)
            % The share name for the source storage account.
            this.Options = [this.Options, '--source-share', varargin{:}];
        end

        function this = source_snapshot(this, varargin)
            % The blob snapshot for the source storage account.
            this.Options = [this.Options, '--source-snapshot', varargin{:}];
        end

        function this = source_uri(this, varargin)
            % A URL of up to 2 KB in length that specifies an Azure file or blob. The value should be URL-encoded as it would appear in a request URI. If the source is in another account, the source must either be public or must be authenticated via a shared access signature. If the source is public, no authentication is required. Examples: https://myaccount.file.core.windows.net/myshare/mydir/myfile https://otheraccount.file.core.windows.net/myshare/mydir/myf ile?sastoken. Storage Account Arguments
            this.Options = [this.Options, '--source-uri', varargin{:}];
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
            fprintf('%s\n', '    az storage file copy start : Copy a file asynchronously.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination-path -p  [Required] : The path to the file within the file share.')
            fprintf('%s\n', '    --destination-share -s [Required] : Name of the destination share. The share must exist.')
            fprintf('%s\n', '    --metadata                        : Metadata in space-separated key=value pairs. This overwrites')
            fprintf('%s\n', '                                        any existing metadata.')
            fprintf('%s\n', '    --timeout                         : Request timeout in seconds. Applies to each call to the')
            fprintf('%s\n', '                                        service.')
            fprintf('%s\n', 'Copy Source Arguments')
            fprintf('%s\n', '    --file-snapshot                   : The file snapshot for the source storage account.')
            fprintf('%s\n', '    --source-account-key              : The storage account key of the source blob.')
            fprintf('%s\n', '    --source-account-name             : The storage account name of the source blob.')
            fprintf('%s\n', '    --source-blob                     : The blob name for the source storage account.')
            fprintf('%s\n', '    --source-container                : The container name for the source storage account.')
            fprintf('%s\n', '    --source-path                     : The file path for the source storage account.')
            fprintf('%s\n', '    --source-sas                      : The shared access signature for the source storage account.')
            fprintf('%s\n', '    --source-share                    : The share name for the source storage account.')
            fprintf('%s\n', '    --source-snapshot                 : The blob snapshot for the source storage account.')
            fprintf('%s\n', '    --source-uri -u                   : A URL of up to 2 KB in length that specifies an Azure file')
            fprintf('%s\n', '                                        or blob. The value should be URL-encoded as it would appear')
            fprintf('%s\n', '                                        in a request URI. If the source is in another account, the')
            fprintf('%s\n', '                                        source must either be public or must be authenticated via a')
            fprintf('%s\n', '                                        shared access signature. If the source is public, no')
            fprintf('%s\n', '                                        authentication is required. Examples:')
            fprintf('%s\n', '                                        https://myaccount.file.core.windows.net/myshare/mydir/myfile')
            fprintf('%s\n', '                                        https://otheraccount.file.core.windows.net/myshare/mydir/myf')
            fprintf('%s\n', '                                        ile?sastoken.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key                     : Storage account key. Must be used in conjunction with')
            fprintf('%s\n', '                                        storage account name. Environment variable:')
            fprintf('%s\n', '                                        AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name                    : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                        AZURE_STORAGE_ACCOUNT. Must be used in conjunction with')
            fprintf('%s\n', '                                        either storage account key or a SAS token. If neither are')
            fprintf('%s\n', '                                        present, the command will try to query the storage account')
            fprintf('%s\n', '                                        key using the authenticated Azure account. If a large number')
            fprintf('%s\n', '                                        of storage commands are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string               : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                        AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                       : A Shared Access Signature (SAS). Must be used in conjunction')
            fprintf('%s\n', '                                        with storage account name. Environment variable:')
            fprintf('%s\n', '                                        AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Copy a file asynchronously.')
            fprintf('%s\n', '        az storage file copy start --source-account-name srcaccount --source-account-key 00000000')
            fprintf('%s\n', '        --source-path <srcpath-to-file> --source-share srcshare --destination-path <destpath-to-')
            fprintf('%s\n', '        file> --destination-share destshare --account-name destaccount --account-key 00000000')
            fprintf('%s\n', '    Copy a file asynchronously from source uri to destination storage account with sas token.')
            fprintf('%s\n', '        az storage file copy start --source-uri')
            fprintf('%s\n', '        "https://srcaccount.file.core.windows.net/myshare/mydir/myfile?<sastoken>" --destination-')
            fprintf('%s\n', '        path <destpath-to-file> --destination-share destshare --account-name destaccount --sas-token')
            fprintf('%s\n', '        <destinaition-sas>')
            fprintf('%s\n', '    Copy a file asynchronously from file snapshot to destination storage account with sas token.')
            fprintf('%s\n', '        az storage file copy start --source-account-name srcaccount --source-account-key 00000000')
            fprintf('%s\n', '        --source-path <srcpath-to-file> --source-share srcshare --file-snapshot')
            fprintf('%s\n', '        "2020-03-02T13:51:54.0000000Z" --destination-path <destpath-to-file> --destination-share')
            fprintf('%s\n', '        destshare --account-name destaccount --sas-token <destinaition-sas>')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage file copy start"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class start 
