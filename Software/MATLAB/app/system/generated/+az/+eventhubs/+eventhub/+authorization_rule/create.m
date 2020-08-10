classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az eventhubs eventhub authorization-rule create : Creates Authorizationrule for the given
            % Eventhub.
            this.BaseCmd = 'az eventhubs eventhub authorization-rule create ';
        end
        function this = eventhub_name(this, varargin)
            % Name of EventHub.
            this.Options = [this.Options, '--eventhub-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of EventHub AuthorizationRule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = namespace_name(this, varargin)
            % Name of Namespace.
            this.Options = [this.Options, '--namespace-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = rights(this, varargin)
            % Space-separated list of Authorization rule rights.  Allowed values: Listen, Manage, Send.
            this.Options = [this.Options, '--rights', varargin{:}];
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
            fprintf('%s\n', '    az eventhubs eventhub authorization-rule create : Creates Authorizationrule for the given')
            fprintf('%s\n', '    Eventhub.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --eventhub-name     [Required] : Name of EventHub.')
            fprintf('%s\n', '    --name -n           [Required] : Name of EventHub AuthorizationRule.')
            fprintf('%s\n', '    --namespace-name    [Required] : Name of Namespace.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --rights            [Required] : Space-separated list of Authorization rule rights.  Allowed')
            fprintf('%s\n', '                                     values: Listen, Manage, Send.')
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
            fprintf('%s\n', '    Creates Authorizationrule')
            fprintf('%s\n', '        az eventhubs eventhub authorization-rule create --resource-group myresourcegroup')
            fprintf('%s\n', '        --namespace-name mynamespace --eventhub-name myeventhub --name myauthorule --rights Listen')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventhubs eventhub authorization-rule create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
