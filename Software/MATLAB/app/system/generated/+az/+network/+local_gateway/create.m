classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network local-gateway create : Create a local VPN gateway.
            this.BaseCmd = 'az network local-gateway create ';
        end
        function this = gateway_ip_address(this, varargin)
            % Gateway's public IP address. (e.g. 10.1.1.1).
            this.Options = [this.Options, '--gateway-ip-address', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the local network gateway.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = local_address_prefixes(this, varargin)
            % List of CIDR block prefixes representing the address space of the OnPremise VPN's subnet.
            this.Options = [this.Options, '--local-address-prefixes', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. BGP Peering Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = asn(this, varargin)
            % Autonomous System Number to use for the BGP settings.
            this.Options = [this.Options, '--asn', varargin{:}];
        end

        function this = bgp_peering_address(this, varargin)
            % IP address from the OnPremise VPN's subnet to use for BGP peering.
            this.Options = [this.Options, '--bgp-peering-address', varargin{:}];
        end

        function this = peer_weight(this, varargin)
            % Weight (0-100) added to routes learned through BGP peering.
            this.Options = [this.Options, '--peer-weight', varargin{:}];
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
            fprintf('%s\n', '    az network local-gateway create : Create a local VPN gateway.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-ip-address [Required] : Gateway''s public IP address. (e.g. 10.1.1.1).')
            fprintf('%s\n', '    --name -n            [Required] : Name of the local network gateway.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --local-address-prefixes        : List of CIDR block prefixes representing the address space of')
            fprintf('%s\n', '                                      the OnPremise VPN''s subnet.')
            fprintf('%s\n', '    --location -l                   : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                      configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                      location=<location>`.')
            fprintf('%s\n', '    --no-wait                       : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                          : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                      clear existing tags.')
            fprintf('%s\n', 'BGP Peering Arguments')
            fprintf('%s\n', '    --asn                           : Autonomous System Number to use for the BGP settings.')
            fprintf('%s\n', '    --bgp-peering-address           : IP address from the OnPremise VPN''s subnet to use for BGP')
            fprintf('%s\n', '                                      peering.')
            fprintf('%s\n', '    --peer-weight                   : Weight (0-100) added to routes learned through BGP peering.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a Local Network Gateway to represent your on-premises site.')
            fprintf('%s\n', '        az network local-gateway create -g MyResourceGroup -n MyLocalGateway \')
            fprintf('%s\n', '            --gateway-ip-address 23.99.221.164 --local-address-prefixes 10.0.0.0/24 20.0.0.0/24')
            fprintf('%s\n', 'For more specific examples, use: az find "az network local-gateway create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
