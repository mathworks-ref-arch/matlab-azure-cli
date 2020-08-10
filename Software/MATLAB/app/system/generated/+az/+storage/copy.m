classdef copy < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = copy()
            % az storage copy : Copy files or directories to or from Azure storage.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az storage copy ';
        end
        function this = destination(this, varargin)
            % The path/url of copy destination. It can be a local path, an url to azure storage server. If you provide destination parameter here, you do not need to provide arguments in copy destination arguments group and copy destination arguments will be deprecated in future.
            this.Options = [this.Options, '--destination', varargin{:}];
        end

        function this = recursive(this, varargin)
            % Look into sub-directories recursively.
            this.Options = [this.Options, '--recursive', varargin{:}];
        end

        function this = source(this, varargin)
            % The path/url of copy source. It can be a local path, an url to azure storage server or AWS S3 buckets. If you provide source parameter here, you do not need to provide arguments in copy source arguments group and copy source arguments will be deprecated in future. Additional Flags Arguments
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = blob_type(this, varargin)
            % The type of blob at the destination.  Allowed values: AppendBlob, BlockBlob, PageBlob.
            this.Options = [this.Options, '--blob-type', varargin{:}];
        end

        function this = content_type(this, varargin)
            % Specify content type of the file.
            this.Options = [this.Options, '--content-type', varargin{:}];
        end

        function this = exclude_path(this, varargin)
            % Exclude these paths. This option does not support wildcard characters (*). Checks relative path prefix. For example: myFolder;myFolder/subDirName/file.pdf.
            this.Options = [this.Options, '--exclude-path', varargin{:}];
        end

        function this = exclude_pattern(this, varargin)
            % Exclude these files where the name matches the pattern list. For example: *.jpg;*.pdf;exactName. This option supports wildcard characters (*).
            this.Options = [this.Options, '--exclude-pattern', varargin{:}];
        end

        function this = follow_symlinks(this, varargin)
            % Follow symbolic links when uploading from local file system.
            this.Options = [this.Options, '--follow-symlinks', varargin{:}];
        end

        function this = include_path(this, varargin)
            % Include only these paths. This option does not support wildcard characters (*). Checks relative path prefix. For example:myFolder;myFolder/subDirName/file.pdf.
            this.Options = [this.Options, '--include-path', varargin{:}];
        end

        function this = include_pattern(this, varargin)
            % Include only these files where the name matches the pattern list. For example: *.jpg;*.pdf;exactName. This option supports wildcard characters (*).
            this.Options = [this.Options, '--include-pattern', varargin{:}];
        end

        function this = preserve_s2s_access_tier(this, varargin)
            % Preserve access tier during service to service copy. Please refer to https://docs.microsoft.com/en-us/azure/storage/blobs/storage- blob-storage-tiers to ensure destination storage account support setting access tier. In the cases that setting access tier is not supported, please use `--preserve-s2s-access-tier false` to bypass copying access tier. (Default true).  Allowed values: false, true.
            this.Options = [this.Options, '--preserve-s2s-access-tier', varargin{:}];
        end

        function this = put_md5(this, varargin)
            % Create an MD5 hash of each file, and save the hash as the Content- MD5 property of the destination blob/file.Only available when uploading. Copy destination Arguments
            this.Options = [this.Options, '--put-md5', varargin{:}];
        end

        function this = destination_account_name(this, varargin)
            % Storage account name of copy destination.
            this.Options = [this.Options, '--destination-account-name', varargin{:}];
        end

        function this = destination_blob(this, varargin)
            % Blob name in blob container of copy destination storage account.
            this.Options = [this.Options, '--destination-blob', varargin{:}];
        end

        function this = destination_container(this, varargin)
            % Container name of copy destination storage account.
            this.Options = [this.Options, '--destination-container', varargin{:}];
        end

        function this = destination_file_path(this, varargin)
            % File path in file share of copy destination storage account.
            this.Options = [this.Options, '--destination-file-path', varargin{:}];
        end

        function this = destination_local_path(this, varargin)
            % Local file path.
            this.Options = [this.Options, '--destination-local-path', varargin{:}];
        end

        function this = destination_share(this, varargin)
            % File share name of copy destination storage account. Copy source Arguments
            this.Options = [this.Options, '--destination-share', varargin{:}];
        end

        function this = source_account_name(this, varargin)
            % Storage account name of copy source.
            this.Options = [this.Options, '--source-account-name', varargin{:}];
        end

        function this = source_blob(this, varargin)
            % Blob name in blob container of copy source storage account.
            this.Options = [this.Options, '--source-blob', varargin{:}];
        end

        function this = source_container(this, varargin)
            % Container name of copy source storage account.
            this.Options = [this.Options, '--source-container', varargin{:}];
        end

        function this = source_file_path(this, varargin)
            % File path in file share of copy source storage account.
            this.Options = [this.Options, '--source-file-path', varargin{:}];
        end

        function this = source_local_path(this, varargin)
            % Local file path.
            this.Options = [this.Options, '--source-local-path', varargin{:}];
        end

        function this = source_share(this, varargin)
            % File share name of copy source storage account.
            this.Options = [this.Options, '--source-share', varargin{:}];
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
            fprintf('%s\n', '    az storage copy : Copy files or directories to or from Azure storage.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination -d           : The path/url of copy destination. It can be a local path, an url to')
            fprintf('%s\n', '                                 azure storage server. If you provide destination parameter here,')
            fprintf('%s\n', '                                 you do not need to provide arguments in copy destination arguments')
            fprintf('%s\n', '                                 group and copy destination arguments will be deprecated in future.')
            fprintf('%s\n', '    --recursive -r             : Look into sub-directories recursively.')
            fprintf('%s\n', '    --source -s                : The path/url of copy source. It can be a local path, an url to')
            fprintf('%s\n', '                                 azure storage server or AWS S3 buckets. If you provide source')
            fprintf('%s\n', '                                 parameter here, you do not need to provide arguments in copy source')
            fprintf('%s\n', '                                 arguments group and copy source arguments will be deprecated in')
            fprintf('%s\n', '                                 future.')
            fprintf('%s\n', 'Additional Flags Arguments')
            fprintf('%s\n', '    --blob-type                : The type of blob at the destination.  Allowed values: AppendBlob,')
            fprintf('%s\n', '                                 BlockBlob, PageBlob.')
            fprintf('%s\n', '    --content-type             : Specify content type of the file.')
            fprintf('%s\n', '    --exclude-path             : Exclude these paths. This option does not support wildcard')
            fprintf('%s\n', '                                 characters (*). Checks relative path prefix. For example:')
            fprintf('%s\n', '                                 myFolder;myFolder/subDirName/file.pdf.')
            fprintf('%s\n', '    --exclude-pattern          : Exclude these files where the name matches the pattern list. For')
            fprintf('%s\n', '                                 example: *.jpg;*.pdf;exactName. This option supports wildcard')
            fprintf('%s\n', '                                 characters (*).')
            fprintf('%s\n', '    --follow-symlinks          : Follow symbolic links when uploading from local file system.')
            fprintf('%s\n', '    --include-path             : Include only these paths. This option does not support wildcard')
            fprintf('%s\n', '                                 characters (*). Checks relative path prefix. For')
            fprintf('%s\n', '                                 example:myFolder;myFolder/subDirName/file.pdf.')
            fprintf('%s\n', '    --include-pattern          : Include only these files where the name matches the pattern list.')
            fprintf('%s\n', '                                 For example: *.jpg;*.pdf;exactName. This option supports wildcard')
            fprintf('%s\n', '                                 characters (*).')
            fprintf('%s\n', '    --preserve-s2s-access-tier : Preserve access tier during service to service copy. Please refer')
            fprintf('%s\n', '                                 to https://docs.microsoft.com/en-us/azure/storage/blobs/storage-')
            fprintf('%s\n', '                                 blob-storage-tiers to ensure destination storage account support')
            fprintf('%s\n', '                                 setting access tier. In the cases that setting access tier is not')
            fprintf('%s\n', '                                 supported, please use `--preserve-s2s-access-tier false` to bypass')
            fprintf('%s\n', '                                 copying access tier. (Default true).  Allowed values: false, true.')
            fprintf('%s\n', '    --put-md5                  : Create an MD5 hash of each file, and save the hash as the Content-')
            fprintf('%s\n', '                                 MD5 property of the destination blob/file.Only available when')
            fprintf('%s\n', '                                 uploading.')
            fprintf('%s\n', 'Copy destination Arguments')
            fprintf('%s\n', '    --destination-account-name : Storage account name of copy destination.')
            fprintf('%s\n', '    --destination-blob         : Blob name in blob container of copy destination storage account.')
            fprintf('%s\n', '    --destination-container    : Container name of copy destination storage account.')
            fprintf('%s\n', '    --destination-file-path    : File path in file share of copy destination storage account.')
            fprintf('%s\n', '    --destination-local-path   : Local file path.')
            fprintf('%s\n', '    --destination-share        : File share name of copy destination storage account.')
            fprintf('%s\n', 'Copy source Arguments')
            fprintf('%s\n', '    --source-account-name      : Storage account name of copy source.')
            fprintf('%s\n', '    --source-blob              : Blob name in blob container of copy source storage account.')
            fprintf('%s\n', '    --source-container         : Container name of copy source storage account.')
            fprintf('%s\n', '    --source-file-path         : File path in file share of copy source storage account.')
            fprintf('%s\n', '    --source-local-path        : Local file path.')
            fprintf('%s\n', '    --source-share             : File share name of copy source storage account.')
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
            fprintf('%s\n', '    Upload a single file to Azure Blob using url.')
            fprintf('%s\n', '        az storage copy -s /path/to/file.txt -d')
            fprintf('%s\n', '        https://[account].blob.core.windows.net/[container]/[path/to/blob]')
            fprintf('%s\n', '    Upload a single file to Azure Blob using account name and container name.')
            fprintf('%s\n', '        az storage copy --source-local-path /path/to/file.txt --destination-account-name')
            fprintf('%s\n', '        mystorageaccount --destination-container mycontainer')
            fprintf('%s\n', '    Upload a single file to Azure Blob with MD5 hash of the file content and save it as the blob''s')
            fprintf('%s\n', '    Content-MD5 property.')
            fprintf('%s\n', '        az storage copy -s /path/to/file.txt -d')
            fprintf('%s\n', '        https://[account].blob.core.windows.net/[container]/[path/to/blob] --put-md5')
            fprintf('%s\n', '    Upload an entire directory to Azure Blob using url.')
            fprintf('%s\n', '        az storage copy -s /path/to/dir -d')
            fprintf('%s\n', '        https://[account].blob.core.windows.net/[container]/[path/to/directory] --recursive')
            fprintf('%s\n', '    Upload an entire directory to Azure Blob using account name and container name.')
            fprintf('%s\n', '        az storage copy --source-local-path /path/to/dir --destination-account-name mystorageaccount')
            fprintf('%s\n', '        --destination-container mycontainer --recursive')
            fprintf('%s\n', '    Upload a set of files to Azure Blob using wildcards with url.')
            fprintf('%s\n', '        az storage copy -s /path/*foo/*bar/*.pdf -d')
            fprintf('%s\n', '        https://[account].blob.core.windows.net/[container]/[path/to/directory]')
            fprintf('%s\n', '    Upload a set of files to Azure Blob using wildcards with account name and container name.')
            fprintf('%s\n', '        az storage copy --source-local-path /path/*foo/*bar/*.pdf --destination-account-name')
            fprintf('%s\n', '        mystorageaccount --destination-container mycontainer')
            fprintf('%s\n', '    Upload files and directories to Azure Blob using wildcards with url.')
            fprintf('%s\n', '        az storage copy -s /path/*foo/*bar* -d')
            fprintf('%s\n', '        https://[account].blob.core.windows.net/[container]/[path/to/directory] --recursive')
            fprintf('%s\n', '    Upload files and directories to Azure Blob using wildcards with account name and container name.')
            fprintf('%s\n', '        az storage copy --source-local-path /path/*foo/*bar* --destination-account-name')
            fprintf('%s\n', '        mystorageaccount --destination-container mycontainer --recursive')
            fprintf('%s\n', '    Download a single file from Azure Blob using url, and you can also specify your storage account')
            fprintf('%s\n', '    and container information as above.')
            fprintf('%s\n', '        az storage copy -s https://[account].blob.core.windows.net/[container]/[path/to/blob] -d')
            fprintf('%s\n', '        /path/to/file.txt')
            fprintf('%s\n', '    Download an entire directory from Azure Blob, and you can also specify your storage account and')
            fprintf('%s\n', '    container information as above.')
            fprintf('%s\n', '        az storage copy -s https://[account].blob.core.windows.net/[container]/[path/to/directory]')
            fprintf('%s\n', '        -d /path/to/dir --recursive')
            fprintf('%s\n', '    Download a subset of containers within a storage account by using a wildcard symbol (*) in the')
            fprintf('%s\n', '    container name, and you can also specify your storage account and container information as')
            fprintf('%s\n', '    above.')
            fprintf('%s\n', '        az storage copy -s https://[account].blob.core.windows.net/[container*name] -d /path/to/dir')
            fprintf('%s\n', '        --recursive')
            fprintf('%s\n', '    Download a subset of files from Azure Blob. (Only jpg files and file names don''t start with test')
            fprintf('%s\n', '    will be included.)')
            fprintf('%s\n', '        az storage copy -s https://[account].blob.core.windows.net/[container] --include-pattern')
            fprintf('%s\n', '        "*.jpg" --exclude-pattern test* -d /path/to/dir --recursive')
            fprintf('%s\n', '    Copy a single blob to another blob, and you can also specify the storage account and container')
            fprintf('%s\n', '    information of source and destination as above.')
            fprintf('%s\n', '        az storage copy -s https://[srcaccount].blob.core.windows.net/[container]/[path/to/blob] -d')
            fprintf('%s\n', '        https://[destaccount].blob.core.windows.net/[container]/[path/to/blob]')
            fprintf('%s\n', '    Copy an entire account data from blob account to another blob account, and you can also specify')
            fprintf('%s\n', '    the storage account and container information of source and destination as above.')
            fprintf('%s\n', '        az storage copy -s https://[srcaccount].blob.core.windows.net -d')
            fprintf('%s\n', '        https://[destaccount].blob.core.windows.net --recursive')
            fprintf('%s\n', '    Copy a single object from S3 with access key to blob, and you can also specify your storage')
            fprintf('%s\n', '    account and container information as above.')
            fprintf('%s\n', '        az storage copy -s https://s3.amazonaws.com/[bucket]/[object] -d')
            fprintf('%s\n', '        https://[destaccount].blob.core.windows.net/[container]/[path/to/blob]')
            fprintf('%s\n', '    Copy an entire directory from S3 with access key to blob virtual directory, and you can also')
            fprintf('%s\n', '    specify your storage account and container information as above.')
            fprintf('%s\n', '        az storage copy -s https://s3.amazonaws.com/[bucket]/[folder] -d')
            fprintf('%s\n', '        https://[destaccount].blob.core.windows.net/[container]/[path/to/directory] --recursive')
            fprintf('%s\n', '    Copy all buckets in S3 service with access key to blob account, and you can also specify your')
            fprintf('%s\n', '    storage account information as above.')
            fprintf('%s\n', '        az storage copy -s https://s3.amazonaws.com/ -d https://[destaccount].blob.core.windows.net')
            fprintf('%s\n', '        --recursive')
            fprintf('%s\n', '    Copy all buckets in a S3 region with access key to blob account, and you can also specify your')
            fprintf('%s\n', '    storage account information as above.')
            fprintf('%s\n', '        az storage copy -s https://s3-[region].amazonaws.com/ -d')
            fprintf('%s\n', '        https://[destaccount].blob.core.windows.net --recursive')
            fprintf('%s\n', '    Upload a single file to Azure File Share using url.')
            fprintf('%s\n', '        az storage copy -s /path/to/file.txt -d')
            fprintf('%s\n', '        https://[account].file.core.windows.net/[share]/[path/to/file]')
            fprintf('%s\n', '    Upload a single file to Azure File Share using account name and share name.')
            fprintf('%s\n', '        az storage copy --source-local-path /path/to/file.txt --destination-account-name')
            fprintf('%s\n', '        mystorageaccount --destination-share myshare')
            fprintf('%s\n', '    Upload an entire directory to Azure File Share using url.')
            fprintf('%s\n', '        az storage copy -s /path/to/dir -d')
            fprintf('%s\n', '        https://[account].file.core.windows.net/[share]/[path/to/directory] --recursive')
            fprintf('%s\n', '    Upload an entire directory to Azure File Share using account name and container name.')
            fprintf('%s\n', '        az storage copy --source-local-path /path/to/dir --destination-account-name mystorageaccount')
            fprintf('%s\n', '        --destination-share myshare --recursive')
            fprintf('%s\n', '    Upload a set of files to Azure File Share using wildcards with account name and share name.')
            fprintf('%s\n', '        az storage copy --source-local-path /path/*foo/*bar/*.pdf --destination-account-name')
            fprintf('%s\n', '        mystorageaccount --destination-share myshare')
            fprintf('%s\n', '    Upload files and directories to Azure File Share using wildcards with url.')
            fprintf('%s\n', '        az storage copy -s /path/*foo/*bar* -d')
            fprintf('%s\n', '        https://[account].file.core.windows.net/[share]/[path/to/directory] --recursive')
            fprintf('%s\n', '    Upload files and directories to Azure File Share using wildcards with account name and share')
            fprintf('%s\n', '    name.')
            fprintf('%s\n', '        az storage copy --source-local-path /path/*foo/*bar* --destination-account-name')
            fprintf('%s\n', '        mystorageaccount --destination-share myshare --recursive')
            fprintf('%s\n', '    Download a single file from Azure File Share using url, and you can also specify your storage')
            fprintf('%s\n', '    account and share information as above.')
            fprintf('%s\n', '        az storage copy -s https://[account].file.core.windows.net/[share]/[path/to/file] -d')
            fprintf('%s\n', '        /path/to/file.txt')
            fprintf('%s\n', '    Download an entire directory from Azure File Share, and you can also specify your storage')
            fprintf('%s\n', '    account and share information as above.')
            fprintf('%s\n', '        az storage copy -s https://[account].file.core.windows.net/[share]/[path/to/directory] -d')
            fprintf('%s\n', '        /path/to/dir --recursive')
            fprintf('%s\n', '    Download a set of files from Azure File Share using wildcards, and you can also specify your')
            fprintf('%s\n', '    storage account and share information as above.')
            fprintf('%s\n', '        az storage copy -s https://[account].file.core.windows.net/[share]/ --include-pattern foo*')
            fprintf('%s\n', '        -d /path/to/dir --recursive')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage copy"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class copy 
