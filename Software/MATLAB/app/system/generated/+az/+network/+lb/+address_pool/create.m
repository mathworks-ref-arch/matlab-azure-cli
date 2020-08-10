classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network lb address-pool create : Create an address pool.
            this.BaseCmd = 'az network lb address-pool create ';
        end
        function this = lb_name(this, varargin)
            % The load balancer name.
            this.Options = [this.Options, '--lb-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the backend address pool. If only one exists, omit to use as default.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = backend_address(this, varargin)
            % Backend addresses information for backend address pool. If it's used, --vnet is also required. Usage: --backend-address name=addr1 ip-address=10.0.0.1 --vnet MyVnet name: Required. The name of the backend address. ip-address: Required. Ip Address within the Virtual Network. Multiple backend addresses can be specified by using more than one `--backend-address` argument. Argument '--backend-address' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--backend-address', varargin{:}];
        end

        function this = backend_addresses_config_file(this, varargin)
            % A config file used to set backend addresses. This argument is for experienced users. You may encounter parse errors if the json file is invalid. Usage: --backend-addresses-config-file @"{config_file.json}" A example config file is [ { "name": "address1", "virtualNetwork": "clitestvnet", "ipAddress": "10.0.0.4" }, { "name": "address2", "virtualNetwork": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/cl i_test_lb_address_pool_addresses000001/providers/Microsoft.Network/virtualNetworks/clitestvn et", "ipAddress": "10.0.0.5" } ]. Argument '--backend-addresses-config-file' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--backend-addresses-config-file', varargin{:}];
        end

        function this = vnet(this, varargin)
            % Name or Id of the virtual network applied to all backend addresses.
            this.Options = [this.Options, '--vnet', varargin{:}];
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
            fprintf('%s\n', '    az network lb address-pool create : Create an address pool.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --lb-name                      [Required] : The load balancer name.')
            fprintf('%s\n', '    --name -n                      [Required] : The name of the backend address pool. If only one')
            fprintf('%s\n', '                                                exists, omit to use as default.')
            fprintf('%s\n', '    --resource-group -g            [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                default group using `az configure --defaults')
            fprintf('%s\n', '                                                group=<name>`.')
            fprintf('%s\n', '    --backend-address               [Preview] : Backend addresses information for backend')
            fprintf('%s\n', '                                                address pool. If it''s used, --vnet is also required.')
            fprintf('%s\n', '        Usage: --backend-address name=addr1 ip-address=10.0.0.1 --vnet MyVnet')
            fprintf('%s\n', '        name: Required. The name of the backend address.')
            fprintf('%s\n', '        ip-address: Required. Ip Address within the Virtual Network.')
            fprintf('%s\n', '        Multiple backend addresses can be specified by using more than one `--backend-address`')
            fprintf('%s\n', '        argument. Argument ''--backend-address'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --backend-addresses-config-file [Preview] : A config file used to set backend')
            fprintf('%s\n', '                                                addresses. This argument is for experienced users.')
            fprintf('%s\n', '                                                You may encounter parse errors if the json file is')
            fprintf('%s\n', '                                                invalid.')
            fprintf('%s\n', '        Usage: --backend-addresses-config-file @"{config_file.json}"')
            fprintf('%s\n', '        A example config file is')
            fprintf('%s\n', '        [')
            fprintf('%s\n', '          {')
            fprintf('%s\n', '            "name": "address1",')
            fprintf('%s\n', '            "virtualNetwork": "clitestvnet",')
            fprintf('%s\n', '            "ipAddress": "10.0.0.4"')
            fprintf('%s\n', '          },')
            fprintf('%s\n', '          {')
            fprintf('%s\n', '            "name": "address2",')
            fprintf('%s\n', '            "virtualNetwork": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/cl')
            fprintf('%s\n', '        i_test_lb_address_pool_addresses000001/providers/Microsoft.Network/virtualNetworks/clitestvn')
            fprintf('%s\n', '        et",')
            fprintf('%s\n', '            "ipAddress": "10.0.0.5"')
            fprintf('%s\n', '          }')
            fprintf('%s\n', '        ]. Argument ''--backend-addresses-config-file'' is in preview. It may be changed/removed')
            fprintf('%s\n', '        in a future release.')
            fprintf('%s\n', '    --vnet                                    : Name or Id of the virtual network applied to all')
            fprintf('%s\n', '                                                backend addresses.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                               : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                   : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                                more information and examples.')
            fprintf('%s\n', '    --subscription                            : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                default subscription using `az account set -s')
            fprintf('%s\n', '                                                NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                 : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an address pool.')
            fprintf('%s\n', '        az network lb address-pool create -g MyResourceGroup --lb-name MyLb -n MyAddressPool')
            fprintf('%s\n', '    Create an address pool with several backend addresses using key-value arguments.')
            fprintf('%s\n', '        az network lb address-pool create -g MyResourceGroup --lb-name MyLb -n MyAddressPool --vnet')
            fprintf('%s\n', '        {VnetResourceId} --backend-address name=addr1 ip-address=10.0.0.1 --backend-address')
            fprintf('%s\n', '        name=addr2 ip-address=10.0.0.3')
            fprintf('%s\n', '    Create an address pool with several backend addresses using config file')
            fprintf('%s\n', '        az network lb address-pool create -g MyResourceGroup --lb-name MyLb -n MyAddressPool')
            fprintf('%s\n', '        --backend-addresses-config-file @config_file.json')
            fprintf('%s\n', 'For more specific examples, use: az find "az network lb address-pool create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
