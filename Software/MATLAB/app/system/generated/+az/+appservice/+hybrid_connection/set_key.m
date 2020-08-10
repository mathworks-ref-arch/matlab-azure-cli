classdef set_key < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set_key()
            % az appservice hybrid-connection set-key : Set the key that all apps in an appservice plan use to
            % connect to the hybrid-connections in that appservice plan.
            % Command group 'appservice hybrid-connection' is in preview. It may be changed/removed
            % in a future release.
            this.BaseCmd = 'az appservice hybrid-connection set-key ';
        end
        function this = hybrid_connection(this, varargin)
            % Hybrid connection name.
            this.Options = [this.Options, '--hybrid-connection', varargin{:}];
        end

        function this = key_type(this, varargin)
            % Which key (primary or secondary) should be used.
            this.Options = [this.Options, '--key-type', varargin{:}];
        end

        function this = namespace(this, varargin)
            % Hybrid connection namespace.
            this.Options = [this.Options, '--namespace', varargin{:}];
        end

        function this = plan(this, varargin)
            % AppService plan.
            this.Options = [this.Options, '--plan', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            fprintf('%s\n', '    az appservice hybrid-connection set-key : Set the key that all apps in an appservice plan use to')
            fprintf('%s\n', '    connect to the hybrid-connections in that appservice plan.')
            fprintf('%s\n', '        Command group ''appservice hybrid-connection'' is in preview. It may be changed/removed')
            fprintf('%s\n', '        in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --hybrid-connection [Required] : Hybrid connection name.')
            fprintf('%s\n', '    --key-type          [Required] : Which key (primary or secondary) should be used.')
            fprintf('%s\n', '    --namespace         [Required] : Hybrid connection namespace.')
            fprintf('%s\n', '    --plan              [Required] : AppService plan.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    set the key that all apps in an appservice plan use to connect to the hybrid-connections in that')
            fprintf('%s\n', '    appservice plan')
            fprintf('%s\n', '        az appservice hybrid-connection set-key -g MyResourceGroup --plan MyAppServicePlan')
            fprintf('%s\n', '        --namespace [HybridConectionNamespace] --hybrid-connection [HybridConnectionName] --key-type')
            fprintf('%s\n', '        ["primary"/"secondary"]')
            fprintf('%s\n', 'For more specific examples, use: az find "az appservice hybrid-connection set-key"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set_key 
