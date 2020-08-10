classdef download < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = download()
            % az storage file download : Downloads a file to a file path, with automatic chunking and progress
            % notifications.
            % Returns an instance of File with properties and metadata.
            this.BaseCmd = 'az storage file download ';
        end
        function this = path(this, varargin)
            % The path to the file within the file share.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = share_name(this, varargin)
            % The file share name.
            this.Options = [this.Options, '--share-name', varargin{:}];
        end

        function this = dest(this, varargin)
            % Path of the file to write to. The source filename will be used if not specified.
            this.Options = [this.Options, '--dest', varargin{:}];
        end

        function this = end_range(this, varargin)
            % End of byte range to use for downloading a section of the file. If end_range is given, start_range must be provided. The start_range and end_range params are inclusive. Ex: start_range=0, end_range=511 will download first 512 bytes of file.
            this.Options = [this.Options, '--end-range', varargin{:}];
        end

        function this = max_connections(this, varargin)
            % If set to 2 or greater, an initial get will be done for the first self.MAX_SINGLE_GET_SIZE bytes of the file. If this is the entire file, the method returns at this point. If it is not, it will download the remaining data parallel using the number of threads equal to max_connections. Each chunk will be of size self.MAX_CHUNK_GET_SIZE. If set to 1, a single large get request will be done. This is not generally recommended but available if very few threads should be used, network requests are very expensive, or a non-seekable stream prevents parallel download. This may also be valuable if the file is being concurrently modified to enforce atomicity or if many files are expected to be empty as an extra request is required for empty files if max_connections is greater than 1.  Default: 2.
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
            % A string that represents the snapshot version, if applicable.
            this.Options = [this.Options, '--snapshot', varargin{:}];
        end

        function this = start_range(this, varargin)
            % Start of byte range to use for downloading a section of the file. If no end_range is given, all bytes after the start_range will be downloaded. The start_range and end_range params are inclusive. Ex: start_range=0, end_range=511 will download first 512 bytes of file.
            this.Options = [this.Options, '--start-range', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds. Applies to each call to the service.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = validate_content(this, varargin)
            % If set to true, validates an MD5 hash for each retrieved portion of the file. This is primarily valuable for detecting bitflips on the wire if using http instead of https as https (the default) will already validate. Note that the service will only return transactional MD5s for chunks 4MB or less so the first get request will be of size self.MAX_CHUNK_GET_SIZE instead of self.MAX_SINGLE_GET_SIZE. If self.MAX_CHUNK_GET_SIZE was set to greater than 4MB an error will be thrown. As computing the MD5 takes processing time and more requests will need to be done due to the reduced chunk size there may be some increase in latency. Storage Account Arguments
            this.Options = [this.Options, '--validate-content', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az storage file download"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az storage file download : Downloads a file to a file path, with automatic chunking and progress')
            fprintf('%s\n', '    notifications.')
            fprintf('%s\n', '        Returns an instance of File with properties and metadata.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --path -p       [Required] : The path to the file within the file share.')
            fprintf('%s\n', '    --share-name -s [Required] : The file share name.')
            fprintf('%s\n', '    --dest                     : Path of the file to write to. The source filename will be used if')
            fprintf('%s\n', '                                 not specified.')
            fprintf('%s\n', '    --end-range                : End of byte range to use for downloading a section of the file. If')
            fprintf('%s\n', '                                 end_range is given, start_range must be provided. The start_range')
            fprintf('%s\n', '                                 and end_range params are inclusive. Ex: start_range=0,')
            fprintf('%s\n', '                                 end_range=511 will download first 512 bytes of file.')
            fprintf('%s\n', '    --max-connections          : If set to 2 or greater, an initial get will be done for the first')
            fprintf('%s\n', '                                 self.MAX_SINGLE_GET_SIZE bytes of the file. If this is the entire')
            fprintf('%s\n', '                                 file, the method returns at this point. If it is not, it will')
            fprintf('%s\n', '                                 download the remaining data parallel using the number of threads')
            fprintf('%s\n', '                                 equal to max_connections. Each chunk will be of size')
            fprintf('%s\n', '                                 self.MAX_CHUNK_GET_SIZE. If set to 1, a single large get request')
            fprintf('%s\n', '                                 will be done. This is not generally recommended but available if')
            fprintf('%s\n', '                                 very few threads should be used, network requests are very')
            fprintf('%s\n', '                                 expensive, or a non-seekable stream prevents parallel download.')
            fprintf('%s\n', '                                 This may also be valuable if the file is being concurrently')
            fprintf('%s\n', '                                 modified to enforce atomicity or if many files are expected to be')
            fprintf('%s\n', '                                 empty as an extra request is required for empty files if')
            fprintf('%s\n', '                                 max_connections is greater than 1.  Default: 2.')
            fprintf('%s\n', '    --no-progress              : Include this flag to disable progress reporting for the command.')
            fprintf('%s\n', '    --open-mode                : Mode to use when opening the file. Note that specifying append only')
            fprintf('%s\n', '                                 open_mode prevents parallel download. So, max_connections must be')
            fprintf('%s\n', '                                 set to 1 if this open_mode is used.  Default: wb.')
            fprintf('%s\n', '    --snapshot                 : A string that represents the snapshot version, if applicable.')
            fprintf('%s\n', '    --start-range              : Start of byte range to use for downloading a section of the file.')
            fprintf('%s\n', '                                 If no end_range is given, all bytes after the start_range will be')
            fprintf('%s\n', '                                 downloaded. The start_range and end_range params are inclusive. Ex:')
            fprintf('%s\n', '                                 start_range=0, end_range=511 will download first 512 bytes of file.')
            fprintf('%s\n', '    --timeout                  : Request timeout in seconds. Applies to each call to the service.')
            fprintf('%s\n', '    --validate-content         : If set to true, validates an MD5 hash for each retrieved portion of')
            fprintf('%s\n', '                                 the file. This is primarily valuable for detecting bitflips on the')
            fprintf('%s\n', '                                 wire if using http instead of https as https (the default) will')
            fprintf('%s\n', '                                 already validate. Note that the service will only return')
            fprintf('%s\n', '                                 transactional MD5s for chunks 4MB or less so the first get request')
            fprintf('%s\n', '                                 will be of size self.MAX_CHUNK_GET_SIZE instead of')
            fprintf('%s\n', '                                 self.MAX_SINGLE_GET_SIZE. If self.MAX_CHUNK_GET_SIZE was set to')
            fprintf('%s\n', '                                 greater than 4MB an error will be thrown. As computing the MD5')
            fprintf('%s\n', '                                 takes processing time and more requests will need to be done due to')
            fprintf('%s\n', '                                 the reduced chunk size there may be some increase in latency.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az storage file download"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class download 
