classdef delete_batch < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete_batch()
            % az storage file delete-batch : Delete files from an Azure Storage File Share.
            this.BaseCmd = 'az storage file delete-batch ';
        end
        function this = source(this, varargin)
            % The source of the file delete operation. The source can be the file share URL or the share name.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = dryrun(this, varargin)
            % List the files and blobs to be deleted. No actual data deletion will occur.
            this.Options = [this.Options, '--dryrun', varargin{:}];
        end

        function this = pattern(this, varargin)
            % The pattern used for file globbing. The supported patterns are '*', '?', '[seq]', and '[!seq]'. For more information, please refer to https://docs.python.org/3.7/library/fnmatch.html. When you use '*' in --pattern, it will match any character including the the directory separator '/'.
            this.Options = [this.Options, '--pattern', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Storage Account Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
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
            fprintf('%s\n', '    az storage file delete-batch : Delete files from an Azure Storage File Share.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --source -s [Required] : The source of the file delete operation. The source can be the file')
            fprintf('%s\n', '                             share URL or the share name.')
            fprintf('%s\n', '    --dryrun               : List the files and blobs to be deleted. No actual data deletion will')
            fprintf('%s\n', '                             occur.')
            fprintf('%s\n', '    --pattern              : The pattern used for file globbing. The supported patterns are ''*'',')
            fprintf('%s\n', '                             ''?'', ''[seq]'', and ''[!seq]''. For more information, please refer to')
            fprintf('%s\n', '                             https://docs.python.org/3.7/library/fnmatch.html.')
            fprintf('%s\n', '        When you use ''*'' in --pattern, it will match any character including the the directory')
            fprintf('%s\n', '        separator ''/''.')
            fprintf('%s\n', '    --timeout              : Request timeout in seconds. Applies to each call to the service.')
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
            fprintf('%s\n', '    Delete files from an Azure Storage File Share. (autogenerated)')
            fprintf('%s\n', '        az storage file delete-batch --account-key 00000000 --account-name MyAccount --source')
            fprintf('%s\n', '        /path/to/file')
            fprintf('%s\n', '    Delete files from an Azure Storage File Share. (autogenerated)')
            fprintf('%s\n', '        az storage file delete-batch --account-key 00000000 --account-name MyAccount --pattern *.py')
            fprintf('%s\n', '        --source /path/to/file')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage file delete-batch"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete_batch 