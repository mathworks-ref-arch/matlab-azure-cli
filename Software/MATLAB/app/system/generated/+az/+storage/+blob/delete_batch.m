classdef delete_batch < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete_batch()
            % az storage blob delete-batch : Delete blobs from a blob container recursively.
            this.BaseCmd = 'az storage blob delete-batch ';
        end
        function this = source(this, varargin)
            % The blob container from where the files will be deleted. The source can be the container URL or the container name. When the source is the container URL, the storage account name will be parsed from the URL.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = delete_snapshots(this, varargin)
            % Required if the blob has associated snapshots.  Allowed values: include, only.
            this.Options = [this.Options, '--delete-snapshots', varargin{:}];
        end

        function this = dryrun(this, varargin)
            % Show the summary of the operations to be taken instead of actually deleting the file(s). If this is specified, it will ignore all the Precondition Arguments that include --if- modified-since and --if-unmodified-since. So the file(s) will be deleted with the command without --dryrun may be different from the result list with --dryrun flag on.
            this.Options = [this.Options, '--dryrun', varargin{:}];
        end

        function this = lease_id(this, varargin)
            % The active lease id for the blob.
            this.Options = [this.Options, '--lease-id', varargin{:}];
        end

        function this = pattern(this, varargin)
            % The pattern used for globbing files or blobs in the source. The supported patterns are '*', '?', '[seq]', and '[!seq]'. For more information, please refer to https://docs.python.org/3.7/library/fnmatch.html. When you use '*' in --pattern, it will match any character including the the directory separator '/'. You can also try "az stroage remove" command with --include and --exclude with azure cli >= 2.0.70 to match multiple patterns.
            this.Options = [this.Options, '--pattern', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Precondition Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
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
            fprintf('%s\n', '    az storage blob delete-batch : Delete blobs from a blob container recursively.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --source -s [Required] : The blob container from where the files will be deleted.')
            fprintf('%s\n', '        The source can be the container URL or the container name. When the source is the container')
            fprintf('%s\n', '        URL, the storage account name will be parsed from the URL.')
            fprintf('%s\n', '    --auth-mode            : The mode in which to run the command. "login" mode will directly use')
            fprintf('%s\n', '                             your login credentials for the authentication. The legacy "key" mode')
            fprintf('%s\n', '                             will attempt to query for an account key if no authentication')
            fprintf('%s\n', '                             parameters for the account are provided. Environment variable:')
            fprintf('%s\n', '                             AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
            fprintf('%s\n', '    --delete-snapshots     : Required if the blob has associated snapshots.  Allowed values:')
            fprintf('%s\n', '                             include, only.')
            fprintf('%s\n', '    --dryrun               : Show the summary of the operations to be taken instead of actually')
            fprintf('%s\n', '                             deleting the file(s).')
            fprintf('%s\n', '        If this is specified, it will ignore all the Precondition Arguments that include --if-')
            fprintf('%s\n', '        modified-since and --if-unmodified-since. So the file(s) will be deleted with the command')
            fprintf('%s\n', '        without --dryrun may be different from the result list with --dryrun flag on.')
            fprintf('%s\n', '    --lease-id             : The active lease id for the blob.')
            fprintf('%s\n', '    --pattern              : The pattern used for globbing files or blobs in the source. The')
            fprintf('%s\n', '                             supported patterns are ''*'', ''?'', ''[seq]'', and ''[!seq]''. For more')
            fprintf('%s\n', '                             information, please refer to')
            fprintf('%s\n', '                             https://docs.python.org/3.7/library/fnmatch.html.')
            fprintf('%s\n', '        When you use ''*'' in --pattern, it will match any character including the the directory')
            fprintf('%s\n', '        separator ''/''. You can also try "az stroage remove" command with --include and --exclude')
            fprintf('%s\n', '        with azure cli >= 2.0.70 to match multiple patterns.')
            fprintf('%s\n', '    --timeout              : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', 'Precondition Arguments')
            fprintf('%s\n', '    --if-match             : An ETag value, or the wildcard character (*). Specify this header to')
            fprintf('%s\n', '                             perform the operation only if the resource''s ETag matches the value')
            fprintf('%s\n', '                             specified.')
            fprintf('%s\n', '    --if-modified-since    : Commence only if modified since supplied UTC datetime (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', '    --if-none-match        : An ETag value, or the wildcard character (*).')
            fprintf('%s\n', '        Specify this header to perform the operation only if the resource''s ETag does not match the')
            fprintf('%s\n', '        value specified. Specify the wildcard character (*) to perform the operation only if the')
            fprintf('%s\n', '        resource does not exist, and fail the operation if it does exist.')
            fprintf('%s\n', '    --if-unmodified-since  : Commence only if unmodified since supplied UTC datetime')
            fprintf('%s\n', '                             (Y-m-d''T''H:M''Z'').')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key          : Storage account key. Must be used in conjunction with storage account')
            fprintf('%s\n', '                             name. Environment variable: AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name         : Storage account name. Related environment variable:')
            fprintf('%s\n', '                             AZURE_STORAGE_ACCOUNT. Must be used in conjunction with either storage')
            fprintf('%s\n', '                             account key or a SAS token. If neither are present, the command will')
            fprintf('%s\n', '                             try to query the storage account key using the authenticated Azure')
            fprintf('%s\n', '                             account. If a large number of storage commands are executed the API')
            fprintf('%s\n', '                             quota may be hit.')
            fprintf('%s\n', '    --connection-string    : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                             AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token            : A Shared Access Signature (SAS). Must be used in conjunction with')
            fprintf('%s\n', '                             storage account name. Environment variable: AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Delete all blobs ending with ".py" in a container that have not been modified for 10 days.')
            fprintf('%s\n', '        date=`date -d "10 days ago" ''+%Y-%m-%dT%H:%MZ''`')
            fprintf('%s\n', '        az storage blob delete-batch -s mycontainer --account-name mystorageaccount --pattern *.py')
            fprintf('%s\n', '        --if-unmodified-since $date --auth-mode login')
            fprintf('%s\n', '    Delete all the blobs in a directory named "dir" in a container named "mycontainer".')
            fprintf('%s\n', '        az storage blob delete-batch -s mycontainer --pattern dir/*')
            fprintf('%s\n', '    Delete the blobs with the format ''cli-2018-xx-xx.txt'' or ''cli-2019-xx-xx.txt'' in a container.')
            fprintf('%s\n', '        az storage blob delete-batch -s mycontainer --pattern cli-201[89]-??-??.txt')
            fprintf('%s\n', '    Delete all blobs with the format ''cli-201x-xx-xx.txt'' except cli-2018-xx-xx.txt'' and')
            fprintf('%s\n', '    ''cli-2019-xx-xx.txt'' in a container.')
            fprintf('%s\n', '        az storage blob delete-batch -s mycontainer --pattern cli-201[!89]-??-??.txt')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob delete-batch"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete_batch 
