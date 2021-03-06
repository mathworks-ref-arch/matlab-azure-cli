classdef assign < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = assign()
            % az network vnet-gateway aad assign : Assign/Update AAD(Azure Active Directory) authentication to
            % a virtual network gateway.
            this.BaseCmd = 'az network vnet-gateway aad assign ';
        end
        function this = audience(this, varargin)
            % The AADAudience ID of the VirtualNetworkGateway.
            this.Options = [this.Options, '--audience', varargin{:}];
        end

        function this = gateway_name(this, varargin)
            % Virtual network gateway name.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = issuer(this, varargin)
            % The AADIssuer URI of the VirtualNetworkGateway.
            this.Options = [this.Options, '--issuer', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = tenant(this, varargin)
            % The AADTenant URI of the VirtualNetworkGateway.
            this.Options = [this.Options, '--tenant', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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
            fprintf('%s\n', '    az network vnet-gateway aad assign : Assign/Update AAD(Azure Active Directory) authentication to')
            fprintf('%s\n', '    a virtual network gateway.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --audience          [Required] : The AADAudience ID of the VirtualNetworkGateway.')
            fprintf('%s\n', '    --gateway-name      [Required] : Virtual network gateway name.')
            fprintf('%s\n', '    --issuer            [Required] : The AADIssuer URI of the VirtualNetworkGateway.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --tenant            [Required] : The AADTenant URI of the VirtualNetworkGateway.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
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
            fprintf('%s\n', '    Assign AAD authentication to a virtual network gateway')
            fprintf('%s\n', '        az network vnet-gateway aad assign \')
            fprintf('%s\n', '        --resource-group MyResourceGroup \')
            fprintf('%s\n', '        --gateway-name MyVnetGateway \')
            fprintf('%s\n', '        --tenant MyAADTenantURI \')
            fprintf('%s\n', '        --audience MyAADAudienceId \')
            fprintf('%s\n', '        --issuer MyAADIssuerURI')
            fprintf('%s\n', 'For more specific examples, use: az find "az network vnet-gateway aad assign"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class assign 
