classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network application-gateway http-listener create : Create an HTTP listener.
            this.BaseCmd = 'az network application-gateway http-listener create ';
        end
        function this = frontend_port(this, varargin)
            % The name or ID of the frontend port.
            this.Options = [this.Options, '--frontend-port', varargin{:}];
        end

        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the HTTP listener.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = frontend_ip(this, varargin)
            % The name or ID of the frontend IP configuration. If only one exists, omit to use as default.
            this.Options = [this.Options, '--frontend-ip', varargin{:}];
        end

        function this = host_name(this, varargin)
            % Host name to use for multisite gateways.
            this.Options = [this.Options, '--host-name', varargin{:}];
        end

        function this = host_names(this, varargin)
            % List of host names that allows special wildcard characters as well. Argument '--host-names' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--host-names', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = ssl_cert(this, varargin)
            % The name or ID of the SSL certificate to use.
            this.Options = [this.Options, '--ssl-cert', varargin{:}];
        end

        function this = waf_policy(this, varargin)
            % Name or ID of a Firewall Policy resource.
            this.Options = [this.Options, '--waf-policy', varargin{:}];
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
            fprintf('%s\n', '    az network application-gateway http-listener create : Create an HTTP listener.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --frontend-port     [Required] : The name or ID of the frontend port.')
            fprintf('%s\n', '    --gateway-name      [Required] : Name of the application gateway.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the HTTP listener.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --frontend-ip                  : The name or ID of the frontend IP configuration. If only one')
            fprintf('%s\n', '                                     exists, omit to use as default.')
            fprintf('%s\n', '    --host-name                    : Host name to use for multisite gateways.')
            fprintf('%s\n', '    --host-names         [Preview] : List of host names that allows special wildcard')
            fprintf('%s\n', '                                     characters as well.')
            fprintf('%s\n', '        Argument ''--host-names'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --ssl-cert                     : The name or ID of the SSL certificate to use.')
            fprintf('%s\n', '    --waf-policy                   : Name or ID of a Firewall Policy resource.')
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
            fprintf('%s\n', '    Create an HTTP listener.')
            fprintf('%s\n', '        az network application-gateway http-listener create -g MyResourceGroup --gateway-name')
            fprintf('%s\n', '        MyAppGateway \')
            fprintf('%s\n', '            --frontend-port MyFrontendPort -n MyHttpListener --frontend-ip MyAppGatewayPublicIp')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway http-listener')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
