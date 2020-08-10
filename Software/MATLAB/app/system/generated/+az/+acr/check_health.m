classdef check_health < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = check_health()
            % az acr check-health : Gets health information on the environment and optionally a target
            % registry.
            this.BaseCmd = 'az acr check-health ';
        end
        function this = ignore_errors(this, varargin)
            % Provide all health checks, even if errors are found.
            this.Options = [this.Options, '--ignore-errors', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the container registry. You can configure the default registry name using `az configure --defaults acr=<registry name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
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
            fprintf('%s\n', '    az acr check-health : Gets health information on the environment and optionally a target')
            fprintf('%s\n', '    registry.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --ignore-errors    : Provide all health checks, even if errors are found.')
            fprintf('%s\n', '    --name -n          : The name of the container registry. You can configure the default registry')
            fprintf('%s\n', '                         name using `az configure --defaults acr=<registry name>`.')
            fprintf('%s\n', '    --yes -y           : Do not prompt for confirmation.')
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
            fprintf('%s\n', '    Gets health state with target registry ''MyRegistry'', skipping confirmation for pulling image.')
            fprintf('%s\n', '        az acr check-health -n MyRegistry -y')
            fprintf('%s\n', '    Gets health state of the environment, without stopping on first error.')
            fprintf('%s\n', '        az acr check-health --ignore-errors')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr check-health"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class check_health 
