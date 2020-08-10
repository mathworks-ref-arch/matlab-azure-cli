classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network express-route peering connection create : Create connections between two ExpressRoute
            % circuits.
            this.BaseCmd = 'az network express-route peering connection create ';
        end
        function this = address_prefix(this, varargin)
            % /29 IP address space to carve out customer addresses for tunnels.
            this.Options = [this.Options, '--address-prefix', varargin{:}];
        end

        function this = circuit_name(this, varargin)
            % ExpressRoute circuit name.
            this.Options = [this.Options, '--circuit-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the peering connection.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = peer_circuit(this, varargin)
            % Name or ID of the peer ExpressRoute circuit.
            this.Options = [this.Options, '--peer-circuit', varargin{:}];
        end

        function this = peering_name(this, varargin)
            % Name of BGP peering (i.e. AzurePrivatePeering).
            this.Options = [this.Options, '--peering-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = authorization_key(this, varargin)
            % The authorization key used when the peer circuit is in another subscription.
            this.Options = [this.Options, '--authorization-key', varargin{:}];
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
            fprintf('%s\n', '    az network express-route peering connection create : Create connections between two ExpressRoute')
            fprintf('%s\n', '    circuits.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --address-prefix    [Required] : /29 IP address space to carve out customer addresses for')
            fprintf('%s\n', '                                     tunnels.')
            fprintf('%s\n', '    --circuit-name      [Required] : ExpressRoute circuit name.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the peering connection.')
            fprintf('%s\n', '    --peer-circuit      [Required] : Name or ID of the peer ExpressRoute circuit.')
            fprintf('%s\n', '    --peering-name      [Required] : Name of BGP peering (i.e. AzurePrivatePeering).')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --authorization-key            : The authorization key used when the peer circuit is in another')
            fprintf('%s\n', '                                     subscription.')
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
            fprintf('%s\n', '    Create connection between two ExpressRoute circuits with AzurePrivatePeering settings.')
            fprintf('%s\n', '        az network express-route peering connection create -g MyResourceGroup --circuit-name \')
            fprintf('%s\n', '            MyCircuit --peering-name AzurePrivatePeering -n myConnection --peer-circuit \')
            fprintf('%s\n', '            MyOtherCircuit --address-prefix 104.0.0.0/29')
            fprintf('%s\n', 'For more specific examples, use: az find "az network express-route peering connection')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
