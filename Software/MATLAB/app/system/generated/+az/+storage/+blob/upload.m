classdef upload < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = upload()
            % az storage blob upload : Upload a file to a storage blob.
            % Creates a new blob from a file path, or updates the content of an existing blob with
            % automatic chunking and progress notifications.
            this.BaseCmd = 'az storage blob upload ';
        end
        function this = container_name(this, varargin)
            % The container name.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = file(this, varargin)
            % Path of the file to upload as the blob content.
            this.Options = [this.Options, '--file', varargin{:}];
        end

        function this = name(this, varargin)
            % The blob name.
            this.Options = [this.Options, '--name', varargin{:}];
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

        function this = encryption_scope(this, varargin)
            % A predefined encryption scope used to encrypt the data on the service.
            this.Options = [this.Options, '--encryption-scope', varargin{:}];
        end

        function this = lease_id(this, varargin)
            % Required if the blob has an active lease.
            this.Options = [this.Options, '--lease-id', varargin{:}];
        end

        function this = max_connections(this, varargin)
            % Maximum number of parallel connections to use when the blob size exceeds 64MB.  Default: 2.
            this.Options = [this.Options, '--max-connections', varargin{:}];
        end

        function this = maxsize_condition(this, varargin)
            % The max length in bytes permitted for an append blob.
            this.Options = [this.Options, '--maxsize-condition', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs. This overwrites any existing metadata.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = no_progress(this, varargin)
            % Include this flag to disable progress reporting for the command.
            this.Options = [this.Options, '--no-progress', varargin{:}];
        end

        function this = socket_timeout(this, varargin)
            % The socket timeout(secs), used by the service to regulate data flow.
            this.Options = [this.Options, '--socket-timeout', varargin{:}];
        end

        function this = tier(this, varargin)
            % A page blob tier value to set the blob to. The tier correlates to the size of the blob and number of allowed IOPS. This is only applicable to page blobs on premium storage accounts. Allowed values: P10, P20, P30, P4, P40, P50, P6, P60.
            this.Options = [this.Options, '--tier', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = type(this, varargin)
            % Defaults to 'page' for *.vhd files, or 'block' otherwise. Allowed values: append, block, page.
            this.Options = [this.Options, '--type', varargin{:}];
        end

        function this = validate_content(this, varargin)
            % Specifies that an MD5 hash shall be calculated for each chunk of the blob and verified by the service when the chunk has arrived. Precondition Arguments
            this.Options = [this.Options, '--validate-content', varargin{:}];
        end

        function this = if_match(this, varargin)
            % An ETag value, or the wildcard character (*). Specify this header to perform the operation only if the resource's ETag matches the value specified.
            this.Options = [this.Options, '--if-match', varargin{:}];
        end

        function this = if_modified_since(this, varargin)
            % Commence only if modified since supplied UTC datetime (Y-m-d'T'H:M'Z').
            this.Options = [this.Options, '--if-modified-since', varargin{:}];
        end

        function this = if_none_match(this, varargin)
            % An ETag value, or the wildcard character (*). Specify this header to perform the operation only if the resource's ETag does not match the value specified. Specify the wildcard character (*) to perform the operation only if the resource does not exist, and fail the operation if it does exist.
            this.Options = [this.Options, '--if-none-match', varargin{:}];
        end

        function this = if_unmodified_since(this, varargin)
            % Commence only if unmodified since supplied UTC datetime (Y-m-d'T'H:M'Z'). Storage Account Arguments
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
            fprintf('%s\n', '    az storage blob upload : Upload a file to a storage blob.')
            fprintf('%s\n', '        Creates a new blob from a file path, or updates the content of an existing blob with')
            fprintf('%s\n', '        automatic chunking and progress notifications.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container-name -c [Required] : The container name.')
            fprintf('%s\n', '    --file -f           [Required] : Path of the file to upload as the blob content.')
            fprintf('%s\n', '    --name -n           [Required] : The blob name.')
            fprintf('%s\n', '    --auth-mode                    : The mode in which to run the command. "login" mode will')
            fprintf('%s\n', '                                     directly use your login credentials for the authentication. The')
            fprintf('%s\n', '                                     legacy "key" mode will attempt to query for an account key if')
            fprintf('%s\n', '                                     no authentication parameters for the account are provided.')
            fprintf('%s\n', '                                     Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values:')
            fprintf('%s\n', '                                     key, login.')
            fprintf('%s\n', '    --content-cache-control        : The cache control string.')
            fprintf('%s\n', '    --content-disposition          : Conveys additional information about how to process the')
            fprintf('%s\n', '                                     response payload, and can also be used to attach additional')
            fprintf('%s\n', '                                     metadata.')
            fprintf('%s\n', '    --content-encoding             : The content encoding type.')
            fprintf('%s\n', '    --content-language             : The content language.')
            fprintf('%s\n', '    --content-md5                  : The content''s MD5 hash.')
            fprintf('%s\n', '    --content-type                 : The content MIME type.')
            fprintf('%s\n', '    --encryption-scope             : A predefined encryption scope used to encrypt the data on the')
            fprintf('%s\n', '                                     service.')
            fprintf('%s\n', '    --lease-id                     : Required if the blob has an active lease.')
            fprintf('%s\n', '    --max-connections              : Maximum number of parallel connections to use when the blob')
            fprintf('%s\n', '                                     size exceeds 64MB.  Default: 2.')
            fprintf('%s\n', '    --maxsize-condition            : The max length in bytes permitted for an append blob.')
            fprintf('%s\n', '    --metadata                     : Metadata in space-separated key=value pairs. This overwrites')
            fprintf('%s\n', '                                     any existing metadata.')
            fprintf('%s\n', '    --no-progress                  : Include this flag to disable progress reporting for the')
            fprintf('%s\n', '                                     command.')
            fprintf('%s\n', '    --socket-timeout               : The socket timeout(secs), used by the service to regulate data')
            fprintf('%s\n', '                                     flow.')
            fprintf('%s\n', '    --tier                         : A page blob tier value to set the blob to. The tier correlates')
            fprintf('%s\n', '                                     to the size of the blob and number of allowed IOPS. This is')
            fprintf('%s\n', '                                     only applicable to page blobs on premium storage accounts.')
            fprintf('%s\n', '                                     Allowed values: P10, P20, P30, P4, P40, P50, P6, P60.')
            fprintf('%s\n', '    --timeout                      : Request timeout in seconds. Applies to each call to the')
            fprintf('%s\n', '                                     service.')
            fprintf('%s\n', '    --type -t                      : Defaults to ''page'' for *.vhd files, or ''block'' otherwise.')
            fprintf('%s\n', '                                     Allowed values: append, block, page.')
            fprintf('%s\n', '    --validate-content             : Specifies that an MD5 hash shall be calculated for each chunk')
            fprintf('%s\n', '                                     of the blob and verified by the service when the chunk has')
            fprintf('%s\n', '                                     arrived.')
            fprintf('%s\n', 'Precondition Arguments')
            fprintf('%s\n', '    --if-match                     : An ETag value, or the wildcard character (*). Specify this')
            fprintf('%s\n', '                                     header to perform the operation only if the resource''s ETag')
            fprintf('%s\n', '                                     matches the value specified.')
            fprintf('%s\n', '    --if-modified-since            : Commence only if modified since supplied UTC datetime')
            fprintf('%s\n', '                                     (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', '    --if-none-match                : An ETag value, or the wildcard character (*). Specify this')
            fprintf('%s\n', '                                     header to perform the operation only if the resource''s ETag')
            fprintf('%s\n', '                                     does not match the value specified. Specify the wildcard')
            fprintf('%s\n', '                                     character (*) to perform the operation only if the resource')
            fprintf('%s\n', '                                     does not exist, and fail the operation if it does exist.')
            fprintf('%s\n', '    --if-unmodified-since          : Commence only if unmodified since supplied UTC datetime')
            fprintf('%s\n', '                                     (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key                  : Storage account key. Must be used in conjunction with storage')
            fprintf('%s\n', '                                     account name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name                 : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                     AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either')
            fprintf('%s\n', '                                     storage account key or a SAS token. If neither are present, the')
            fprintf('%s\n', '                                     command will try to query the storage account key using the')
            fprintf('%s\n', '                                     authenticated Azure account. If a large number of storage')
            fprintf('%s\n', '                                     commands are executed the API quota may be hit.')
            fprintf('%s\n', '    --connection-string            : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                     AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                    : A Shared Access Signature (SAS). Must be used in conjunction')
            fprintf('%s\n', '                                     with storage account name. Environment variable:')
            fprintf('%s\n', '                                     AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Upload to a blob.')
            fprintf('%s\n', '        az storage blob upload -f /path/to/file -c MyContainer -n MyBlob')
            fprintf('%s\n', '    Upload a file to a storage blob. (autogenerated)')
            fprintf('%s\n', '        az storage blob upload --account-name mystorageaccount --account-key 0000-0000 --container-')
            fprintf('%s\n', '        name mycontainer --file /path/to/file --name myblob')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob upload"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class upload 
