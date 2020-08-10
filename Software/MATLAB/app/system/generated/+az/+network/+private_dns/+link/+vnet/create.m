classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network private-dns link vnet create : Create a virtual network link to the specified Private
            % DNS zone.
            this.BaseCmd = 'az network private-dns link vnet create ';
        end
        function this = name(this, varargin)
            % The name of the virtual network link to the specified Private DNS zone.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = registration_enabled(this, varargin)
            % Specify if the link is registration enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--registration-enabled', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = virtual_network(this, varargin)
            % Name or ID of the virtual network.
            this.Options = [this.Options, '--virtual-network', varargin{:}];
        end

        function this = zone_name(this, varargin)
            % The name of the Private DNS zone.
            this.Options = [this.Options, '--zone-name', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Resource tags for the virtual network link.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az network private-dns link vnet create : Create a virtual network link to the specified Private')
            fprintf('%s\n', '    DNS zone.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                 [Required] : The name of the virtual network link to the specified')
            fprintf('%s\n', '                                           Private DNS zone.')
            fprintf('%s\n', '    --registration-enabled -e [Required] : Specify if the link is registration enabled.  Allowed')
            fprintf('%s\n', '                                           values: false, true.')
            fprintf('%s\n', '    --resource-group -g       [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --virtual-network -v      [Required] : Name or ID of the virtual network.')
            fprintf('%s\n', '    --zone-name -z            [Required] : The name of the Private DNS zone.')
            fprintf('%s\n', '    --no-wait                            : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                               : Resource tags for the virtual network link.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a virtual network link to the specified Private DNS zone.')
            fprintf('%s\n', '        az network private-dns link vnet create -g MyResourceGroup -n MyLinkName -z www.mysite.com \')
            fprintf('%s\n', '            -v MyVirtualNetworkId -e False')
            fprintf('%s\n', '    Create a virtual network link to the specified Private DNS zone. (autogenerated)')
            fprintf('%s\n', '        az network private-dns link vnet create --name MyLinkName --registration-enabled true')
            fprintf('%s\n', '        --resource-group MyResourceGroup --subscription MySubscription --tags CostCenter=Marketing')
            fprintf('%s\n', '        --virtual-network MyVirtualNetworkId --zone-name www.mysite.com')
            fprintf('%s\n', 'For more specific examples, use: az find "az network private-dns link vnet create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
