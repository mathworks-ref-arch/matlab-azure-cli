classdef upload_batch < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = upload_batch()
            % az storage blob upload-batch : Upload files from a local directory to a blob container.
            this.BaseCmd = 'az storage blob upload-batch ';
        end
        function this = destination(this, varargin)
            % The blob container where the files will be uploaded. The destination can be the container URL or the container name. When the destination is the container URL, the storage account name will be parsed from the URL.
            this.Options = [this.Options, '--destination', varargin{:}];
        end

        function this = source(this, varargin)
            % The directory where the files to be uploaded are located.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = destination_path(this, varargin)
            % The destination path that will be appended to the blob name.
            this.Options = [this.Options, '--destination-path', varargin{:}];
        end

        function this = dryrun(this, varargin)
            % Show the summary of the operations to be taken instead of actually uploading the file(s).
            this.Options = [this.Options, '--dryrun', varargin{:}];
        end

        function this = lease_id(this, varargin)
            % The active lease id for the blob.
            this.Options = [this.Options, '--lease-id', varargin{:}];
        end

        function this = max_connections(this, varargin)
            % Maximum number of parallel connections to use when the blob size exceeds 64MB.  Default: 2.
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

        function this = pattern(this, varargin)
            % The pattern used for globbing files or blobs in the source. The supported patterns are '*', '?', '[seq]', and '[!seq]'. For more information, please refer to https://docs.python.org/3.7/library/fnmatch.html. When you use '*' in --pattern, it will match any character including the the directory separator '/'.
            this.Options = [this.Options, '--pattern', varargin{:}];
        end

        function this = socket_timeout(this, varargin)
            % The socket timeout(secs), used by the service to regulate data flow.
            this.Options = [this.Options, '--socket-timeout', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = type(this, varargin)
            % Defaults to 'page' for *.vhd files, or 'block' otherwise. The setting will override blob types for every file.  Allowed values: append, block, page. Content Control Arguments
            this.Options = [this.Options, '--type', varargin{:}];
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

        function this = maxsize_condition(this, varargin)
            % The max length in bytes permitted for an append blob.
            this.Options = [this.Options, '--maxsize-condition', varargin{:}];
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
            fprintf('%s\n', '    az storage blob upload-batch : Upload files from a local directory to a blob container.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination -d [Required] : The blob container where the files will be uploaded.')
            fprintf('%s\n', '        The destination can be the container URL or the container name. When the destination is the')
            fprintf('%s\n', '        container URL, the storage account name will be parsed from the URL.')
            fprintf('%s\n', '    --source -s      [Required] : The directory where the files to be uploaded are located.')
            fprintf('%s\n', '    --auth-mode                 : The mode in which to run the command. "login" mode will directly')
            fprintf('%s\n', '                                  use your login credentials for the authentication. The legacy')
            fprintf('%s\n', '                                  "key" mode will attempt to query for an account key if no')
            fprintf('%s\n', '                                  authentication parameters for the account are provided.')
            fprintf('%s\n', '                                  Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values:')
            fprintf('%s\n', '                                  key, login.')
            fprintf('%s\n', '    --destination-path          : The destination path that will be appended to the blob name.')
            fprintf('%s\n', '    --dryrun                    : Show the summary of the operations to be taken instead of actually')
            fprintf('%s\n', '                                  uploading the file(s).')
            fprintf('%s\n', '    --lease-id                  : The active lease id for the blob.')
            fprintf('%s\n', '    --max-connections           : Maximum number of parallel connections to use when the blob size')
            fprintf('%s\n', '                                  exceeds 64MB.  Default: 2.')
            fprintf('%s\n', '    --metadata                  : Metadata in space-separated key=value pairs. This overwrites any')
            fprintf('%s\n', '                                  existing metadata.')
            fprintf('%s\n', '    --no-progress               : Include this flag to disable progress reporting for the command.')
            fprintf('%s\n', '    --pattern                   : The pattern used for globbing files or blobs in the source. The')
            fprintf('%s\n', '                                  supported patterns are ''*'', ''?'', ''[seq]'', and ''[!seq]''. For more')
            fprintf('%s\n', '                                  information, please refer to')
            fprintf('%s\n', '                                  https://docs.python.org/3.7/library/fnmatch.html.')
            fprintf('%s\n', '        When you use ''*'' in --pattern, it will match any character including the the directory')
            fprintf('%s\n', '        separator ''/''.')
            fprintf('%s\n', '    --socket-timeout            : The socket timeout(secs), used by the service to regulate data')
            fprintf('%s\n', '                                  flow.')
            fprintf('%s\n', '    --timeout                   : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', '    --type -t                   : Defaults to ''page'' for *.vhd files, or ''block'' otherwise. The')
            fprintf('%s\n', '                                  setting will override blob types for every file.  Allowed values:')
            fprintf('%s\n', '                                  append, block, page.')
            fprintf('%s\n', 'Content Control Arguments')
            fprintf('%s\n', '    --content-cache-control     : The cache control string.')
            fprintf('%s\n', '    --content-disposition       : Conveys additional information about how to process the response')
            fprintf('%s\n', '                                  payload, and can also be used to attach additional metadata.')
            fprintf('%s\n', '    --content-encoding          : The content encoding type.')
            fprintf('%s\n', '    --content-language          : The content language.')
            fprintf('%s\n', '    --content-md5               : The content''s MD5 hash.')
            fprintf('%s\n', '    --content-type              : The content MIME type.')
            fprintf('%s\n', '    --maxsize-condition         : The max length in bytes permitted for an append blob.')
            fprintf('%s\n', '    --validate-content          : Specifies that an MD5 hash shall be calculated for each chunk of')
            fprintf('%s\n', '                                  the blob and verified by the service when the chunk has arrived.')
            fprintf('%s\n', 'Precondition Arguments')
            fprintf('%s\n', '    --if-match                  : An ETag value, or the wildcard character (*). Specify this header')
            fprintf('%s\n', '                                  to perform the operation only if the resource''s ETag matches the')
            fprintf('%s\n', '                                  value specified.')
            fprintf('%s\n', '    --if-modified-since         : Commence only if modified since supplied UTC datetime')
            fprintf('%s\n', '                                  (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', '    --if-none-match             : An ETag value, or the wildcard character (*).')
            fprintf('%s\n', '        Specify this header to perform the operation only if the resource''s ETag does not match the')
            fprintf('%s\n', '        value specified. Specify the wildcard character (*) to perform the operation only if the')
            fprintf('%s\n', '        resource does not exist, and fail the operation if it does exist.')
            fprintf('%s\n', '    --if-unmodified-since       : Commence only if unmodified since supplied UTC datetime')
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
            fprintf('%s\n', '    Upload all files that end with .py unless blob exists and has been modified since given date.')
            fprintf('%s\n', '        az storage blob upload-batch -d mycontainer --account-name mystorageaccount --account-key')
            fprintf('%s\n', '        00000000 -s <path-to-directory> --pattern *.py --if-unmodified-since 2018-08-27T20:51Z')
            fprintf('%s\n', '    Upload all files from local path directory to a container named "mycontainer".')
            fprintf('%s\n', '        az storage blob upload-batch -d mycontainer -s <path-to-directory>')
            fprintf('%s\n', '    Upload all files with the format ''cli-2018-xx-xx.txt'' or ''cli-2019-xx-xx.txt'' in local path')
            fprintf('%s\n', '    directory.')
            fprintf('%s\n', '        az storage blob upload-batch -d mycontainer -s <path-to-directory> --pattern')
            fprintf('%s\n', '        cli-201[89]-??-??.txt')
            fprintf('%s\n', '    Upload all files with the format ''cli-201x-xx-xx.txt'' except cli-2018-xx-xx.txt'' and')
            fprintf('%s\n', '    ''cli-2019-xx-xx.txt'' in a container.')
            fprintf('%s\n', '        az storage blob upload-batch -d mycontainer -s <path-to-directory> --pattern')
            fprintf('%s\n', '        cli-201[!89]-??-??.txt')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob upload-batch"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class upload_batch 
