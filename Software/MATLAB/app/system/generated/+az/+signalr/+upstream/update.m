classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az signalr upstream update : Update order sensitive upstream settings for an existing SignalR
            % Service.
            this.BaseCmd = 'az signalr upstream update ';
        end
        function this = name(this, varargin)
            % Name of signalr service.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = template(this, varargin)
            % Template item for upstream settings. Use key=value pattern to set properties. Supported keys are "url-template", "hub- pattern", "event-pattern", "category-pattern".
            this.Options = [this.Options, '--template', varargin{:}];
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
            fprintf('%s\n', '    az signalr upstream update : Update order sensitive upstream settings for an existing SignalR')
            fprintf('%s\n', '    Service.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of signalr service.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --template          [Required] : Template item for upstream settings. Use key=value pattern to')
            fprintf('%s\n', '                                     set properties. Supported keys are "url-template", "hub-')
            fprintf('%s\n', '                                     pattern", "event-pattern", "category-pattern".')
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
            fprintf('%s\n', '    Update two upstream settings to handle messages and connections separately.')
            fprintf('%s\n', '        az signalr upstream update -n MySignalR -g MyResourceGroup --template url-')
            fprintf('%s\n', '        template="http://host-connections.com" category-pattern="connections" --template url-')
            fprintf('%s\n', '        template="http://host-connections.com" category-pattern="messages"')
            fprintf('%s\n', '    Update one upstream setting to handle a specific event in a specific hub.')
            fprintf('%s\n', '        az signalr upstream update -n MySignalR -g MyResourceGroup --template url-')
            fprintf('%s\n', '        template="http://host.com/{hub}/{event}/{category}" category-pattern="messages" event-')
            fprintf('%s\n', '        pattern="broadcast" hub-pattern="chat"')
            fprintf('%s\n', 'For more specific examples, use: az find "az signalr upstream update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
