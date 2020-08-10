classdef start_batch < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = start_batch()
            % az storage blob copy start-batch : Copy multiple blobs to a blob container. Use `az storage blob
            % show` to check the status of the blobs.
            this.BaseCmd = 'az storage blob copy start-batch ';
        end
        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = destination_container(this, varargin)
            % The blob container where the selected source files or blobs will be copied to.
            this.Options = [this.Options, '--destination-container', varargin{:}];
        end

        function this = destination_path(this, varargin)
            % The destination path that will be appended to the blob name.
            this.Options = [this.Options, '--destination-path', varargin{:}];
        end

        function this = dryrun(this, varargin)
            % List the files or blobs to be uploaded. No actual data transfer will occur.
            this.Options = [this.Options, '--dryrun', varargin{:}];
        end

        function this = pattern(this, varargin)
            % The pattern used for globbing files or blobs in the source. The supported patterns are '*', '?', '[seq]', and '[!seq]'. For more information, please refer to https://docs.python.org/3.7/library/fnmatch.html. When you use '*' in --pattern, it will match any character including the the directory separator '/'. Copy Source Arguments
            this.Options = [this.Options, '--pattern', varargin{:}];
        end

        function this = source_account_key(this, varargin)
            % The account key for the source storage account.
            this.Options = [this.Options, '--source-account-key', varargin{:}];
        end

        function this = source_account_name(this, varargin)
            % The source storage account from which the files or blobs are copied to the destination. If omitted, the source account is used.
            this.Options = [this.Options, '--source-account-name', varargin{:}];
        end

        function this = source_container(this, varargin)
            % The source container from which blobs are copied.
            this.Options = [this.Options, '--source-container', varargin{:}];
        end

        function this = source_sas(this, varargin)
            % The shared access signature for the source storage account.
            this.Options = [this.Options, '--source-sas', varargin{:}];
        end

        function this = source_share(this, varargin)
            % The source share from which files are copied.
            this.Options = [this.Options, '--source-share', varargin{:}];
        end

        function this = source_uri(this, varargin)
            % A URI specifying a file share or blob container from which the files or blobs are copied. If the source is in another account, the source must either be public or be authenticated by using a shared access signature. Storage Account Arguments
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
            fprintf('%s\n', '    az storage blob copy start-batch : Copy multiple blobs to a blob container. Use `az storage blob')
            fprintf('%s\n', '    show` to check the status of the blobs.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --auth-mode                : The mode in which to run the command. "login" mode will directly')
            fprintf('%s\n', '                                 use your login credentials for the authentication. The legacy "key"')
            fprintf('%s\n', '                                 mode will attempt to query for an account key if no authentication')
            fprintf('%s\n', '                                 parameters for the account are provided. Environment variable:')
            fprintf('%s\n', '                                 AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
            fprintf('%s\n', '    --destination-container -c : The blob container where the selected source files or blobs will be')
            fprintf('%s\n', '                                 copied to.')
            fprintf('%s\n', '    --destination-path         : The destination path that will be appended to the blob name.')
            fprintf('%s\n', '    --dryrun                   : List the files or blobs to be uploaded. No actual data transfer')
            fprintf('%s\n', '                                 will occur.')
            fprintf('%s\n', '    --pattern                  : The pattern used for globbing files or blobs in the source. The')
            fprintf('%s\n', '                                 supported patterns are ''*'', ''?'', ''[seq]'', and ''[!seq]''. For more')
            fprintf('%s\n', '                                 information, please refer to')
            fprintf('%s\n', '                                 https://docs.python.org/3.7/library/fnmatch.html.')
            fprintf('%s\n', '        When you use ''*'' in --pattern, it will match any character including the the directory')
            fprintf('%s\n', '        separator ''/''.')
            fprintf('%s\n', 'Copy Source Arguments')
            fprintf('%s\n', '    --source-account-key       : The account key for the source storage account.')
            fprintf('%s\n', '    --source-account-name      : The source storage account from which the files or blobs are copied')
            fprintf('%s\n', '                                 to the destination. If omitted, the source account is used.')
            fprintf('%s\n', '    --source-container         : The source container from which blobs are copied.')
            fprintf('%s\n', '    --source-sas               : The shared access signature for the source storage account.')
            fprintf('%s\n', '    --source-share             : The source share from which files are copied.')
            fprintf('%s\n', '    --source-uri               : A URI specifying a file share or blob container from which the')
            fprintf('%s\n', '                                 files or blobs are copied.')
            fprintf('%s\n', '        If the source is in another account, the source must either be public or be authenticated by')
            fprintf('%s\n', '        using a shared access signature.')
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
            fprintf('%s\n', '    Copy multiple blobs to a blob container. Use `az storage blob show` to check the status of the')
            fprintf('%s\n', '    blobs. (autogenerated)')
            fprintf('%s\n', '        az storage blob copy start-batch --account-key 00000000 --account-name MyAccount')
            fprintf('%s\n', '        --destination-container MyDestinationContainer --source-account-key MySourceKey --source-')
            fprintf('%s\n', '        account-name MySourceAccount --source-container MySourceContainer')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob copy start-batch"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class start_batch 
