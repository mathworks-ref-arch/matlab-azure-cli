classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az vm image terms show : Get the details of Azure Marketplace image terms.
            this.BaseCmd = 'az vm image terms show ';
        end
        function this = offer(this, varargin)
            % Image offer.
            this.Options = [this.Options, '--offer', varargin{:}];
        end

        function this = plan(this, varargin)
            % Image billing plan.
            this.Options = [this.Options, '--plan', varargin{:}];
        end

        function this = publisher(this, varargin)
            % Image publisher.
            this.Options = [this.Options, '--publisher', varargin{:}];
        end

        function this = urn(this, varargin)
            % URN, in the format of 'publisher:offer:sku:version'. If specified, other argument values can be omitted.
            this.Options = [this.Options, '--urn', varargin{:}];
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
            fprintf('%s\n', '    az vm image terms show : Get the details of Azure Marketplace image terms.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --offer -f         : Image offer.')
            fprintf('%s\n', '    --plan             : Image billing plan.')
            fprintf('%s\n', '    --publisher -p     : Image publisher.')
            fprintf('%s\n', '    --urn              : URN, in the format of ''publisher:offer:sku:version''. If specified, other')
            fprintf('%s\n', '                         argument values can be omitted.')
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
            fprintf('%s\n', '    Get the details of Azure Marketplace image terms.')
            fprintf('%s\n', '        az vm image terms show --urn publisher:offer:sku:version')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm image terms show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
