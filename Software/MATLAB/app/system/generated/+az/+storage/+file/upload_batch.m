classdef upload_batch < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = upload_batch()
            % az storage file upload-batch : Upload files from a local directory to an Azure Storage File
            % Share in a batch operation.
            this.BaseCmd = 'az storage file upload-batch ';
        end
        function this = destination(this, varargin)
            % The destination of the upload operation. The destination can be the file share URL or the share name. When the destination is the share URL, the storage account name is parsed from the URL.
            this.Options = [this.Options, '--destination', varargin{:}];
        end

        function this = source(this, varargin)
            % The directory to upload files from.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = destination_path(this, varargin)
            % The directory where the source data is copied to. If omitted, data is copied to the root directory.
            this.Options = [this.Options, '--destination-path', varargin{:}];
        end

        function this = dryrun(this, varargin)
            % List the files and blobs to be uploaded. No actual data transfer will occur.
            this.Options = [this.Options, '--dryrun', varargin{:}];
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
            % The pattern used for file globbing. The supported patterns are '*', '?', '[seq]', and '[!seq]'. For more information, please refer to https://docs.python.org/3.7/library/fnmatch.html. When you use '*' in --pattern, it will match any character including the the directory separator '/'.
            this.Options = [this.Options, '--pattern', varargin{:}];
        end

        function this = validate_content(this, varargin)
            % If set, calculates an MD5 hash for each range of the file for validation. The storage service checks the hash of the content that has arrived is identical to the hash that was sent. This is mostly valuable for detecting bitflips during transfer if using HTTP instead of HTTPS. This hash is not stored. Content Settings Arguments
            this.Options = [this.Options, '--validate-content', varargin{:}];
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
            % The content MIME type. Download Control Arguments
            this.Options = [this.Options, '--content-type', varargin{:}];
        end

        function this = max_connections(this, varargin)
            % The maximum number of parallel connections to use. Default value is 1.  Default: 1. Storage Account Arguments
            this.Options = [this.Options, '--max-connections', varargin{:}];
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
            fprintf('%s\n', '    az storage file upload-batch : Upload files from a local directory to an Azure Storage File')
            fprintf('%s\n', '    Share in a batch operation.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination -d [Required] : The destination of the upload operation.')
            fprintf('%s\n', '        The destination can be the file share URL or the share name. When the destination is the')
            fprintf('%s\n', '        share URL, the storage account name is parsed from the URL.')
            fprintf('%s\n', '    --source -s      [Required] : The directory to upload files from.')
            fprintf('%s\n', '    --destination-path          : The directory where the source data is copied to. If omitted, data')
            fprintf('%s\n', '                                  is copied to the root directory.')
            fprintf('%s\n', '    --dryrun                    : List the files and blobs to be uploaded. No actual data transfer')
            fprintf('%s\n', '                                  will occur.')
            fprintf('%s\n', '    --metadata                  : Metadata in space-separated key=value pairs. This overwrites any')
            fprintf('%s\n', '                                  existing metadata.')
            fprintf('%s\n', '    --no-progress               : Include this flag to disable progress reporting for the command.')
            fprintf('%s\n', '    --pattern                   : The pattern used for file globbing. The supported patterns are')
            fprintf('%s\n', '                                  ''*'', ''?'', ''[seq]'', and ''[!seq]''. For more information, please')
            fprintf('%s\n', '                                  refer to https://docs.python.org/3.7/library/fnmatch.html.')
            fprintf('%s\n', '        When you use ''*'' in --pattern, it will match any character including the the directory')
            fprintf('%s\n', '        separator ''/''.')
            fprintf('%s\n', '    --validate-content          : If set, calculates an MD5 hash for each range of the file for')
            fprintf('%s\n', '                                  validation.')
            fprintf('%s\n', '        The storage service checks the hash of the content that has arrived is identical to the hash')
            fprintf('%s\n', '        that was sent. This is mostly valuable for detecting bitflips during transfer if using HTTP')
            fprintf('%s\n', '        instead of HTTPS. This hash is not stored.')
            fprintf('%s\n', 'Content Settings Arguments')
            fprintf('%s\n', '    --content-cache-control     : The cache control string.')
            fprintf('%s\n', '    --content-disposition       : Conveys additional information about how to process the response')
            fprintf('%s\n', '                                  payload, and can also be used to attach additional metadata.')
            fprintf('%s\n', '    --content-encoding          : The content encoding type.')
            fprintf('%s\n', '    --content-language          : The content language.')
            fprintf('%s\n', '    --content-md5               : The content''s MD5 hash.')
            fprintf('%s\n', '    --content-type              : The content MIME type.')
            fprintf('%s\n', 'Download Control Arguments')
            fprintf('%s\n', '    --max-connections           : The maximum number of parallel connections to use. Default value')
            fprintf('%s\n', '                                  is 1.  Default: 1.')
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
            fprintf('%s\n', '    Upload files from a local directory to an Azure Storage File Share in a batch operation.')
            fprintf('%s\n', '    (autogenerated)')
            fprintf('%s\n', '        az storage file upload-batch --account-key 00000000 --account-name MyAccount --destination .')
            fprintf('%s\n', '        --source /path/to/file')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage file upload-batch"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class upload_batch 
