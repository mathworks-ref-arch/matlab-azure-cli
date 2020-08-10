classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az appservice ase create : Create app service environment.
            % Command group 'appservice ase' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az appservice ase create ';
        end
        function this = name(this, varargin)
            % Name of the app service environment.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of existing subnet. To create vnet and/or subnet use `az network vnet [subnet] create`.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = force_network_security_group(this, varargin)
            % Override network security group for subnet.  Allowed values: false, true.
            this.Options = [this.Options, '--force-network-security-group', varargin{:}];
        end

        function this = force_route_table(this, varargin)
            % Override route table for subnet.  Allowed values: false, true.
            this.Options = [this.Options, '--force-route-table', varargin{:}];
        end

        function this = front_end_scale_factor(this, varargin)
            % Scale of front ends to app service plan instance ratio. Default: 15.
            this.Options = [this.Options, '--front-end-scale-factor', varargin{:}];
        end

        function this = front_end_sku(this, varargin)
            % Size of front end servers.  Allowed values: I1, I2, I3. Default: I1.
            this.Options = [this.Options, '--front-end-sku', varargin{:}];
        end

        function this = ignore_network_security_group(this, varargin)
            % Configure network security group manually.  Allowed values: false, true.
            this.Options = [this.Options, '--ignore-network-security-group', varargin{:}];
        end

        function this = ignore_route_table(this, varargin)
            % Configure route table manually.  Allowed values: false, true.
            this.Options = [this.Options, '--ignore-route-table', varargin{:}];
        end

        function this = ignore_subnet_size_validation(this, varargin)
            % Do not check if subnet is sized according to recommendations. Allowed values: false, true.
            this.Options = [this.Options, '--ignore-subnet-size-validation', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = virtual_ip_type(this, varargin)
            % Specify if app service environment should be accessible from internet.  Allowed values: External, Internal.  Default: Internal.
            this.Options = [this.Options, '--virtual-ip-type', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % Name of the vNet. Mandatory if only subnet name is specified.
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
            fprintf('%s\n', '    az appservice ase create : Create app service environment.')
            fprintf('%s\n', '        Command group ''appservice ase'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n            [Required] : Name of the app service environment.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subnet             [Required] : Name or ID of existing subnet. To create vnet and/or subnet')
            fprintf('%s\n', '                                      use `az network vnet [subnet] create`.')
            fprintf('%s\n', '    --force-network-security-group  : Override network security group for subnet.  Allowed values:')
            fprintf('%s\n', '                                      false, true.')
            fprintf('%s\n', '    --force-route-table             : Override route table for subnet.  Allowed values: false, true.')
            fprintf('%s\n', '    --front-end-scale-factor        : Scale of front ends to app service plan instance ratio.')
            fprintf('%s\n', '                                      Default: 15.')
            fprintf('%s\n', '    --front-end-sku                 : Size of front end servers.  Allowed values: I1, I2, I3.')
            fprintf('%s\n', '                                      Default: I1.')
            fprintf('%s\n', '    --ignore-network-security-group : Configure network security group manually.  Allowed values:')
            fprintf('%s\n', '                                      false, true.')
            fprintf('%s\n', '    --ignore-route-table            : Configure route table manually.  Allowed values: false, true.')
            fprintf('%s\n', '    --ignore-subnet-size-validation : Do not check if subnet is sized according to recommendations.')
            fprintf('%s\n', '                                      Allowed values: false, true.')
            fprintf('%s\n', '    --location -l                   : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                      configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                      location=<location>`.')
            fprintf('%s\n', '    --no-wait                       : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --virtual-ip-type               : Specify if app service environment should be accessible from')
            fprintf('%s\n', '                                      internet.  Allowed values: External, Internal.  Default:')
            fprintf('%s\n', '                                      Internal.')
            fprintf('%s\n', '    --vnet-name                     : Name of the vNet. Mandatory if only subnet name is specified.')
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
            fprintf('%s\n', '    Create Resource Group, vNet and app service environment with default values.')
            fprintf('%s\n', '        az group create -g MyResourceGroup --location westeurope')
            fprintf('%s\n', '        az network vnet create -g MyResourceGroup -n MyVirtualNetwork \')
            fprintf('%s\n', '          --address-prefixes 10.0.0.0/16 --subnet-name MyAseSubnet --subnet-prefixes 10.0.0.0/24')
            fprintf('%s\n', '        az appservice ase create -n MyAseName -g MyResourceGroup --vnet-name MyVirtualNetwork \')
            fprintf('%s\n', '          --subnet MyAseSubnet')
            fprintf('%s\n', '    Create External app service environments with large front-ends and scale factor of 10 in')
            fprintf('%s\n', '    existing resource group and vNet.')
            fprintf('%s\n', '        az appservice ase create -n MyAseName -g MyResourceGroup --vnet-name MyVirtualNetwork \')
            fprintf('%s\n', '          --subnet MyAseSubnet --front-end-sku I3 --front-end-scale-factor 10 \')
            fprintf('%s\n', '          --virtual-ip-type External')
            fprintf('%s\n', '    Create vNet and app service environment, but do not create network security group and route')
            fprintf('%s\n', '    table in existing resource group.')
            fprintf('%s\n', '        az network vnet create -g MyResourceGroup -n MyVirtualNetwork \')
            fprintf('%s\n', '          --address-prefixes 10.0.0.0/16 --subnet-name MyAseSubnet --subnet-prefixes 10.0.0.0/24')
            fprintf('%s\n', '        az appservice ase create -n MyAseName -g MyResourceGroup --vnet-name MyVirtualNetwork \')
            fprintf('%s\n', '          --subnet MyAseSubnet --ignore-network-security-group --ignore-route-table')
            fprintf('%s\n', '    Create vNet and app service environment in a smaller than recommended subnet in existing')
            fprintf('%s\n', '    resource group.')
            fprintf('%s\n', '        az network vnet create -g MyResourceGroup -n MyVirtualNetwork \')
            fprintf('%s\n', '          --address-prefixes 10.0.0.0/16 --subnet-name MyAseSubnet --subnet-prefixes 10.0.0.0/26')
            fprintf('%s\n', '        az appservice ase create -n MyAseName -g MyResourceGroup --vnet-name MyVirtualNetwork \')
            fprintf('%s\n', '          --subnet MyAseSubnet --ignore-subnet-size-validation')
            fprintf('%s\n', 'For more specific examples, use: az find "az appservice ase create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
