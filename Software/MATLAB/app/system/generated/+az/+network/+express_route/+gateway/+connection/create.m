classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network express-route gateway connection create : Create an ExpressRoute gateway connection.
            this.BaseCmd = 'az network express-route gateway connection create ';
        end
        function this = gateway_name(this, varargin)
            % ExpressRoute gateway name.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = name(this, varargin)
            % ExpressRoute connection name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = authorization_key(this, varargin)
            % Authorization key to establish the connection.
            this.Options = [this.Options, '--authorization-key', varargin{:}];
        end

        function this = internet_security(this, varargin)
            % Enable internet security. A virtual hub can have the ability to propagate a learned default route to this ExpressRoute connection. This ref https://review.docs.microsoft.com/en- us/azure/virtual-wan/effective-routes- virtual-hub?branch=pr-en- us-91866#aboutdefaultroute might be helpful. Allowed values: false, true.
            this.Options = [this.Options, '--internet-security', varargin{:}];
        end

        function this = routing_weight(this, varargin)
            % Routing weight associated with the connection. Peering Arguments
            this.Options = [this.Options, '--routing-weight', varargin{:}];
        end

        function this = peering(this, varargin)
            % Name or ID of an ExpressRoute peering.
            this.Options = [this.Options, '--peering', varargin{:}];
        end

        function this = circuit_name(this, varargin)
            % ExpressRoute circuit name. Routing Configuration Arguments
            this.Options = [this.Options, '--circuit-name', varargin{:}];
        end

        function this = associated(this, varargin)
            % The resource id of route table associated with this routing configuration. Argument '--associated-route-table' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--associated', varargin{:}];
        end

        function this = labels(this, varargin)
            % Space-separated list of labels for propagated route tables. Argument '--labels' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--labels', varargin{:}];
        end

        function this = propagated(this, varargin)
            % Space-separated list of resource id of propagated route tables. Argument '--propagated-route-tables' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--propagated', varargin{:}];
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
            fprintf('%s\n', '    az network express-route gateway connection create : Create an ExpressRoute gateway connection.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-name                        [Required] : ExpressRoute gateway name.')
            fprintf('%s\n', '    --name -n                             [Required] : ExpressRoute connection name.')
            fprintf('%s\n', '    --resource-group -g                   [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                       default group using `az configure --defaults')
            fprintf('%s\n', '                                                       group=<name>`.')
            fprintf('%s\n', '    --authorization-key                              : Authorization key to establish the')
            fprintf('%s\n', '                                                       connection.')
            fprintf('%s\n', '    --internet-security                              : Enable internet security. A virtual hub can')
            fprintf('%s\n', '                                                       have the ability to propagate a learned')
            fprintf('%s\n', '                                                       default route to this ExpressRoute')
            fprintf('%s\n', '                                                       connection. This ref')
            fprintf('%s\n', '                                                       https://review.docs.microsoft.com/en-')
            fprintf('%s\n', '                                                       us/azure/virtual-wan/effective-routes-')
            fprintf('%s\n', '                                                       virtual-hub?branch=pr-en-')
            fprintf('%s\n', '                                                       us-91866#aboutdefaultroute might be helpful.')
            fprintf('%s\n', '                                                       Allowed values: false, true.')
            fprintf('%s\n', '    --routing-weight                                 : Routing weight associated with the')
            fprintf('%s\n', '                                                       connection.')
            fprintf('%s\n', 'Peering Arguments')
            fprintf('%s\n', '    --peering                             [Required] : Name or ID of an ExpressRoute peering.')
            fprintf('%s\n', '    --circuit-name                                   : ExpressRoute circuit name.')
            fprintf('%s\n', 'Routing Configuration Arguments')
            fprintf('%s\n', '    --associated --associated-route-table  [Preview] : The resource id of route table')
            fprintf('%s\n', '                                                       associated with this routing configuration.')
            fprintf('%s\n', '        Argument ''--associated-route-table'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --labels                               [Preview] : Space-separated list of labels for')
            fprintf('%s\n', '                                                       propagated route tables.')
            fprintf('%s\n', '        Argument ''--labels'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', '    --propagated --propagated-route-tables [Preview] : Space-separated list of resource id')
            fprintf('%s\n', '                                                       of propagated route tables.')
            fprintf('%s\n', '        Argument ''--propagated-route-tables'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                          : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                       logs.')
            fprintf('%s\n', '    --help -h                                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                      : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                       none, table, tsv, yaml, yamlc.  Default:')
            fprintf('%s\n', '                                                       json.')
            fprintf('%s\n', '    --query                                          : JMESPath query string. See')
            fprintf('%s\n', '                                                       http://jmespath.org/ for more information and')
            fprintf('%s\n', '                                                       examples.')
            fprintf('%s\n', '    --subscription                                   : Name or ID of subscription. You can configure')
            fprintf('%s\n', '                                                       the default subscription using `az account')
            fprintf('%s\n', '                                                       set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                        : Increase logging verbosity. Use --debug for')
            fprintf('%s\n', '                                                       full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an ExpressRoute gateway connection.')
            fprintf('%s\n', '        az network express-route gateway connection create --gateway-name MyGateway -n')
            fprintf('%s\n', '        MyExpressRouteConnection -g MyResourceGroup --peering /subscriptions/MySub/resourceGroups/My')
            fprintf('%s\n', '        ResourceGroup/providers/Microsoft.Network/expressRouteCircuits/MyCircuit/peerings/AzurePriva')
            fprintf('%s\n', '        tePeering --associated-route-table /MySub/resourceGroups/MyResourceGroup/providers/Microsoft')
            fprintf('%s\n', '        .Network/virtualHubs/MyHub/hubRouteTables/MyRouteTable1 --propagated-route-tables /MySub/res')
            fprintf('%s\n', '        ourceGroups/MyResourceGroup/providers/Microsoft.Network/virtualHubs/MyHub/hubRouteTables/MyR')
            fprintf('%s\n', '        outeTable1 /MySub/resourceGroups/MyResourceGroup/providers/Microsoft.Network/virtualHubs/MyH')
            fprintf('%s\n', '        ub/hubRouteTables/MyRouteTable2 --labels label1 label2')
            fprintf('%s\n', 'For more specific examples, use: az find "az network express-route gateway connection')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
