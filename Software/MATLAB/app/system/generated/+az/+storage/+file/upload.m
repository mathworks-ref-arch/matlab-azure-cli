classdef upload < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = upload()
            % az storage file upload : Upload a file to a share that uses the SMB 3.0 protocol.
            % Creates or updates an Azure file from a source path with automatic chunking and progress
            % notifications.
            this.BaseCmd = 'az storage file upload ';
        end
        function this = share_name(this, varargin)
            % The file share name.
            this.Options = [this.Options, '--share-name', varargin{:}];
        end

        function this = source(this, varargin)
            % Path of the local file to upload as the file content.
            this.Options = [this.Options, '--source', varargin{:}];
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
            % The content MIME type.
            this.Options = [this.Options, '--content-type', varargin{:}];
        end

        function this = max_connections(this, varargin)
            % Maximum number of parallel connections to use.  Default: 2.
            this.Options = [this.Options, '--max-connections', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs. This overwrites any existing metadata.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = no_progress(this, varargin)
            % Include this flag to disable progress reporting for the command.
            this.Options = [this.Options, '--no-progress', varargin{:}];
        end

        function this = path(this, varargin)
            % The path to the file within the file share. If the file name is omitted, the source file name will be used.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = validate_content(this, varargin)
            % If true, calculates an MD5 hash for each range of the file. The storage service checks the hash of the content that has arrived with the hash that was sent. This is primarily valuable for detecting bitflips on the wire if using http instead of https as https (the default) will already validate. Note that this MD5 hash is not stored with the file. Storage Account Arguments
            this.Options = [this.Options, '--validate-content', varargin{:}];
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
            fprintf('%s\n', '    az storage file upload : Upload a file to a share that uses the SMB 3.0 protocol.')
            fprintf('%s\n', '        Creates or updates an Azure file from a source path with automatic chunking and progress')
            fprintf('%s\n', '        notifications.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --share-name -s [Required] : The file share name.')
            fprintf('%s\n', '    --source        [Required] : Path of the local file to upload as the file content.')
            fprintf('%s\n', '    --content-cache-control    : The cache control string.')
            fprintf('%s\n', '    --content-disposition      : Conveys additional information about how to process the response')
            fprintf('%s\n', '                                 payload, and can also be used to attach additional metadata.')
            fprintf('%s\n', '    --content-encoding         : The content encoding type.')
            fprintf('%s\n', '    --content-language         : The content language.')
            fprintf('%s\n', '    --content-md5              : The content''s MD5 hash.')
            fprintf('%s\n', '    --content-type             : The content MIME type.')
            fprintf('%s\n', '    --max-connections          : Maximum number of parallel connections to use.  Default: 2.')
            fprintf('%s\n', '    --metadata                 : Metadata in space-separated key=value pairs. This overwrites any')
            fprintf('%s\n', '                                 existing metadata.')
            fprintf('%s\n', '    --no-progress              : Include this flag to disable progress reporting for the command.')
            fprintf('%s\n', '    --path -p                  : The path to the file within the file share. If the file name is')
            fprintf('%s\n', '                                 omitted, the source file name will be used.')
            fprintf('%s\n', '    --timeout                  : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', '    --validate-content         : If true, calculates an MD5 hash for each range of the file. The')
            fprintf('%s\n', '                                 storage service checks the hash of the content that has arrived')
            fprintf('%s\n', '                                 with the hash that was sent. This is primarily valuable for')
            fprintf('%s\n', '                                 detecting bitflips on the wire if using http instead of https as')
            fprintf('%s\n', '                                 https (the default) will already validate. Note that this MD5 hash')
            fprintf('%s\n', '                                 is not stored with the file.')
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
            fprintf('%s\n', '    Upload to a local file to a share.')
            fprintf('%s\n', '        az storage file upload -s MyShare --source /path/to/file')
            fprintf('%s\n', '    Upload a file to a share that uses the SMB 3.0 protocol. (autogenerated)')
            fprintf('%s\n', '        az storage file upload --account-key 00000000 --account-name MyStorageAccount --path')
            fprintf('%s\n', '        path/file.txt --share-name MyShare --source /path/to/file')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage file upload"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class upload 
