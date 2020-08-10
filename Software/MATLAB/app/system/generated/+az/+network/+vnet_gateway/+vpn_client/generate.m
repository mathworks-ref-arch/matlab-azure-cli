classdef generate < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = generate()
            % az network vnet-gateway vpn-client generate : Generate VPN client configuration.
            % The command outputs a URL to a zip file for the generated VPN client configuration.
            this.BaseCmd = 'az network vnet-gateway vpn-client generate ';
        end
        function this = authentication_method(this, varargin)
            % Method used to authenticate with the generated client. Allowed values: EAPMSCHAPv2, EAPTLS.
            this.Options = [this.Options, '--authentication-method', varargin{:}];
        end

        function this = client_root_certificates(this, varargin)
            % Space-separated list of client root certificate public certificate data in Base-64 format. Optional for external Radius-based auth with EAPTLS.
            this.Options = [this.Options, '--client-root-certificates', varargin{:}];
        end

        function this = processor_architecture(this, varargin)
            % Processor architecture of the target system.  Allowed values: Amd64, X86.
            this.Options = [this.Options, '--processor-architecture', varargin{:}];
        end

        function this = radius_server_auth_certificate(this, varargin)
            % Public certificate data for the Radius server auth certificate in Base-64 format. Required only if external Radius auth has been configured with EAPTLS auth.
            this.Options = [this.Options, '--radius-server-auth-certificate', varargin{:}];
        end

        function this = use_legacy(this, varargin)
            % Generate VPN client package using legacy implementation. Allowed values: false, true.
            this.Options = [this.Options, '--use-legacy', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the VNet gateway.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network vnet-gateway vpn-client generate : Generate VPN client configuration.')
            fprintf('%s\n', '        The command outputs a URL to a zip file for the generated VPN client configuration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --authentication-method          : Method used to authenticate with the generated client.')
            fprintf('%s\n', '                                       Allowed values: EAPMSCHAPv2, EAPTLS.')
            fprintf('%s\n', '    --client-root-certificates       : Space-separated list of client root certificate public')
            fprintf('%s\n', '                                       certificate data in Base-64 format. Optional for external')
            fprintf('%s\n', '                                       Radius-based auth with EAPTLS.')
            fprintf('%s\n', '    --processor-architecture         : Processor architecture of the target system.  Allowed values:')
            fprintf('%s\n', '                                       Amd64, X86.')
            fprintf('%s\n', '    --radius-server-auth-certificate : Public certificate data for the Radius server auth')
            fprintf('%s\n', '                                       certificate in Base-64 format. Required only if external')
            fprintf('%s\n', '                                       Radius auth has been configured with EAPTLS auth.')
            fprintf('%s\n', '    --use-legacy                     : Generate VPN client package using legacy implementation.')
            fprintf('%s\n', '                                       Allowed values: false, true.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                            : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                       complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                       Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                       ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                        : Name of the VNet gateway.')
            fprintf('%s\n', '    --resource-group -g              : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                       using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create the VPN client configuration for RADIUS with EAP-MSCHAV2 authentication.')
            fprintf('%s\n', '        az network vnet-gateway vpn-client generate -g MyResourceGroup -n MyVnetGateway')
            fprintf('%s\n', '        --authentication-method EAPMSCHAPv2')
            fprintf('%s\n', '    Create the VPN client configuration for AMD64 architecture.')
            fprintf('%s\n', '        az network vnet-gateway vpn-client generate -g MyResourceGroup -n MyVnetGateway --processor-')
            fprintf('%s\n', '        architecture Amd64')
            fprintf('%s\n', '    Generate VPN client configuration. (autogenerated)')
            fprintf('%s\n', '        az network vnet-gateway vpn-client generate --name MyVnetGateway --processor-architecture')
            fprintf('%s\n', '        Amd64 --resource-group MyResourceGroup --subscription MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az network vnet-gateway vpn-client generate"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class generate 
