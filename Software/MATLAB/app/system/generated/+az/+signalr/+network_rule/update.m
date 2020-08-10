classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az signalr network-rule update : Update the Network access control of SignalR Service.
            this.BaseCmd = 'az signalr network-rule update ';
        end
        function this = name(this, varargin)
            % Name of signalr service.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = allow(this, varargin)
            % The allowed virtual network rule. Space-separeted list of scope to assign. Allowed values: ClientConnection, ServerConnection, RESTAPI.
            this.Options = [this.Options, '--allow', varargin{:}];
        end

        function this = deny(this, varargin)
            % The denied virtual network rule. Space-separeted list of scope to assign. Allowed values: ClientConnection, ServerConnection, RESTAPI. Private Endpoint Connection Arguments
            this.Options = [this.Options, '--deny', varargin{:}];
        end

        function this = connection_name(this, varargin)
            % Space-separeted list of private endpoint connection name. Public Network Arguments
            this.Options = [this.Options, '--connection-name', varargin{:}];
        end

        function this = public_network(this, varargin)
            % Set rules for public network.  Allowed values: false, true.
            this.Options = [this.Options, '--public-network', varargin{:}];
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
            fprintf('%s\n', '    az signalr network-rule update : Update the Network access control of SignalR Service.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of signalr service.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --allow                        : The allowed virtual network rule. Space-separeted list of scope')
            fprintf('%s\n', '                                     to assign. Allowed values: ClientConnection, ServerConnection,')
            fprintf('%s\n', '                                     RESTAPI.')
            fprintf('%s\n', '    --deny                         : The denied virtual network rule. Space-separeted list of scope')
            fprintf('%s\n', '                                     to assign. Allowed values: ClientConnection, ServerConnection,')
            fprintf('%s\n', '                                     RESTAPI.')
            fprintf('%s\n', 'Private Endpoint Connection Arguments')
            fprintf('%s\n', '    --connection-name              : Space-separeted list of private endpoint connection name.')
            fprintf('%s\n', 'Public Network Arguments')
            fprintf('%s\n', '    --public-network               : Set rules for public network.  Allowed values: false, true.')
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
            fprintf('%s\n', '    Set allowing RESTAPI only for public network.')
            fprintf('%s\n', '        az signalr network-rule update --public-network -n MySignalR -g MyResourceGroup --allow')
            fprintf('%s\n', '        RESTAPI')
            fprintf('%s\n', '    Set allowing client connection and server connection for a private endpoint connection')
            fprintf('%s\n', '        az signalr network-rule update --connection-name MyPrivateEndpointConnection -n MySignalR -g')
            fprintf('%s\n', '        MyResourceGroup --allow ClientConnection ServerConnection')
            fprintf('%s\n', '    Set denying client connection for both public network and private endpoint connections')
            fprintf('%s\n', '        az signalr network-rule update --public-network --connection-name')
            fprintf('%s\n', '        MyPrivateEndpointConnection1 MyPrivateEndpointConnection2 -n MySignalR -g MyResourceGroup')
            fprintf('%s\n', '        --deny ClientConnection')
            fprintf('%s\n', 'For more specific examples, use: az find "az signalr network-rule update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
