classdef start_batch < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = start_batch()
            % az storage file copy start-batch : Copy multiple files or blobs to a file share.
            this.BaseCmd = 'az storage file copy start-batch ';
        end
        function this = destination_path(this, varargin)
            % The directory where the source data is copied to. If omitted, data is copied to the root directory.
            this.Options = [this.Options, '--destination-path', varargin{:}];
        end

        function this = destination_share(this, varargin)
            % The file share where the source data is copied to.
            this.Options = [this.Options, '--destination-share', varargin{:}];
        end

        function this = dryrun(this, varargin)
            % List the files and blobs to be copied. No actual data transfer will occur.
            this.Options = [this.Options, '--dryrun', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs. This overwrites any existing metadata.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = pattern(this, varargin)
            % The pattern used for globbing files and blobs. The supported patterns are '*', '?', '[seq]', and '[!seq]'. For more information, please refer to https://docs.python.org/3.7/library/fnmatch.html. When you use '*' in --pattern, it will match any character including the the directory separator '/'.
            this.Options = [this.Options, '--pattern', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Copy Source Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = source_account_key(this, varargin)
            % The account key for the source storage account. If omitted, the active login is used to determine the account key.
            this.Options = [this.Options, '--source-account-key', varargin{:}];
        end

        function this = source_account_name(this, varargin)
            % The source storage account to copy the data from. If omitted, the destination account is used.
            this.Options = [this.Options, '--source-account-name', varargin{:}];
        end

        function this = source_container(this, varargin)
            % The source container blobs are copied from.
            this.Options = [this.Options, '--source-container', varargin{:}];
        end

        function this = source_sas(this, varargin)
            % The shared access signature for the source storage account.
            this.Options = [this.Options, '--source-sas', varargin{:}];
        end

        function this = source_share(this, varargin)
            % The source share files are copied from.
            this.Options = [this.Options, '--source-share', varargin{:}];
        end

        function this = source_uri(this, varargin)
            % A URI that specifies a the source file share or blob container. If the source is in another account, the source must either be public or authenticated via a shared access signature. Storage Account Arguments
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
            fprintf('%s\n', '    az storage file copy start-batch : Copy multiple files or blobs to a file share.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination-path    : The directory where the source data is copied to. If omitted, data is')
            fprintf('%s\n', '                            copied to the root directory.')
            fprintf('%s\n', '    --destination-share   : The file share where the source data is copied to.')
            fprintf('%s\n', '    --dryrun              : List the files and blobs to be copied. No actual data transfer will')
            fprintf('%s\n', '                            occur.')
            fprintf('%s\n', '    --metadata            : Metadata in space-separated key=value pairs. This overwrites any')
            fprintf('%s\n', '                            existing metadata.')
            fprintf('%s\n', '    --pattern             : The pattern used for globbing files and blobs. The supported patterns')
            fprintf('%s\n', '                            are ''*'', ''?'', ''[seq]'', and ''[!seq]''. For more information, please refer')
            fprintf('%s\n', '                            to https://docs.python.org/3.7/library/fnmatch.html.')
            fprintf('%s\n', '        When you use ''*'' in --pattern, it will match any character including the the directory')
            fprintf('%s\n', '        separator ''/''.')
            fprintf('%s\n', '    --timeout             : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Copy Source Arguments')
            fprintf('%s\n', '    --source-account-key  : The account key for the source storage account. If omitted, the active')
            fprintf('%s\n', '                            login is used to determine the account key.')
            fprintf('%s\n', '    --source-account-name : The source storage account to copy the data from. If omitted, the')
            fprintf('%s\n', '                            destination account is used.')
            fprintf('%s\n', '    --source-container    : The source container blobs are copied from.')
            fprintf('%s\n', '    --source-sas          : The shared access signature for the source storage account.')
            fprintf('%s\n', '    --source-share        : The source share files are copied from.')
            fprintf('%s\n', '    --source-uri          : A URI that specifies a the source file share or blob container.')
            fprintf('%s\n', '        If the source is in another account, the source must either be public or authenticated via a')
            fprintf('%s\n', '        shared access signature.')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key         : Storage account key. Must be used in conjunction with storage account')
            fprintf('%s\n', '                            name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name        : Storage account name. Related environment variable:')
            fprintf('%s\n', '                            AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either storage')
            fprintf('%s\n', '                            account key or a SAS token. If neither are present, the command will try')
            fprintf('%s\n', '                            to query the storage account key using the authenticated Azure account.')
            fprintf('%s\n', '                            If a large number of storage commands are executed the API quota may be')
            fprintf('%s\n', '                            hit.')
            fprintf('%s\n', '    --connection-string   : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                            AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token           : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                            storage account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Copy all files in a file share to another storage account.')
            fprintf('%s\n', '        az storage file copy start-batch --source-account-name srcaccount --source-account-key')
            fprintf('%s\n', '        00000000 --source-share srcshare --destination-path <destpath-to-directory> --destination-')
            fprintf('%s\n', '        share destshare --account-name destaccount --account-key 00000000')
            fprintf('%s\n', '    Copy all files in a file share to another storage account. with sas token.')
            fprintf('%s\n', '        az storage file copy start-batch --source-uri')
            fprintf('%s\n', '        "https://srcaccount.file.core.windows.net/myshare?<sastoken>" --destination-path <destpath-')
            fprintf('%s\n', '        to-directory> --destination-share destshare --account-name destaccount --sas-token')
            fprintf('%s\n', '        <destinaition-sas>')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage file copy start-batch"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class start_batch 
