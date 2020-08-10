classdef preview < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = preview()
            % az dls fs preview : Preview the content of a file in a Data Lake Store account.
            % Command group 'dls' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dls fs preview ';
        end
        function this = path(this, varargin)
            % The path in the specified Data Lake Store account where the action should take place. In the format '/folder/file.txt', where the first '/' after the DNS indicates the root of the file system.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = force(this, varargin)
            % Indicates that, if the preview is larger than 1MB, still retrieve it. This can potentially be very slow, depending on how large the file is.
            this.Options = [this.Options, '--force', varargin{:}];
        end

        function this = length(this, varargin)
            % The amount of data to preview in bytes. If not specified, attempts to preview the full file. If the file is > 1MB `--force` must be specified.
            this.Options = [this.Options, '--length', varargin{:}];
        end

        function this = offset(this, varargin)
            % The position in bytes to start the preview from.
            this.Options = [this.Options, '--offset', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
            this.Options = [this.Options, '--output', varargin{:}];
        end

        function this = query(this, varargin)
            % JMESPath query string. See http://jmespath.org/ for more information and examples.
            this.Options = [this.Options, '--query', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dls fs preview"
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
            fprintf('%s\n', '    az dls fs preview : Preview the content of a file in a Data Lake Store account.')
            fprintf('%s\n', '        Command group ''dls'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --path  [Required] : The path in the specified Data Lake Store account where the action should')
            fprintf('%s\n', '                         take place. In the format ''/folder/file.txt'', where the first ''/'' after the')
            fprintf('%s\n', '                         DNS indicates the root of the file system.')
            fprintf('%s\n', '    --force            : Indicates that, if the preview is larger than 1MB, still retrieve it. This')
            fprintf('%s\n', '                         can potentially be very slow, depending on how large the file is.')
            fprintf('%s\n', '    --length           : The amount of data to preview in bytes.')
            fprintf('%s\n', '        If not specified, attempts to preview the full file. If the file is > 1MB `--force` must be')
            fprintf('%s\n', '        specified.')
            fprintf('%s\n', '    --offset           : The position in bytes to start the preview from.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n       : Name of the Data Lake Store account.')
            fprintf('%s\n', '    --ids              : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                         resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                         should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dls fs preview"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class preview 
