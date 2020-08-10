classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network application-gateway create : Create an application gateway.
            this.BaseCmd = 'az network application-gateway create ';
        end
        function this = name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = custom_error_pages(this, varargin)
            % Space-separated list of custom error pages in `STATUS_CODE=URL` format.
            this.Options = [this.Options, '--custom-error-pages', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = max_capacity(this, varargin)
            % Upper bound on the number of application gateway instances.
            this.Options = [this.Options, '--max-capacity', varargin{:}];
        end

        function this = min_capacity(this, varargin)
            % Lower bound on the number of application gateway instances.
            this.Options = [this.Options, '--min-capacity', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = validate(this, varargin)
            % Generate and validate the ARM template without creating any resources.
            this.Options = [this.Options, '--validate', varargin{:}];
        end

        function this = waf_policy(this, varargin)
            % Name or ID of a web application firewall (WAF) policy.
            this.Options = [this.Options, '--waf-policy', varargin{:}];
        end

        function this = zones(this, varargin)
            % Space-separated list of availability zones into which to provision the resource.  Allowed values: 1, 2, 3. Gateway Arguments
            this.Options = [this.Options, '--zones', varargin{:}];
        end

        function this = capacity(this, varargin)
            % The number of instances to use with the application gateway.  Default: 2.
            this.Options = [this.Options, '--capacity', varargin{:}];
        end

        function this = cert_file(this, varargin)
            % The path to the PFX certificate file.
            this.Options = [this.Options, '--cert-file', varargin{:}];
        end

        function this = cert_password(this, varargin)
            % The certificate password.
            this.Options = [this.Options, '--cert-password', varargin{:}];
        end

        function this = connection_draining_timeout(this, varargin)
            % The time in seconds after a backend server is removed during which on open connection remains active. Range: 0 (disabled) to 3600.
            this.Options = [this.Options, '--connection-draining-timeout', varargin{:}];
        end

        function this = frontend_port(this, varargin)
            % The front end port number.
            this.Options = [this.Options, '--frontend-port', varargin{:}];
        end

        function this = http_settings_cookie_based_affinity(this, varargin)
            % Enable or disable HTTP settings cookie-based affinity. Allowed values: Disabled, Enabled.  Default: disabled.
            this.Options = [this.Options, '--http-settings-cookie-based-affinity', varargin{:}];
        end

        function this = http_settings_port(this, varargin)
            % The HTTP settings port.  Default: 80.
            this.Options = [this.Options, '--http-settings-port', varargin{:}];
        end

        function this = http_settings_protocol(this, varargin)
            % The HTTP settings protocol.  Allowed values: Http, Https.  Default: Http.
            this.Options = [this.Options, '--http-settings-protocol', varargin{:}];
        end

        function this = http2(this, varargin)
            % Use HTTP2 for the application gateway.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--http2', varargin{:}];
        end

        function this = key_vault_secret_id(this, varargin)
            % Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in Azure KeyVault. You need enable soft delete for keyvault to use this feature. Argument '--key-vault-secret-id' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--key-vault-secret-id', varargin{:}];
        end

        function this = routing_rule_type(this, varargin)
            % The request routing rule type.  Allowed values: Basic, PathBasedRouting.  Default: Basic.
            this.Options = [this.Options, '--routing-rule-type', varargin{:}];
        end

        function this = servers(this, varargin)
            % Space-separated list of IP addresses or DNS names corresponding to backend servers.
            this.Options = [this.Options, '--servers', varargin{:}];
        end

        function this = sku(this, varargin)
            % The name of the SKU.  Allowed values: Standard_Large, Standard_Medium, Standard_Small, Standard_v2, WAF_Large, WAF_Medium, WAF_v2.  Default: Standard_Medium. Identity Arguments
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = identity(this, varargin)
            % Name or ID of the ManagedIdentity Resource. Network Arguments
            this.Options = [this.Options, '--identity', varargin{:}];
        end

        function this = private_ip_address(this, varargin)
            % Static private IP address to use.
            this.Options = [this.Options, '--private-ip-address', varargin{:}];
        end

        function this = public_ip_address(this, varargin)
            % Name or ID of a public IP address. Uses existing resource or creates new if specified, or none if omitted.
            this.Options = [this.Options, '--public-ip-address', varargin{:}];
        end

        function this = public_ip_address_allocation(this, varargin)
            % The kind of IP allocation to use when creating a new public IP.  Default: Dynamic.
            this.Options = [this.Options, '--public-ip-address-allocation', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of the subnet. Will create resource if it does not exist. If name specified, also specify --vnet- name. If you want to use an existing subnet in other resource group or subscription, please provide the ID instead of the name of the subnet.  Default: default.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = subnet_address_prefix(this, varargin)
            % The CIDR prefix to use when creating a new subnet. Default: 10.0.0.0/24.
            this.Options = [this.Options, '--subnet-address-prefix', varargin{:}];
        end

        function this = vnet_address_prefix(this, varargin)
            % The CIDR prefix to use when creating a new VNet. Default: 10.0.0.0/16.
            this.Options = [this.Options, '--vnet-address-prefix', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network (VNet) name. Private Link Configuration Arguments
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = enable_private_link(this, varargin)
            % Enable Private Link feature for this application gateway.
            this.Options = [this.Options, '--enable-private-link', varargin{:}];
        end

        function this = private_link_ip_address(this, varargin)
            % The static private IP address of a subnet for Private Link. If omitting, a dynamic one will be created.
            this.Options = [this.Options, '--private-link-ip-address', varargin{:}];
        end

        function this = private_link_primary(this, varargin)
            % Whether the IP configuration is primary or not.  Allowed values: false, true.
            this.Options = [this.Options, '--private-link-primary', varargin{:}];
        end

        function this = private_link_subnet(this, varargin)
            % The name of the subnet within the same vnet of an application gateway.  Default: PrivateLinkDefaultSubnet.
            this.Options = [this.Options, '--private-link-subnet', varargin{:}];
        end

        function this = private_link_subnet_prefix(this, varargin)
            % The CIDR prefix to use when creating a new subnet. Default: 10.0.1.0/24.
            this.Options = [this.Options, '--private-link-subnet-prefix', varargin{:}];
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
            fprintf('%s\n', '    az network application-gateway create : Create an application gateway.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                  [Required] : Name of the application gateway.')
            fprintf('%s\n', '    --resource-group -g        [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                            group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --custom-error-pages                  : Space-separated list of custom error pages in')
            fprintf('%s\n', '                                            `STATUS_CODE=URL` format.')
            fprintf('%s\n', '    --location -l                         : Location. Values from: `az account list-locations`. You')
            fprintf('%s\n', '                                            can configure the default location using `az configure')
            fprintf('%s\n', '                                            --defaults location=<location>`.')
            fprintf('%s\n', '    --max-capacity                        : Upper bound on the number of application gateway')
            fprintf('%s\n', '                                            instances.')
            fprintf('%s\n', '    --min-capacity                        : Lower bound on the number of application gateway')
            fprintf('%s\n', '                                            instances.')
            fprintf('%s\n', '    --no-wait                             : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                                : Space-separated tags: key[=value] [key[=value] ...]. Use')
            fprintf('%s\n', '                                            '''' to clear existing tags.')
            fprintf('%s\n', '    --validate                            : Generate and validate the ARM template without creating')
            fprintf('%s\n', '                                            any resources.')
            fprintf('%s\n', '    --waf-policy                          : Name or ID of a web application firewall (WAF) policy.')
            fprintf('%s\n', '    --zones -z                            : Space-separated list of availability zones into which to')
            fprintf('%s\n', '                                            provision the resource.  Allowed values: 1, 2, 3.')
            fprintf('%s\n', 'Gateway Arguments')
            fprintf('%s\n', '    --capacity                            : The number of instances to use with the application')
            fprintf('%s\n', '                                            gateway.  Default: 2.')
            fprintf('%s\n', '    --cert-file                           : The path to the PFX certificate file.')
            fprintf('%s\n', '    --cert-password                       : The certificate password.')
            fprintf('%s\n', '    --connection-draining-timeout         : The time in seconds after a backend server is removed')
            fprintf('%s\n', '                                            during which on open connection remains active. Range: 0')
            fprintf('%s\n', '                                            (disabled) to 3600.')
            fprintf('%s\n', '    --frontend-port                       : The front end port number.')
            fprintf('%s\n', '    --http-settings-cookie-based-affinity : Enable or disable HTTP settings cookie-based affinity.')
            fprintf('%s\n', '                                            Allowed values: Disabled, Enabled.  Default: disabled.')
            fprintf('%s\n', '    --http-settings-port                  : The HTTP settings port.  Default: 80.')
            fprintf('%s\n', '    --http-settings-protocol              : The HTTP settings protocol.  Allowed values: Http,')
            fprintf('%s\n', '                                            Https.  Default: Http.')
            fprintf('%s\n', '    --http2                               : Use HTTP2 for the application gateway.  Allowed values:')
            fprintf('%s\n', '                                            Disabled, Enabled.')
            fprintf('%s\n', '    --key-vault-secret-id       [Preview] : Secret Id of (base-64 encoded unencrypted pfx)')
            fprintf('%s\n', '                                            ''Secret'' or ''Certificate'' object stored in Azure')
            fprintf('%s\n', '                                            KeyVault. You need enable soft delete for keyvault to')
            fprintf('%s\n', '                                            use this feature.')
            fprintf('%s\n', '        Argument ''--key-vault-secret-id'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --routing-rule-type                   : The request routing rule type.  Allowed values: Basic,')
            fprintf('%s\n', '                                            PathBasedRouting.  Default: Basic.')
            fprintf('%s\n', '    --servers                             : Space-separated list of IP addresses or DNS names')
            fprintf('%s\n', '                                            corresponding to backend servers.')
            fprintf('%s\n', '    --sku                                 : The name of the SKU.  Allowed values: Standard_Large,')
            fprintf('%s\n', '                                            Standard_Medium, Standard_Small, Standard_v2, WAF_Large,')
            fprintf('%s\n', '                                            WAF_Medium, WAF_v2.  Default: Standard_Medium.')
            fprintf('%s\n', 'Identity Arguments')
            fprintf('%s\n', '    --identity                            : Name or ID of the ManagedIdentity Resource.')
            fprintf('%s\n', 'Network Arguments')
            fprintf('%s\n', '    --private-ip-address                  : Static private IP address to use.')
            fprintf('%s\n', '    --public-ip-address                   : Name or ID of a public IP address. Uses existing')
            fprintf('%s\n', '                                            resource or creates new if specified, or none if')
            fprintf('%s\n', '                                            omitted.')
            fprintf('%s\n', '    --public-ip-address-allocation        : The kind of IP allocation to use when creating a new')
            fprintf('%s\n', '                                            public IP.  Default: Dynamic.')
            fprintf('%s\n', '    --subnet                              : Name or ID of the subnet. Will create resource if it')
            fprintf('%s\n', '                                            does not exist. If name specified, also specify --vnet-')
            fprintf('%s\n', '                                            name. If you want to use an existing subnet in other')
            fprintf('%s\n', '                                            resource group or subscription, please provide the ID')
            fprintf('%s\n', '                                            instead of the name of the subnet.  Default: default.')
            fprintf('%s\n', '    --subnet-address-prefix               : The CIDR prefix to use when creating a new subnet.')
            fprintf('%s\n', '                                            Default: 10.0.0.0/24.')
            fprintf('%s\n', '    --vnet-address-prefix                 : The CIDR prefix to use when creating a new VNet.')
            fprintf('%s\n', '                                            Default: 10.0.0.0/16.')
            fprintf('%s\n', '    --vnet-name                           : The virtual network (VNet) name.')
            fprintf('%s\n', 'Private Link Configuration Arguments')
            fprintf('%s\n', '    --enable-private-link                 : Enable Private Link feature for this application')
            fprintf('%s\n', '                                            gateway.')
            fprintf('%s\n', '    --private-link-ip-address             : The static private IP address of a subnet for Private')
            fprintf('%s\n', '                                            Link. If omitting, a dynamic one will be created.')
            fprintf('%s\n', '    --private-link-primary                : Whether the IP configuration is primary or not.  Allowed')
            fprintf('%s\n', '                                            values: false, true.')
            fprintf('%s\n', '    --private-link-subnet                 : The name of the subnet within the same vnet of an')
            fprintf('%s\n', '                                            application gateway.  Default: PrivateLinkDefaultSubnet.')
            fprintf('%s\n', '    --private-link-subnet-prefix          : The CIDR prefix to use when creating a new subnet.')
            fprintf('%s\n', '                                            Default: 10.0.1.0/24.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                           : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                            table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                               : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                            information and examples.')
            fprintf('%s\n', '    --subscription                        : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                            default subscription using `az account set -s')
            fprintf('%s\n', '                                            NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                             : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                            logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an application gateway with VMs as backend servers.')
            fprintf('%s\n', '        az network application-gateway create -g MyResourceGroup -n MyAppGateway --capacity 2 --sku')
            fprintf('%s\n', '        Standard_Medium \')
            fprintf('%s\n', '            --vnet-name MyVNet --subnet MySubnet --http-settings-cookie-based-affinity Enabled \')
            fprintf('%s\n', '            --public-ip-address MyAppGatewayPublicIp --servers 10.0.0.4 10.0.0.5')
            fprintf('%s\n', '    Create an application gateway. (autogenerated)')
            fprintf('%s\n', '        az network application-gateway create --capacity 2 --frontend-port MyFrontendPort --http-')
            fprintf('%s\n', '        settings-cookie-based-affinity Enabled --http-settings-port 80 --http-settings-protocol Http')
            fprintf('%s\n', '        --location westus2 --name MyAppGateway --public-ip-address MyAppGatewayPublicIp --resource-')
            fprintf('%s\n', '        group MyResourceGroup --sku Standard_Small --subnet MySubnet --vnet-name MyVNet')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
