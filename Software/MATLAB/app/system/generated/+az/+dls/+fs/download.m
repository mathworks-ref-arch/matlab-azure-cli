classdef download < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = download()
            % az dls fs download : Download a file or folder from a Data Lake Store account to the local
            % machine.
            % Command group 'dls' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dls fs download ';
        end
        function this = destination_path(this, varargin)
            % The local path where the file or folder will be downloaded to.
            this.Options = [this.Options, '--destination-path', varargin{:}];
        end

        function this = source_path(this, varargin)
            % The full path in the Data Lake Store filesystem to download the file or folder from.
            this.Options = [this.Options, '--source-path', varargin{:}];
        end

        function this = block_size(this, varargin)
            % Size of a block, in bytes.  Default: 4194304. Within each chunk, a smaller block is written for each API call. A block cannot be bigger than a chunk and must be bigger than a buffer.
            this.Options = [this.Options, '--block-size', varargin{:}];
        end

        function this = buffer_size(this, varargin)
            % Size of the transfer buffer, in bytes.  Default: 4194304. A buffer cannot be bigger than a chunk and cannot be smaller than a block.
            this.Options = [this.Options, '--buffer-size', varargin{:}];
        end

        function this = chunk_size(this, varargin)
            % Size of a chunk, in bytes.  Default: 268435456. Large files are split into chunks. Files smaller than this size will always be transferred in a single thread.
            this.Options = [this.Options, '--chunk-size', varargin{:}];
        end

        function this = overwrite(this, varargin)
            % Indicates that, if the destination file or folder exists, it should be overwritten.
            this.Options = [this.Options, '--overwrite', varargin{:}];
        end

        function this = thread_count(this, varargin)
            % Parallelism of the download. Default: The number of cores in the local machine.
            this.Options = [this.Options, '--thread-count', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account(this, varargin)
            % Name of the Data Lake Store account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az dls fs download : Download a file or folder from a Data Lake Store account to the local')
            fprintf('%s\n', '    machine.')
            fprintf('%s\n', '        Command group ''dls'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination-path [Required] : The local path where the file or folder will be downloaded to.')
            fprintf('%s\n', '    --source-path      [Required] : The full path in the Data Lake Store filesystem to download the')
            fprintf('%s\n', '                                    file or folder from.')
            fprintf('%s\n', '    --block-size                  : Size of a block, in bytes.  Default: 4194304.')
            fprintf('%s\n', '        Within each chunk, a smaller block is written for each API call. A block cannot be bigger')
            fprintf('%s\n', '        than a chunk and must be bigger than a buffer.')
            fprintf('%s\n', '    --buffer-size                 : Size of the transfer buffer, in bytes.  Default: 4194304.')
            fprintf('%s\n', '        A buffer cannot be bigger than a chunk and cannot be smaller than a block.')
            fprintf('%s\n', '    --chunk-size                  : Size of a chunk, in bytes.  Default: 268435456.')
            fprintf('%s\n', '        Large files are split into chunks. Files smaller than this size will always be transferred')
            fprintf('%s\n', '        in a single thread.')
            fprintf('%s\n', '    --overwrite                   : Indicates that, if the destination file or folder exists, it')
            fprintf('%s\n', '                                    should be overwritten.')
            fprintf('%s\n', '    --thread-count                : Parallelism of the download. Default: The number of cores in the')
            fprintf('%s\n', '                                    local machine.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n                  : Name of the Data Lake Store account.')
            fprintf('%s\n', '    --ids                         : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                    complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                    arguments. You should provide either --ids or other ''Resource')
            fprintf('%s\n', '                                    Id'' arguments.')
            fprintf('%s\n', '    --subscription                : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                    subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                       : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                   : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                    yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                       : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                    information and examples.')
            fprintf('%s\n', '    --verbose                     : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Download a file or folder from a Data Lake Store account to the local machine. (autogenerated)')
            fprintf('%s\n', '        az dls fs download --account {account} --destination-path {destination-path} --source-path')
            fprintf('%s\n', '        {source-path}')
            fprintf('%s\n', 'For more specific examples, use: az find "az dls fs download"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class download 
