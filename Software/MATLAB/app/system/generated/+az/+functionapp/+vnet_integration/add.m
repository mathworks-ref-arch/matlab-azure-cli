classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az functionapp vnet-integration add : Add a regional virtual network integration to a
            % functionapp.
            % If there are multiple vnets of the same name across different resource groups, use vnet
            % resource id to specify which vnet to use. If vnet name is used, by default, the vnet in the
            % same resource group as the functionapp will be used.
            % Command group 'functionapp vnet-integration' is in preview. It may be changed/removed
            % in a future release.
            this.BaseCmd = 'az functionapp vnet-integration add ';
        end
        function this = name(this, varargin)
            % Name of the function app.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subnet(this, varargin)
            % The name of the subnet.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = vnet(this, varargin)
            % The name or resource ID of the Vnet.
            this.Options = [this.Options, '--vnet', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
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
            fprintf('%s\n', '    az functionapp vnet-integration add : Add a regional virtual network integration to a')
            fprintf('%s\n', '    functionapp.')
            fprintf('%s\n', '        If there are multiple vnets of the same name across different resource groups, use vnet')
            fprintf('%s\n', '        resource id to specify which vnet to use. If vnet name is used, by default, the vnet in the')
            fprintf('%s\n', '        same resource group as the functionapp will be used.')
            fprintf('%s\n', '        Command group ''functionapp vnet-integration'' is in preview. It may be changed/removed')
            fprintf('%s\n', '        in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the function app.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subnet            [Required] : The name of the subnet.')
            fprintf('%s\n', '    --vnet              [Required] : The name or resource ID of the Vnet.')
            fprintf('%s\n', '    --slot -s                      : The name of the slot. Default to the productions slot if not')
            fprintf('%s\n', '                                     specified.')
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
            fprintf('%s\n', '    Add a regional virtual network integration to a functionapp')
            fprintf('%s\n', '        az functionapp vnet-integration add -g MyResourceGroup -n MyFunctionapp --vnet MyVnetName')
            fprintf('%s\n', '        --subnet MySubnetName -s [slot]')
            fprintf('%s\n', '    Add a regional virtual network integration to a functionapp using vnet resource id')
            fprintf('%s\n', '        az functionapp vnet-integration add -g MyResourceGroup -n MyFunctionapp --vnet')
            fprintf('%s\n', '        ''/subscriptions/[sub')
            fprintf('%s\n', '        id]/resourceGroups/[rg]/providers/Microsoft.Network/virtualNetworks/[virtual network name]''')
            fprintf('%s\n', '        --subnet MySubnetName -s [slot]')
            fprintf('%s\n', 'For more specific examples, use: az find "az functionapp vnet-integration add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
