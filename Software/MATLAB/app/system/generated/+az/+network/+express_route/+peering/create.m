classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network express-route peering create : Create peering settings for an ExpressRoute circuit.
            this.BaseCmd = 'az network express-route peering create ';
        end
        function this = circuit_name(this, varargin)
            % ExpressRoute circuit name.
            this.Options = [this.Options, '--circuit-name', varargin{:}];
        end

        function this = peer_asn(this, varargin)
            % Autonomous system number of the customer/connectivity provider.
            this.Options = [this.Options, '--peer-asn', varargin{:}];
        end

        function this = peering_type(this, varargin)
            % BGP peering type for the circuit.  Allowed values: AzurePrivatePeering, AzurePublicPeering, MicrosoftPeering.
            this.Options = [this.Options, '--peering-type', varargin{:}];
        end

        function this = primary_peer_subnet(this, varargin)
            % /30 subnet used to configure IP addresses for primary interface.
            this.Options = [this.Options, '--primary-peer-subnet', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = secondary_peer_subnet(this, varargin)
            % /30 subnet used to configure IP addresses for secondary interface.
            this.Options = [this.Options, '--secondary-peer-subnet', varargin{:}];
        end

        function this = vlan_id(this, varargin)
            % Identifier used to identify the customer.
            this.Options = [this.Options, '--vlan-id', varargin{:}];
        end

        function this = shared_key(this, varargin)
            % Key for generating an MD5 for the BGP session. Microsoft Peering Arguments
            this.Options = [this.Options, '--shared-key', varargin{:}];
        end

        function this = advertised_public_prefixes(this, varargin)
            % Space-separated list of prefixes to be advertised through the BGP peering.
            this.Options = [this.Options, '--advertised-public-prefixes', varargin{:}];
        end

        function this = customer_asn(this, varargin)
            % Autonomous system number of the customer.
            this.Options = [this.Options, '--customer-asn', varargin{:}];
        end

        function this = legacy_mode(this, varargin)
            % Integer representing the legacy mode of the peering.
            this.Options = [this.Options, '--legacy-mode', varargin{:}];
        end

        function this = route_filter(this, varargin)
            % Name or ID of a route filter to apply to the peering settings.
            this.Options = [this.Options, '--route-filter', varargin{:}];
        end

        function this = routing_registry_name(this, varargin)
            % Internet Routing Registry / Regional Internet Registry. Allowed values: AFRINIC, ALTDB, APNIC, ARIN, LACNIC, LEVEL3, RADB, RIPENCC.
            this.Options = [this.Options, '--routing-registry-name', varargin{:}];
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
            fprintf('%s\n', '    az network express-route peering create : Create peering settings for an ExpressRoute circuit.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --circuit-name          [Required] : ExpressRoute circuit name.')
            fprintf('%s\n', '    --peer-asn              [Required] : Autonomous system number of the customer/connectivity')
            fprintf('%s\n', '                                         provider.')
            fprintf('%s\n', '    --peering-type          [Required] : BGP peering type for the circuit.  Allowed values:')
            fprintf('%s\n', '                                         AzurePrivatePeering, AzurePublicPeering, MicrosoftPeering.')
            fprintf('%s\n', '    --primary-peer-subnet   [Required] : /30 subnet used to configure IP addresses for primary')
            fprintf('%s\n', '                                         interface.')
            fprintf('%s\n', '    --resource-group -g     [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                         using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --secondary-peer-subnet [Required] : /30 subnet used to configure IP addresses for secondary')
            fprintf('%s\n', '                                         interface.')
            fprintf('%s\n', '    --vlan-id               [Required] : Identifier used to identify the customer.')
            fprintf('%s\n', '    --shared-key                       : Key for generating an MD5 for the BGP session.')
            fprintf('%s\n', 'Microsoft Peering Arguments')
            fprintf('%s\n', '    --advertised-public-prefixes       : Space-separated list of prefixes to be advertised through')
            fprintf('%s\n', '                                         the BGP peering.')
            fprintf('%s\n', '    --customer-asn                     : Autonomous system number of the customer.')
            fprintf('%s\n', '    --legacy-mode                      : Integer representing the legacy mode of the peering.')
            fprintf('%s\n', '    --route-filter                     : Name or ID of a route filter to apply to the peering')
            fprintf('%s\n', '                                         settings.')
            fprintf('%s\n', '    --routing-registry-name            : Internet Routing Registry / Regional Internet Registry.')
            fprintf('%s\n', '                                         Allowed values: AFRINIC, ALTDB, APNIC, ARIN, LACNIC,')
            fprintf('%s\n', '                                         LEVEL3, RADB, RIPENCC.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --subscription                     : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                         subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create Microsoft Peering settings with IPv4 configuration.')
            fprintf('%s\n', '        az network express-route peering create -g MyResourceGroup --circuit-name MyCircuit \')
            fprintf('%s\n', '            --peering-type MicrosoftPeering --peer-asn 10002 --vlan-id 103 \')
            fprintf('%s\n', '            --primary-peer-subnet 101.0.0.0/30 --secondary-peer-subnet 102.0.0.0/30 \')
            fprintf('%s\n', '            --advertised-public-prefixes 101.0.0.0/30')
            fprintf('%s\n', 'For more specific examples, use: az find "az network express-route peering create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
