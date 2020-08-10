classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network private-link-service create : Create a private link service.
            this.BaseCmd = 'az network private-link-service create ';
        end
        function this = lb_frontend_ip_configs(this, varargin)
            % Space-separated list of names or IDs of load balancer frontend IP configurations to link to. If names are used, also supply `--lb-name`.
            this.Options = [this.Options, '--lb-frontend-ip-configs', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the private link service.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = auto_approval(this, varargin)
            % Space-separated list of subscription IDs to auto-approve.
            this.Options = [this.Options, '--auto-approval', varargin{:}];
        end

        function this = enable_proxy_protocol(this, varargin)
            % Enable proxy protocol for private link service.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-proxy-protocol', varargin{:}];
        end

        function this = fqdns(this, varargin)
            % Space-separated list of FQDNs.
            this.Options = [this.Options, '--fqdns', varargin{:}];
        end

        function this = lb_name(this, varargin)
            % Name of the load balancer to retrieve frontend IP configs from. Ignored if a frontend IP configuration ID is supplied.
            this.Options = [this.Options, '--lb-name', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = visibility(this, varargin)
            % Space-separated list of subscription IDs for which the private link service is visible. IP Configuration Arguments
            this.Options = [this.Options, '--visibility', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of subnet to use. If name provided, also supply `--vnet-name`.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = private_ip_address(this, varargin)
            % Static private IP address to use.
            this.Options = [this.Options, '--private-ip-address', varargin{:}];
        end

        function this = private_ip_address_version(this, varargin)
            % IP version of the private IP address.  Allowed values: IPv4, IPv6.  Default: IPv4.
            this.Options = [this.Options, '--private-ip-address-version', varargin{:}];
        end

        function this = private_ip_allocation_method(this, varargin)
            % Private IP address allocation method.  Allowed values: Dynamic, Static.
            this.Options = [this.Options, '--private-ip-allocation-method', varargin{:}];
        end

        function this = public_ip_address(this, varargin)
            % Name or ID of the a public IP address to use.
            this.Options = [this.Options, '--public-ip-address', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network (VNet) name.
            this.Options = [this.Options, '--vnet-name', varargin{:}];
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
            fprintf('%s\n', '    az network private-link-service create : Create a private link service.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --lb-frontend-ip-configs [Required] : Space-separated list of names or IDs of load balancer')
            fprintf('%s\n', '                                          frontend IP configurations to link to. If names are used,')
            fprintf('%s\n', '                                          also supply `--lb-name`.')
            fprintf('%s\n', '    --name -n                [Required] : Name of the private link service.')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --auto-approval                     : Space-separated list of subscription IDs to auto-approve.')
            fprintf('%s\n', '    --enable-proxy-protocol             : Enable proxy protocol for private link service.  Allowed')
            fprintf('%s\n', '                                          values: false, true.')
            fprintf('%s\n', '    --fqdns                             : Space-separated list of FQDNs.')
            fprintf('%s\n', '    --lb-name                           : Name of the load balancer to retrieve frontend IP configs')
            fprintf('%s\n', '                                          from. Ignored if a frontend IP configuration ID is')
            fprintf('%s\n', '                                          supplied.')
            fprintf('%s\n', '    --location -l                       : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                          can configure the default location using `az configure')
            fprintf('%s\n', '                                          --defaults location=<location>`.')
            fprintf('%s\n', '    --tags                              : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                          '''' to clear existing tags.')
            fprintf('%s\n', '    --visibility                        : Space-separated list of subscription IDs for which the')
            fprintf('%s\n', '                                          private link service is visible.')
            fprintf('%s\n', 'IP Configuration Arguments')
            fprintf('%s\n', '    --subnet                 [Required] : Name or ID of subnet to use. If name provided, also supply')
            fprintf('%s\n', '                                          `--vnet-name`.')
            fprintf('%s\n', '    --private-ip-address                : Static private IP address to use.')
            fprintf('%s\n', '    --private-ip-address-version        : IP version of the private IP address.  Allowed values:')
            fprintf('%s\n', '                                          IPv4, IPv6.  Default: IPv4.')
            fprintf('%s\n', '    --private-ip-allocation-method      : Private IP address allocation method.  Allowed values:')
            fprintf('%s\n', '                                          Dynamic, Static.')
            fprintf('%s\n', '    --public-ip-address                 : Name or ID of the a public IP address to use.')
            fprintf('%s\n', '    --vnet-name                         : The virtual network (VNet) name.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a private link service')
            fprintf('%s\n', '        az network private-link-service create -g MyResourceGroup -n MyPLSName --vnet-name')
            fprintf('%s\n', '        MyVnetName --subnet MySubnet --lb-name MyLBName --lb-frontend-ip-configs')
            fprintf('%s\n', '        LoadBalancerFrontEnd -l centralus')
            fprintf('%s\n', 'For more specific examples, use: az find "az network private-link-service create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
