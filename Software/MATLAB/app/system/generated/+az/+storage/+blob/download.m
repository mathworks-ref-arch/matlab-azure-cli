classdef download < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = download()
            % az storage blob download : Downloads a blob to a file path, with automatic chunking and progress
            % notifications.
            % Returns an instance of :class:`~azure.storage.blob.models.Blob` with properties and
            % metadata.
            this.BaseCmd = 'az storage blob download ';
        end
        function this = container_name(this, varargin)
            % The container name.
            this.Options = [this.Options, '--container-name', varargin{:}];
        end

        function this = file(this, varargin)
            % Path of file to write out to.
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

        function this = end_range(this, varargin)
            % End of byte range to use for downloading a section of the blob. If end_range is given, start_range must be provided. The start_range and end_range params are inclusive. Ex: start_range=0, end_range=511 will download first 512 bytes of blob.
            this.Options = [this.Options, '--end-range', varargin{:}];
        end

        function this = lease_id(this, varargin)
            % Required if the blob has an active lease.
            this.Options = [this.Options, '--lease-id', varargin{:}];
        end

        function this = max_connections(this, varargin)
            % If set to 2 or greater, an initial get will be done for the first self.MAX_SINGLE_GET_SIZE bytes of the blob. If this is the entire blob, the method returns at this point. If it is not, it will download the remaining data parallel using the number of threads equal to max_connections. Each chunk will be of size self.MAX_CHUNK_GET_SIZE. If set to 1, a single large get request will be done. This is not generally recommended but available if very few threads should be used, network requests are very expensive, or a non-seekable stream prevents parallel download. This may also be useful if many blobs are expected to be empty as an extra request is required for empty blobs if max_connections is greater than 1.  Default: 2.
            this.Options = [this.Options, '--max-connections', varargin{:}];
        end

        function this = no_progress(this, varargin)
            % Include this flag to disable progress reporting for the command.
            this.Options = [this.Options, '--no-progress', varargin{:}];
        end

        function this = open_mode(this, varargin)
            % Mode to use when opening the file. Note that specifying append only open_mode prevents parallel download. So, max_connections must be set to 1 if this open_mode is used.  Default: wb.
            this.Options = [this.Options, '--open-mode', varargin{:}];
        end

        function this = snapshot(this, varargin)
            % The snapshot parameter is an opaque DateTime value that, when present, specifies the blob snapshot to retrieve.
            this.Options = [this.Options, '--snapshot', varargin{:}];
        end

        function this = socket_timeout(this, varargin)
            % The socket timeout(secs), used by the service to regulate data flow.
            this.Options = [this.Options, '--socket-timeout', varargin{:}];
        end

        function this = start_range(this, varargin)
            % Start of byte range to use for downloading a section of the blob. If no end_range is given, all bytes after the start_range will be downloaded. The start_range and end_range params are inclusive. Ex: start_range=0, end_range=511 will download first 512 bytes of blob.
            this.Options = [this.Options, '--start-range', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = validate_content(this, varargin)
            % If set to true, validates an MD5 hash for each retrieved portion of the blob. This is primarily valuable for detecting bitflips on the wire if using http instead of https as https (the default) will already validate. Note that the service will only return transactional MD5s for chunks 4MB or less so the first get request will be of size self.MAX_CHUNK_GET_SIZE instead of self.MAX_SINGLE_GET_SIZE. If self.MAX_CHUNK_GET_SIZE was set to greater than 4MB an error will be thrown. As computing the MD5 takes processing time and more requests will need to be done due to the reduced chunk size there may be some increase in latency. Precondition Arguments
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage blob download"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage blob download : Downloads a blob to a file path, with automatic chunking and progress')
            fprintf('%s\n', '    notifications.')
            fprintf('%s\n', '        Returns an instance of :class:`~azure.storage.blob.models.Blob` with properties and')
            fprintf('%s\n', '        metadata.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --container-name -c [Required] : The container name.')
            fprintf('%s\n', '    --file -f           [Required] : Path of file to write out to.')
            fprintf('%s\n', '    --name -n           [Required] : The blob name.')
            fprintf('%s\n', '    --auth-mode                    : The mode in which to run the command. "login" mode will')
            fprintf('%s\n', '                                     directly use your login credentials for the authentication. The')
            fprintf('%s\n', '                                     legacy "key" mode will attempt to query for an account key if')
            fprintf('%s\n', '                                     no authentication parameters for the account are provided.')
            fprintf('%s\n', '                                     Environment variable: AZURE_STORAGE_AUTH_MODE.  Allowed values:')
            fprintf('%s\n', '                                     key, login.')
            fprintf('%s\n', '    --end-range                    : End of byte range to use for downloading a section of the blob.')
            fprintf('%s\n', '                                     If end_range is given, start_range must be provided. The')
            fprintf('%s\n', '                                     start_range and end_range params are inclusive. Ex:')
            fprintf('%s\n', '                                     start_range=0, end_range=511 will download first 512 bytes of')
            fprintf('%s\n', '                                     blob.')
            fprintf('%s\n', '    --lease-id                     : Required if the blob has an active lease.')
            fprintf('%s\n', '    --max-connections              : If set to 2 or greater, an initial get will be done for the')
            fprintf('%s\n', '                                     first self.MAX_SINGLE_GET_SIZE bytes of the blob. If this is')
            fprintf('%s\n', '                                     the entire blob, the method returns at this point. If it is')
            fprintf('%s\n', '                                     not, it will download the remaining data parallel using the')
            fprintf('%s\n', '                                     number of threads equal to max_connections. Each chunk will be')
            fprintf('%s\n', '                                     of size self.MAX_CHUNK_GET_SIZE. If set to 1, a single large')
            fprintf('%s\n', '                                     get request will be done. This is not generally recommended but')
            fprintf('%s\n', '                                     available if very few threads should be used, network requests')
            fprintf('%s\n', '                                     are very expensive, or a non-seekable stream prevents parallel')
            fprintf('%s\n', '                                     download. This may also be useful if many blobs are expected to')
            fprintf('%s\n', '                                     be empty as an extra request is required for empty blobs if')
            fprintf('%s\n', '                                     max_connections is greater than 1.  Default: 2.')
            fprintf('%s\n', '    --no-progress                  : Include this flag to disable progress reporting for the')
            fprintf('%s\n', '                                     command.')
            fprintf('%s\n', '    --open-mode                    : Mode to use when opening the file. Note that specifying append')
            fprintf('%s\n', '                                     only open_mode prevents parallel download. So, max_connections')
            fprintf('%s\n', '                                     must be set to 1 if this open_mode is used.  Default: wb.')
            fprintf('%s\n', '    --snapshot                     : The snapshot parameter is an opaque DateTime value that, when')
            fprintf('%s\n', '                                     present, specifies the blob snapshot to retrieve.')
            fprintf('%s\n', '    --socket-timeout               : The socket timeout(secs), used by the service to regulate data')
            fprintf('%s\n', '                                     flow.')
            fprintf('%s\n', '    --start-range                  : Start of byte range to use for downloading a section of the')
            fprintf('%s\n', '                                     blob. If no end_range is given, all bytes after the start_range')
            fprintf('%s\n', '                                     will be downloaded. The start_range and end_range params are')
            fprintf('%s\n', '                                     inclusive. Ex: start_range=0, end_range=511 will download first')
            fprintf('%s\n', '                                     512 bytes of blob.')
            fprintf('%s\n', '    --timeout                      : Request timeout in seconds. Applies to each call to the')
            fprintf('%s\n', '                                     service.')
            fprintf('%s\n', '    --validate-content             : If set to true, validates an MD5 hash for each retrieved')
            fprintf('%s\n', '                                     portion of the blob. This is primarily valuable for detecting')
            fprintf('%s\n', '                                     bitflips on the wire if using http instead of https as https')
            fprintf('%s\n', '                                     (the default) will already validate. Note that the service will')
            fprintf('%s\n', '                                     only return transactional MD5s for chunks 4MB or less so the')
            fprintf('%s\n', '                                     first get request will be of size self.MAX_CHUNK_GET_SIZE')
            fprintf('%s\n', '                                     instead of self.MAX_SINGLE_GET_SIZE. If self.MAX_CHUNK_GET_SIZE')
            fprintf('%s\n', '                                     was set to greater than 4MB an error will be thrown. As')
            fprintf('%s\n', '                                     computing the MD5 takes processing time and more requests will')
            fprintf('%s\n', '                                     need to be done due to the reduced chunk size there may be some')
            fprintf('%s\n', '                                     increase in latency.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az storage blob download"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class download 
