classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az signalr create : Creates a SignalR Service.
            this.BaseCmd = 'az signalr create ';
        end
        function this = name(this, varargin)
            % Name of signalr service.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sku(this, varargin)
            % The sku name of the signalr service. E.g. Standard_S1.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = allowed_origins(this, varargin)
            % Space separated origins that should be allowed to make cross- origin calls (for example: http://example.com:12345). To allow all, use "*".
            this.Options = [this.Options, '--allowed-origins', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = service_mode(this, varargin)
            % The service mode which signalr service will be working on. Allowed values: Classic, Default, Serverless.  Default: Default.
            this.Options = [this.Options, '--service-mode', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = unit_count(this, varargin)
            % The number of signalr service unit count.  Default: 1. Network Rule Arguments
            this.Options = [this.Options, '--unit-count', varargin{:}];
        end

        function this = default_action(this, varargin)
            % Default action to apply when no rule matches.  Allowed values: Allow, Deny.  Default: Allow.
            this.Options = [this.Options, '--default-action', varargin{:}];
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
            fprintf('%s\n', '    az signalr create : Creates a SignalR Service.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of signalr service.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sku               [Required] : The sku name of the signalr service. E.g. Standard_S1.')
            fprintf('%s\n', '    --allowed-origins -a           : Space separated origins that should be allowed to make cross-')
            fprintf('%s\n', '                                     origin calls (for example: http://example.com:12345). To allow')
            fprintf('%s\n', '                                     all, use "*".')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --service-mode                 : The service mode which signalr service will be working on.')
            fprintf('%s\n', '                                     Allowed values: Classic, Default, Serverless.  Default:')
            fprintf('%s\n', '                                     Default.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --unit-count                   : The number of signalr service unit count.  Default: 1.')
            fprintf('%s\n', 'Network Rule Arguments')
            fprintf('%s\n', '    --default-action               : Default action to apply when no rule matches.  Allowed values:')
            fprintf('%s\n', '                                     Allow, Deny.  Default: Allow.')
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
            fprintf('%s\n', '    Create a SignalR Service with the Standard SKU and serverless mode.')
            fprintf('%s\n', '        az signalr create -n MySignalR -g MyResourceGroup --sku Standard_S1 --unit-count 1')
            fprintf('%s\n', '        --service-mode Serverless')
            fprintf('%s\n', 'For more specific examples, use: az find "az signalr create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
