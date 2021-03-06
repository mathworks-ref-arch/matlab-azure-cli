classdef upload < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = upload()
            % az storage fs file upload : Upload a file to a file path in ADLS Gen2 file system.
            this.BaseCmd = 'az storage fs file upload ';
        end
        function this = file_system(this, varargin)
            % File system name.
            this.Options = [this.Options, '--file-system', varargin{:}];
        end

        function this = path(this, varargin)
            % The file path in a file system.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = source(this, varargin)
            % Path of the local file to upload as the file content.
            this.Options = [this.Options, '--source', varargin{:}];
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
            % The content MIME type.
            this.Options = [this.Options, '--content-type', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs. This overwrites any existing metadata.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = overwrite(this, varargin)
            % Overwrite an existing file when specified.  Allowed values: false, true.
            this.Options = [this.Options, '--overwrite', varargin{:}];
        end

        function this = permissions(this, varargin)
            % POSIX access permissions for the file owner, the file owning group, and others. Each class may be granted read, write, or execute permission. The sticky bit is also supported. Both symbolic (rwxrw-rw-) and 4-digit octal notation (e.g. 0766) are supported. For more information, please refer to https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake- storage-access-control#levels-of-permission.
            this.Options = [this.Options, '--permissions', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = umask(this, varargin)
            % When creating a file or directory and the parent folder does not have a default ACL, the umask restricts the permissions of the file or directory to be created. The resulting permission is given by p & ^u, where p is the permission and u is the umask. For more information, please refer to https://docs.microsoft.com/en- us/azure/storage/blobs/data-lake-storage-access-control#umask. Precondition Arguments
            this.Options = [this.Options, '--umask', varargin{:}];
        end

        function this = if_match(this, varargin)
            % An ETag value, or the wildcard character (*). Specify this header to perform the operation only if the resource's ETag matches the value specified.
            this.Options = [this.Options, '--if-match', varargin{:}];
        end

        function this = if_modified_since(this, varargin)
            % A Commence only if modified since supplied UTC datetime (Y-m-d'T'H:M'Z').
            this.Options = [this.Options, '--if-modified-since', varargin{:}];
        end

        function this = if_none_match(this, varargin)
            % An ETag value, or the wildcard character (*). Specify this header to perform the operation only if the resource's ETag does not match the value specified.
            this.Options = [this.Options, '--if-none-match', varargin{:}];
        end

        function this = if_unmodified_since(this, varargin)
            % A Commence only if unmodified since supplied UTC datetime (Y-m-d'T'H:M'Z'). Storage Account Arguments
            this.Options = [this.Options, '--if-unmodified-since', varargin{:}];
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
            fprintf('%s\n', '    az storage fs file upload : Upload a file to a file path in ADLS Gen2 file system.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --file-system -f [Required] : File system name.')
            fprintf('%s\n', '    --path -p        [Required] : The file path in a file system.')
            fprintf('%s\n', '    --source -s      [Required] : Path of the local file to upload as the file content.')
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
            fprintf('%s\n', '    --metadata                  : Metadata in space-separated key=value pairs. This overwrites any')
            fprintf('%s\n', '                                  existing metadata.')
            fprintf('%s\n', '    --overwrite                 : Overwrite an existing file when specified.  Allowed values: false,')
            fprintf('%s\n', '                                  true.')
            fprintf('%s\n', '    --permissions               : POSIX access permissions for the file owner, the file owning')
            fprintf('%s\n', '                                  group, and others. Each class may be granted read, write, or')
            fprintf('%s\n', '                                  execute permission. The sticky bit is also supported. Both')
            fprintf('%s\n', '                                  symbolic (rwxrw-rw-) and 4-digit octal notation (e.g. 0766) are')
            fprintf('%s\n', '                                  supported. For more information, please refer to')
            fprintf('%s\n', '                                  https://docs.microsoft.com/en-us/azure/storage/blobs/data-lake-')
            fprintf('%s\n', '                                  storage-access-control#levels-of-permission.')
            fprintf('%s\n', '    --timeout                   : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', '    --umask                     : When creating a file or directory and the parent folder does not')
            fprintf('%s\n', '                                  have a default ACL, the umask restricts the permissions of the')
            fprintf('%s\n', '                                  file or directory to be created. The resulting permission is given')
            fprintf('%s\n', '                                  by p & ^u, where p is the permission and u is the umask. For more')
            fprintf('%s\n', '                                  information, please refer to https://docs.microsoft.com/en-')
            fprintf('%s\n', '                                  us/azure/storage/blobs/data-lake-storage-access-control#umask.')
            fprintf('%s\n', 'Precondition Arguments')
            fprintf('%s\n', '    --if-match                  : An ETag value, or the wildcard character (*). Specify this header')
            fprintf('%s\n', '                                  to perform the operation only if the resource''s ETag matches the')
            fprintf('%s\n', '                                  value specified.')
            fprintf('%s\n', '    --if-modified-since         : A Commence only if modified since supplied UTC datetime')
            fprintf('%s\n', '                                  (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', '    --if-none-match             : An ETag value, or the wildcard character (*). Specify this header')
            fprintf('%s\n', '                                  to perform the operation only if the resource''s ETag does not')
            fprintf('%s\n', '                                  match the value specified.')
            fprintf('%s\n', '    --if-unmodified-since       : A Commence only if unmodified since supplied UTC datetime')
            fprintf('%s\n', '                                  (Y-m-d''T''H:M''Z'').')
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
            fprintf('%s\n', '    Upload a file from local path to a file path in ADLS Gen2 file system.')
            fprintf('%s\n', '        az storage fs file upload --source a.txt -p dir/a.txt -f fsname --account-name myadlsaccount')
            fprintf('%s\n', '        --account-key 0000-0000')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage fs file upload"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class upload 
