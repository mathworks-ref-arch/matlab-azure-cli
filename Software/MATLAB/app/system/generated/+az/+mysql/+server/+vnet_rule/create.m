classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az mysql server vnet-rule create : Create a virtual network rule to allows access to a MySQL
            % server.
            this.BaseCmd = 'az mysql server vnet-rule create ';
        end
        function this = name(this, varargin)
            % The name of the vnet rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server_name(this, varargin)
            % Name of the server. The name can contain only lowercase letters, numbers, and the hyphen (-) character. Minimum 3 characters and maximum 63 characters.
            this.Options = [this.Options, '--server-name', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of the subnet that allows access to an Azure Postgres Server. If subnet name is provided, --vnet-name must be provided.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = ignore_missing_endpoint(this, varargin)
            % Create vnet rule before virtual network has vnet service endpoint enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--ignore-missing-endpoint', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network name.
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
            fprintf('%s\n', '    az mysql server vnet-rule create : Create a virtual network rule to allows access to a MySQL')
            fprintf('%s\n', '    server.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the vnet rule.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server-name -s    [Required] : Name of the server. The name can contain only lowercase')
            fprintf('%s\n', '                                     letters, numbers, and the hyphen (-) character. Minimum 3')
            fprintf('%s\n', '                                     characters and maximum 63 characters.')
            fprintf('%s\n', '    --subnet            [Required] : Name or ID of the subnet that allows access to an Azure')
            fprintf('%s\n', '                                     Postgres Server. If subnet name is provided, --vnet-name must')
            fprintf('%s\n', '                                     be provided.')
            fprintf('%s\n', '    --ignore-missing-endpoint -i   : Create vnet rule before virtual network has vnet service')
            fprintf('%s\n', '                                     endpoint enabled.  Allowed values: false, true.')
            fprintf('%s\n', '    --vnet-name                    : The virtual network name.')
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
            fprintf('%s\n', '    Create a virtual network rule by providing the subnet id.')
            fprintf('%s\n', '        az mysql server vnet-rule create -g testgroup -s testsvr -n vnetRuleName --subnet /subscript')
            fprintf('%s\n', '        ions/{SubID}/resourceGroups/{ResourceGroup}/providers/Microsoft.Network/virtualNetworks/vnet')
            fprintf('%s\n', '        Name/subnets/subnetName')
            fprintf('%s\n', '    Create a vnet rule by providing the vnet and subnet name. The subnet id is created by taking the')
            fprintf('%s\n', '    resource group name and subscription id of the server.')
            fprintf('%s\n', '        az mysql server vnet-rule create -g testgroup -s testsvr -n vnetRuleName --subnet subnetName')
            fprintf('%s\n', '        --vnet-name vnetName')
            fprintf('%s\n', 'For more specific examples, use: az find "az mysql server vnet-rule create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
