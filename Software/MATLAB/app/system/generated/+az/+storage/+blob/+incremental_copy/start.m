classdef start < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = start()
            % az storage blob incremental-copy start : Copies an incremental copy of a blob asynchronously.
            % This operation returns a copy operation properties object, including a copy ID you can use
            % to check or abort the copy operation. The Blob service copies blobs on a best-effort basis.
            % The source blob for an incremental copy operation must be a page blob. Call
            % get_blob_properties on the destination blob to check the status of the copy operation. The
            % final blob will be committed when the copy completes.
            this.BaseCmd = 'az storage blob incremental-copy start ';
        end
        function this = destination_blob(this, varargin)
            % Name of the destination blob. If the exists, it will be overwritten.
            this.Options = [this.Options, '--destination-blob', varargin{:}];
        end

        function this = destination_container(this, varargin)
            % The container name.
            this.Options = [this.Options, '--destination-container', varargin{:}];
        end

        function this = auth_mode(this, varargin)
            % The mode in which to run the command. "login" mode will directly use your login credentials for the authentication. The legacy "key" mode will attempt to query for an account key if no authentication parameters for the account are provided. Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.
            this.Options = [this.Options, '--auth-mode', varargin{:}];
        end

        function this = destination_lease_id(this, varargin)
            % The lease ID specified for this header must match the lease ID of the destination blob. If the request does not include the lease ID or it is not valid, the operation fails with status code 412 (Precondition Failed).
            this.Options = [this.Options, '--destination-lease-id', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs. This overwrites any existing metadata.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service. Copy Source Arguments
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = source_account_key(this, varargin)
            % The storage account key of the source blob.
            this.Options = [this.Options, '--source-account-key', varargin{:}];
        end

        function this = source_account_name(this, varargin)
            % The storage account name of the source blob.
            this.Options = [this.Options, '--source-account-name', varargin{:}];
        end

        function this = source_blob(this, varargin)
            % The blob name for the source storage account.
            this.Options = [this.Options, '--source-blob', varargin{:}];
        end

        function this = source_container(this, varargin)
            % The container name for the source storage account.
            this.Options = [this.Options, '--source-container', varargin{:}];
        end

        function this = source_lease_id(this, varargin)
            % Specify this to perform the Copy Blob operation only if the lease ID given matches the active lease ID of the source blob.
            this.Options = [this.Options, '--source-lease-id', varargin{:}];
        end

        function this = source_sas(this, varargin)
            % The shared access signature for the source storage account.
            this.Options = [this.Options, '--source-sas', varargin{:}];
        end

        function this = source_snapshot(this, varargin)
            % The blob snapshot for the source storage account.
            this.Options = [this.Options, '--source-snapshot', varargin{:}];
        end

        function this = source_uri(this, varargin)
            % A URL of up to 2 KB in length that specifies an Azure page blob. The value should be URL-encoded as it would appear in a request URI. The copy source must be a snapshot and include a valid SAS token or be public. Example: `https://myaccount.blob.core.windows.net/mycont ainer/myblob?snapshot=<DateTime>&sastoken`. Pre-condition Arguments
            this.Options = [this.Options, '--source-uri', varargin{:}];
        end

        function this = destination_if_match(this, varargin)
            % An ETag value, or the wildcard character (*). Specify an ETag value for this conditional header to copy the blob only if the specified ETag value matches the ETag value for an existing destination blob. If the ETag for the destination blob does not match the ETag specified for If-Match, the Blob service returns status code 412 (Precondition Failed).
            this.Options = [this.Options, '--destination-if-match', varargin{:}];
        end

        function this = destination_if_modified_since(this, varargin)
            % A DateTime value. Azure expects the date value passed in to be UTC. If timezone is included, any non-UTC datetimes will be converted to UTC. If a date is passed in without timezone info, it is assumed to be UTC. Specify this conditional header to copy the blob only if the destination blob has been modified since the specified date/time. If the destination blob has not been modified, the Blob service returns status code 412 (Precondition Failed).
            this.Options = [this.Options, '--destination-if-modified-since', varargin{:}];
        end

        function this = destination_if_none_match(this, varargin)
            % An ETag value, or the wildcard character (*). Specify an ETag value for this conditional header to copy the blob only if the specified ETag value does not match the ETag value for the destination blob. Specify the wildcard character (*) to perform the operation only if the destination blob does not exist. If the specified condition isn't met, the Blob service returns status code 412 (Precondition Failed).
            this.Options = [this.Options, '--destination-if-none-match', varargin{:}];
        end

        function this = destination_if_unmodified_since(this, varargin)
            % A DateTime value. Azure expects the date value passed in to be UTC. If timezone is included, any non-UTC datetimes will be converted to UTC. If a date is passed in without timezone info, it is assumed to be UTC. Specify this conditional header to copy the blob only if the destination blob has not been modified since the specified ate/time. If the destination blob has been modified, the Blob service returns status code 412 (Precondition Failed). Storage Account Arguments
            this.Options = [this.Options, '--destination-if-unmodified-since', varargin{:}];
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
            fprintf('%s\n', '    az storage blob incremental-copy start : Copies an incremental copy of a blob asynchronously.')
            fprintf('%s\n', '        This operation returns a copy operation properties object, including a copy ID you can use')
            fprintf('%s\n', '        to check or abort the copy operation. The Blob service copies blobs on a best-effort basis.')
            fprintf('%s\n', '        The source blob for an incremental copy operation must be a page blob. Call')
            fprintf('%s\n', '        get_blob_properties on the destination blob to check the status of the copy operation. The')
            fprintf('%s\n', '        final blob will be committed when the copy completes.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination-blob -b      [Required] : Name of the destination blob. If the exists, it will be')
            fprintf('%s\n', '                                            overwritten.')
            fprintf('%s\n', '    --destination-container -c [Required] : The container name.')
            fprintf('%s\n', '    --auth-mode                           : The mode in which to run the command. "login" mode will')
            fprintf('%s\n', '                                            directly use your login credentials for the')
            fprintf('%s\n', '                                            authentication. The legacy "key" mode will attempt to')
            fprintf('%s\n', '                                            query for an account key if no authentication parameters')
            fprintf('%s\n', '                                            for the account are provided. Environment variable:')
            fprintf('%s\n', '                                            AZURE_STORAGE_AUTH_MODE.  Allowed values: key, login.')
            fprintf('%s\n', '    --destination-lease-id                : The lease ID specified for this header must match the')
            fprintf('%s\n', '                                            lease ID of the destination blob. If the request does')
            fprintf('%s\n', '                                            not include the lease ID or it is not valid, the')
            fprintf('%s\n', '                                            operation fails with status code 412 (Precondition')
            fprintf('%s\n', '                                            Failed).')
            fprintf('%s\n', '    --metadata                            : Metadata in space-separated key=value pairs. This')
            fprintf('%s\n', '                                            overwrites any existing metadata.')
            fprintf('%s\n', '    --timeout                             : Request timeout in seconds. Applies to each call to the')
            fprintf('%s\n', '                                            service.')
            fprintf('%s\n', 'Copy Source Arguments')
            fprintf('%s\n', '    --source-account-key                  : The storage account key of the source blob.')
            fprintf('%s\n', '    --source-account-name                 : The storage account name of the source blob.')
            fprintf('%s\n', '    --source-blob                         : The blob name for the source storage account.')
            fprintf('%s\n', '    --source-container                    : The container name for the source storage account.')
            fprintf('%s\n', '    --source-lease-id                     : Specify this to perform the Copy Blob operation only if')
            fprintf('%s\n', '                                            the lease ID given matches the active lease ID of the')
            fprintf('%s\n', '                                            source blob.')
            fprintf('%s\n', '    --source-sas                          : The shared access signature for the source storage')
            fprintf('%s\n', '                                            account.')
            fprintf('%s\n', '    --source-snapshot                     : The blob snapshot for the source storage account.')
            fprintf('%s\n', '    --source-uri -u                       : A URL of up to 2 KB in length that specifies an Azure')
            fprintf('%s\n', '                                            page blob. The value should be URL-encoded as it would')
            fprintf('%s\n', '                                            appear in a request URI. The copy source must be a')
            fprintf('%s\n', '                                            snapshot and include a valid SAS token or be public.')
            fprintf('%s\n', '                                            Example: `https://myaccount.blob.core.windows.net/mycont')
            fprintf('%s\n', '                                            ainer/myblob?snapshot=<DateTime>&sastoken`.')
            fprintf('%s\n', 'Pre-condition Arguments')
            fprintf('%s\n', '    --destination-if-match                : An ETag value, or the wildcard character (*). Specify an')
            fprintf('%s\n', '                                            ETag value for this conditional header to copy the blob')
            fprintf('%s\n', '                                            only if the specified ETag value matches the ETag value')
            fprintf('%s\n', '                                            for an existing destination blob. If the ETag for the')
            fprintf('%s\n', '                                            destination blob does not match the ETag specified for')
            fprintf('%s\n', '                                            If-Match, the Blob service returns status code 412')
            fprintf('%s\n', '                                            (Precondition Failed).')
            fprintf('%s\n', '    --destination-if-modified-since       : A DateTime value. Azure expects the date value passed in')
            fprintf('%s\n', '                                            to be UTC. If timezone is included, any non-UTC')
            fprintf('%s\n', '                                            datetimes will be converted to UTC. If a date is passed')
            fprintf('%s\n', '                                            in without timezone info, it is assumed to be UTC.')
            fprintf('%s\n', '                                            Specify this conditional header to copy the blob only if')
            fprintf('%s\n', '                                            the destination blob has been modified since the')
            fprintf('%s\n', '                                            specified date/time. If the destination blob has not')
            fprintf('%s\n', '                                            been modified, the Blob service returns status code 412')
            fprintf('%s\n', '                                            (Precondition Failed).')
            fprintf('%s\n', '    --destination-if-none-match           : An ETag value, or the wildcard character (*). Specify an')
            fprintf('%s\n', '                                            ETag value for this conditional header to copy the blob')
            fprintf('%s\n', '                                            only if the specified ETag value does not match the ETag')
            fprintf('%s\n', '                                            value for the destination blob. Specify the wildcard')
            fprintf('%s\n', '                                            character (*) to perform the operation only if the')
            fprintf('%s\n', '                                            destination blob does not exist. If the specified')
            fprintf('%s\n', '                                            condition isn''t met, the Blob service returns status')
            fprintf('%s\n', '                                            code 412 (Precondition Failed).')
            fprintf('%s\n', '    --destination-if-unmodified-since     : A DateTime value. Azure expects the date value passed in')
            fprintf('%s\n', '                                            to be UTC. If timezone is included, any non-UTC')
            fprintf('%s\n', '                                            datetimes will be converted to UTC. If a date is passed')
            fprintf('%s\n', '                                            in without timezone info, it is assumed to be UTC.')
            fprintf('%s\n', '                                            Specify this conditional header to copy the blob only if')
            fprintf('%s\n', '                                            the destination blob has not been modified since the')
            fprintf('%s\n', '                                            specified ate/time. If the destination blob has been')
            fprintf('%s\n', '                                            modified, the Blob service returns status code 412')
            fprintf('%s\n', '                                            (Precondition Failed).')
            fprintf('%s\n', 'Storage Account Arguments')
            fprintf('%s\n', '    --account-key                         : Storage account key. Must be used in conjunction with')
            fprintf('%s\n', '                                            storage account name. Environment variable:')
            fprintf('%s\n', '                                            AZURE_STORAGE_KEY.')
            fprintf('%s\n', '    --account-name                        : Storage account name. Related environment variable:')
            fprintf('%s\n', '                                            AZURE_STORAGE_ACCOUNT. Must be used in conjunction with')
            fprintf('%s\n', '                                            either storage account key or a SAS token. If neither')
            fprintf('%s\n', '                                            are present, the command will try to query the storage')
            fprintf('%s\n', '                                            account key using the authenticated Azure account. If a')
            fprintf('%s\n', '                                            large number of storage commands are executed the API')
            fprintf('%s\n', '                                            quota may be hit.')
            fprintf('%s\n', '    --connection-string                   : Storage account connection string. Environment variable:')
            fprintf('%s\n', '                                            AZURE_STORAGE_CONNECTION_STRING.')
            fprintf('%s\n', '    --sas-token                           : A Shared Access Signature (SAS). Must be used in')
            fprintf('%s\n', '                                            conjunction with storage account name. Environment')
            fprintf('%s\n', '                                            variable: AZURE_STORAGE_SAS_TOKEN.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                           : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                            table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                               : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                            information and examples.')
            fprintf('%s\n', '    --subscription                        : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                            default subscription using `az account set -s')
            fprintf('%s\n', '                                            NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                             : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                            logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Upload all files that end with .py unless blob exists and has been modified since given date.')
            fprintf('%s\n', '        az storage blob incremental-copy start --source-container MySourceContainer --source-blob')
            fprintf('%s\n', '        MyBlob --source-account-name MySourceAccount --source-account-key MySourceKey --source-')
            fprintf('%s\n', '        snapshot MySnapshot --destination-container MyDestinationContainer --destination-blob')
            fprintf('%s\n', '        MyDestinationBlob')
            fprintf('%s\n', '    Copies an incremental copy of a blob asynchronously. (autogenerated)')
            fprintf('%s\n', '        az storage blob incremental-copy start --account-key 00000000 --account-name MyAccount')
            fprintf('%s\n', '        --destination-blob MyDestinationBlob --destination-container MyDestinationContainer')
            fprintf('%s\n', '        --source-account-key MySourceKey --source-account-name MySourceAccount --source-blob MyBlob')
            fprintf('%s\n', '        --source-container MySourceContainer --source-snapshot MySnapshot')
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob incremental-copy start"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class start 
