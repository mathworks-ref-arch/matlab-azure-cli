classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az local-context delete : Delete local context data.
            % Command group 'local-context' is experimental and not covered by customer support.
            % Please use with discretion.
            this.BaseCmd = 'az local-context delete ';
        end
        function this = all(this, varargin)
            % Clear all local context data. Either --name or --all can be specified.
            this.Options = [this.Options, '--all', varargin{:}];
        end

        function this = name(this, varargin)
            % Space-separated list of local context parameter names. Either --name or --all can be specified.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = purge(this, varargin)
            % Delete local context file from working directory. Only available when --all is specified.
            this.Options = [this.Options, '--purge', varargin{:}];
        end

        function this = recursive(this, varargin)
            % Indicates this is recursive delete of local context. Only available when --all is specified.
            this.Options = [this.Options, '--recursive', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation. Only available when --all is specified.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            fprintf('%s\n', '    az local-context delete : Delete local context data.')
            fprintf('%s\n', '        Command group ''local-context'' is experimental and not covered by customer support.')
            fprintf('%s\n', '        Please use with discretion.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --all              : Clear all local context data. Either --name or --all can be specified.')
            fprintf('%s\n', '    --name -n          : Space-separated list of local context parameter names. Either --name or')
            fprintf('%s\n', '                         --all can be specified.')
            fprintf('%s\n', '    --purge            : Delete local context file from working directory. Only available when --all')
            fprintf('%s\n', '                         is specified.')
            fprintf('%s\n', '    --recursive        : Indicates this is recursive delete of local context. Only available when')
            fprintf('%s\n', '                         --all is specified.')
            fprintf('%s\n', '    --yes -y           : Do not prompt for confirmation. Only available when --all is specified.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Delete resource_group_name from local context')
            fprintf('%s\n', '        az local-context delete --name resource_group_name')
            fprintf('%s\n', '    Clear all local context data')
            fprintf('%s\n', '        az local-context delete --all')
            fprintf('%s\n', '    Delete local context persistence file')
            fprintf('%s\n', '        az local-context delete --all --purge')
            fprintf('%s\n', '    Delete local context persistence file recursively')
            fprintf('%s\n', '        az local-context delete --all --purge --recursive')
            fprintf('%s\n', 'For more specific examples, use: az find "az local-context delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
