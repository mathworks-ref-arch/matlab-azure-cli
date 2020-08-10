classdef list_editions < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list_editions()
            % az sql db list-editions : Show database editions available for the currently active
            % subscription.
            % Includes available service objectives and storage limits. In order to reduce verbosity,
            % settings to intentionally reduce storage limits are hidden by default.
            this.BaseCmd = 'az sql db list-editions ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = available(this, varargin)
            % If specified, show only results that are available in the specified region.
            this.Options = [this.Options, '--available', varargin{:}];
        end

        function this = show_details(this, varargin)
            % List of additional details to include in output.  Allowed values: max-size. Search Arguments
            this.Options = [this.Options, '--show-details', varargin{:}];
        end

        function this = dtu(this, varargin)
            % Number of DTUs to search for. If unspecified, all DTU sizes are shown.
            this.Options = [this.Options, '--dtu', varargin{:}];
        end

        function this = edition(this, varargin)
            % Edition to search for. If unspecified, all editions are shown.
            this.Options = [this.Options, '--edition', varargin{:}];
        end

        function this = service_objective(this, varargin)
            % Service objective to search for. If unspecified, all service objectives are shown.
            this.Options = [this.Options, '--service-objective', varargin{:}];
        end

        function this = vcores(this, varargin)
            % Number of vcores to search for. If unspecified, all vcore sizes are shown.
            this.Options = [this.Options, '--vcores', varargin{:}];
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
            fprintf('%s\n', '    az sql db list-editions : Show database editions available for the currently active')
            fprintf('%s\n', '    subscription.')
            fprintf('%s\n', '        Includes available service objectives and storage limits. In order to reduce verbosity,')
            fprintf('%s\n', '        settings to intentionally reduce storage limits are hidden by default.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l [Required] : Location. Values from: `az account list-locations`. You can configure')
            fprintf('%s\n', '                               the default location using `az configure --defaults')
            fprintf('%s\n', '                               location=<location>`.')
            fprintf('%s\n', '    --available -a           : If specified, show only results that are available in the specified')
            fprintf('%s\n', '                               region.')
            fprintf('%s\n', '    --show-details -d        : List of additional details to include in output.  Allowed values:')
            fprintf('%s\n', '                               max-size.')
            fprintf('%s\n', 'Search Arguments')
            fprintf('%s\n', '    --dtu                    : Number of DTUs to search for. If unspecified, all DTU sizes are')
            fprintf('%s\n', '                               shown.')
            fprintf('%s\n', '    --edition --tier -e      : Edition to search for. If unspecified, all editions are shown.')
            fprintf('%s\n', '    --service-objective      : Service objective to search for. If unspecified, all service')
            fprintf('%s\n', '                               objectives are shown.')
            fprintf('%s\n', '    --vcores                 : Number of vcores to search for. If unspecified, all vcore sizes are')
            fprintf('%s\n', '                               shown.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Show all database editions in a location.')
            fprintf('%s\n', '        az sql db list-editions -l westus -o table')
            fprintf('%s\n', '    Show all available database service objectives for Standard edition.')
            fprintf('%s\n', '        az sql db list-editions -l westus --edition Standard -o table')
            fprintf('%s\n', '    Show available max database sizes for P1 service objective')
            fprintf('%s\n', '        az sql db list-editions -l westus --service-objective P1 --show-details max-size')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql db list-editions"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list_editions 
