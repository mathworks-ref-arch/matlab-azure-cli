classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network private-endpoint create : Create a private endpoint.
            this.BaseCmd = 'az network private-endpoint create ';
        end
        function this = connection_name(this, varargin)
            % Name of the private link service connection.
            this.Options = [this.Options, '--connection-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the private endpoint.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = private_connection_resource_id(this, varargin)
            % The resource id of which private enpoint connect to.
            this.Options = [this.Options, '--private-connection-resource-id', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of an existing subnet. If name specified, also specify --vnet-name. If you want to use an existing subnet in other resource group or subscription, please provide the ID instead of the name of the subnet.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = group_id(this, varargin)
            % The ID of the group obtained from the remote resource that this private endpoint should connect to. You can use "az network private-link-resource list" to obtain the supported group ids.
            this.Options = [this.Options, '--group-id', varargin{:}];
        end

        function this = group_ids(this, varargin)
            % The ID of the group obtained from the remote resource that this private endpoint should connect to. You can use "az network private-link- resource list" to obtain the supported group ids. Option '--group-ids' has been deprecated and will be removed in a future release. Use ' --group-id' instead.
            this.Options = [this.Options, '--group-ids', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list- locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = manual_request(this, varargin)
            % Use manual request to establish the connection. Configure it as 'true' when you don't have access to the subscription of private link service. Allowed values: false, true.
            this.Options = [this.Options, '--manual-request', varargin{:}];
        end

        function this = request_message(this, varargin)
            % A message passed to the owner of the remote resource with this connection request. Restricted to 140 chars.
            this.Options = [this.Options, '--request-message', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network (VNet) associated with the subnet (Omit if supplying a subnet id).
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
            fprintf('%s\n', '    az network private-endpoint create : Create a private endpoint.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --connection-name                [Required] : Name of the private link service connection.')
            fprintf('%s\n', '    --name -n                        [Required] : Name of the private endpoint.')
            fprintf('%s\n', '    --private-connection-resource-id [Required] : The resource id of which private enpoint connect')
            fprintf('%s\n', '                                                  to.')
            fprintf('%s\n', '    --resource-group -g              [Required] : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                  default group using `az configure --defaults')
            fprintf('%s\n', '                                                  group=<name>`.')
            fprintf('%s\n', '    --subnet                         [Required] : Name or ID of an existing subnet. If name')
            fprintf('%s\n', '                                                  specified, also specify --vnet-name. If you want')
            fprintf('%s\n', '                                                  to use an existing subnet in other resource group')
            fprintf('%s\n', '                                                  or subscription, please provide the ID instead of')
            fprintf('%s\n', '                                                  the name of the subnet.')
            fprintf('%s\n', '    --group-id                                  : The ID of the group obtained from the remote')
            fprintf('%s\n', '                                                  resource that this private endpoint should connect')
            fprintf('%s\n', '                                                  to. You can use "az network private-link-resource')
            fprintf('%s\n', '                                                  list" to obtain the supported group ids.')
            fprintf('%s\n', '    --group-ids                    [Deprecated] : The ID of the group obtained from the')
            fprintf('%s\n', '                                                  remote resource that this private endpoint should')
            fprintf('%s\n', '                                                  connect to. You can use "az network private-link-')
            fprintf('%s\n', '                                                  resource list" to obtain the supported group ids.')
            fprintf('%s\n', '        Option ''--group-ids'' has been deprecated and will be removed in a future release. Use ''')
            fprintf('%s\n', '        --group-id'' instead.')
            fprintf('%s\n', '    --location -l                               : Location. Values from: `az account list-')
            fprintf('%s\n', '                                                  locations`. You can configure the default location')
            fprintf('%s\n', '                                                  using `az configure --defaults')
            fprintf('%s\n', '                                                  location=<location>`.')
            fprintf('%s\n', '    --manual-request                            : Use manual request to establish the connection.')
            fprintf('%s\n', '                                                  Configure it as ''true'' when you don''t have access')
            fprintf('%s\n', '                                                  to the subscription of private link service.')
            fprintf('%s\n', '                                                  Allowed values: false, true.')
            fprintf('%s\n', '    --request-message                           : A message passed to the owner of the remote')
            fprintf('%s\n', '                                                  resource with this connection request. Restricted')
            fprintf('%s\n', '                                                  to 140 chars.')
            fprintf('%s\n', '    --tags                                      : Space-separated tags: key[=value] [key[=value]')
            fprintf('%s\n', '                                                  ...]. Use '''' to clear existing tags.')
            fprintf('%s\n', '    --vnet-name                                 : The virtual network (VNet) associated with the')
            fprintf('%s\n', '                                                  subnet (Omit if supplying a subnet id).')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                 : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                                  table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                     : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                  for more information and examples.')
            fprintf('%s\n', '    --subscription                              : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                                  default subscription using `az account set -s')
            fprintf('%s\n', '                                                  NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                   : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                  debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a private endpoint.')
            fprintf('%s\n', '        az network private-endpoint create -g MyResourceGroup -n MyPE --vnet-name MyVnetName')
            fprintf('%s\n', '        --subnet MySubnet --private-connection-resource-id "/subscriptions/00000000-0000-0000-0000-0')
            fprintf('%s\n', '        00000000000/resourceGroups/MyResourceGroup/providers/Microsoft.Network/privateLinkServices/M')
            fprintf('%s\n', '        yPLS" --connection-name tttt -l centralus')
            fprintf('%s\n', 'For more specific examples, use: az find "az network private-endpoint create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
