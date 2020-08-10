classdef move < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = move()
            % az resource move : Moves resources from one resource group to another(can be under different
            % subscription).
            this.BaseCmd = 'az resource move ';
        end
        function this = destination_group(this, varargin)
            % The destination resource group name.
            this.Options = [this.Options, '--destination-group', varargin{:}];
        end

        function this = ids(this, varargin)
            % The space-separated resource ids to be moved.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = destination_subscription_id(this, varargin)
            % The destination subscription identifier.
            this.Options = [this.Options, '--destination-subscription-id', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az resource move"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az resource move : Moves resources from one resource group to another(can be under different')
            fprintf('%s\n', '    subscription).')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --destination-group [Required] : The destination resource group name.')
            fprintf('%s\n', '    --ids               [Required] : The space-separated resource ids to be moved.')
            fprintf('%s\n', '    --destination-subscription-id  : The destination subscription identifier.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az resource move"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class move 
