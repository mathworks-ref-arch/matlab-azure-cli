classdef remove < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove()
            % az webapp hybrid-connection remove : Remove a hybrid-connection from a webapp.
            % Command group 'webapp hybrid-connection' is in preview. It may be changed/removed in a
            % future release.
            this.BaseCmd = 'az webapp hybrid-connection remove ';
        end
        function this = hybrid_connection(this, varargin)
            % Hybrid connection name.
            this.Options = [this.Options, '--hybrid-connection', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the web app. You can configure the default using `az configure --defaults web=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = namespace(this, varargin)
            % Hybrid connection namespace.
            this.Options = [this.Options, '--namespace', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
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
            fprintf('%s\n', '    az webapp hybrid-connection remove : Remove a hybrid-connection from a webapp.')
            fprintf('%s\n', '        Command group ''webapp hybrid-connection'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --hybrid-connection [Required] : Hybrid connection name.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the web app. You can configure the default using `az')
            fprintf('%s\n', '                                     configure --defaults web=<name>`.')
            fprintf('%s\n', '    --namespace         [Required] : Hybrid connection namespace.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --slot -s                      : The name of the slot. Default to the productions slot if not')
            fprintf('%s\n', '                                     specified.')
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
            fprintf('%s\n', '    remove a hybrid-connection from a webapp')
            fprintf('%s\n', '        az webapp hybrid-connection remove  -g MyResourceGroup -n MyWebapp --namespace')
            fprintf('%s\n', '        [HybridConnectionNamespace] --hybrid-connection [HybridConnectionName] -s [slot]')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp hybrid-connection remove"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove 
