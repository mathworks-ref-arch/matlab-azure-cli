classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az resource link update : Update link between resources.
            this.BaseCmd = 'az resource link update ';
        end
        function this = link(this, varargin)
            % Fully-qualified resource ID of the resource link. Format: /subscriptions/{SubID}/resourceGroups/{ResourceGroupID}/providers/{ProviderNamespace }/{ResourceType}/{ResourceName}/providers/Microsoft.Resources/links/{LinkName}.
            this.Options = [this.Options, '--link', varargin{:}];
        end

        function this = notes(this, varargin)
            % Notes for the link.
            this.Options = [this.Options, '--notes', varargin{:}];
        end

        function this = target(this, varargin)
            % Fully-qualified resource ID of the resource link target.
            this.Options = [this.Options, '--target', varargin{:}];
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
            fprintf('%s\n', '    az resource link update : Update link between resources.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --link  [Required] : Fully-qualified resource ID of the resource link.')
            fprintf('%s\n', '        Format: /subscriptions/{SubID}/resourceGroups/{ResourceGroupID}/providers/{ProviderNamespace')
            fprintf('%s\n', '        }/{ResourceType}/{ResourceName}/providers/Microsoft.Resources/links/{LinkName}.')
            fprintf('%s\n', '    --notes            : Notes for the link.')
            fprintf('%s\n', '    --target           : Fully-qualified resource ID of the resource link target.')
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
            fprintf('%s\n', '    Update the notes for {LinkID} notes "some notes to explain this link"')
            fprintf('%s\n', '        az resource link update --link {LinkID} --notes "some notes to explain this link"')
            fprintf('%s\n', 'For more specific examples, use: az find "az resource link update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
