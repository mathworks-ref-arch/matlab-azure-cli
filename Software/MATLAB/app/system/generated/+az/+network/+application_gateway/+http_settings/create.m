classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network application-gateway http-settings create : Create HTTP settings.
            this.BaseCmd = 'az network application-gateway http-settings create ';
        end
        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the backed HTTP settings.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = port(this, varargin)
            % The port number.
            this.Options = [this.Options, '--port', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = affinity_cookie_name(this, varargin)
            % Name used for the affinity cookie.
            this.Options = [this.Options, '--affinity-cookie-name', varargin{:}];
        end

        function this = auth_certs(this, varargin)
            % Space-separated list of authentication certificates (names or IDs) to associate with the HTTP settings.
            this.Options = [this.Options, '--auth-certs', varargin{:}];
        end

        function this = connection_draining_timeout(this, varargin)
            % The time in seconds after a backend server is removed during which on open connection remains active. Range: 0 (disabled) to 3600.
            this.Options = [this.Options, '--connection-draining-timeout', varargin{:}];
        end

        function this = cookie_based_affinity(this, varargin)
            % Enable or disable cookie-based affinity.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--cookie-based-affinity', varargin{:}];
        end

        function this = enable_probe(this, varargin)
            % Whether the probe is enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-probe', varargin{:}];
        end

        function this = host_name(this, varargin)
            % Host header sent to the backend servers.
            this.Options = [this.Options, '--host-name', varargin{:}];
        end

        function this = host_name_from_backend_pool(this, varargin)
            % Use host name of the backend server as the host header. Allowed values: false, true.
            this.Options = [this.Options, '--host-name-from-backend-pool', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = path(this, varargin)
            % Path that will prefix all HTTP requests.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = probe(this, varargin)
            % Name or ID of the probe to associate with the HTTP settings.
            this.Options = [this.Options, '--probe', varargin{:}];
        end

        function this = protocol(this, varargin)
            % The HTTP settings protocol.  Allowed values: Http, Https. Default: http.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = root_certs(this, varargin)
            % Space-separated list of trusted root certificates (names or IDs) to associate with the HTTP settings. --host-name or --host-name-from-backend-pool is required when this field is set.
            this.Options = [this.Options, '--root-certs', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Request timeout in seconds.
            this.Options = [this.Options, '--timeout', varargin{:}];
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
            fprintf('%s\n', '    az network application-gateway http-settings create : Create HTTP settings.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-name      [Required] : Name of the application gateway.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the backed HTTP settings.')
            fprintf('%s\n', '    --port              [Required] : The port number.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --affinity-cookie-name         : Name used for the affinity cookie.')
            fprintf('%s\n', '    --auth-certs                   : Space-separated list of authentication certificates (names or')
            fprintf('%s\n', '                                     IDs) to associate with the HTTP settings.')
            fprintf('%s\n', '    --connection-draining-timeout  : The time in seconds after a backend server is removed during')
            fprintf('%s\n', '                                     which on open connection remains active. Range: 0 (disabled) to')
            fprintf('%s\n', '                                     3600.')
            fprintf('%s\n', '    --cookie-based-affinity        : Enable or disable cookie-based affinity.  Allowed values:')
            fprintf('%s\n', '                                     Disabled, Enabled.')
            fprintf('%s\n', '    --enable-probe                 : Whether the probe is enabled.  Allowed values: false, true.')
            fprintf('%s\n', '    --host-name                    : Host header sent to the backend servers.')
            fprintf('%s\n', '    --host-name-from-backend-pool  : Use host name of the backend server as the host header.')
            fprintf('%s\n', '                                     Allowed values: false, true.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --path                         : Path that will prefix all HTTP requests.')
            fprintf('%s\n', '    --probe                        : Name or ID of the probe to associate with the HTTP settings.')
            fprintf('%s\n', '    --protocol                     : The HTTP settings protocol.  Allowed values: Http, Https.')
            fprintf('%s\n', '                                     Default: http.')
            fprintf('%s\n', '    --root-certs                   : Space-separated list of trusted root certificates (names or')
            fprintf('%s\n', '                                     IDs) to associate with the HTTP settings. --host-name or')
            fprintf('%s\n', '                                     --host-name-from-backend-pool is required when this field is')
            fprintf('%s\n', '                                     set.')
            fprintf('%s\n', '    --timeout                      : Request timeout in seconds.')
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
            fprintf('%s\n', '    Create HTTP settings.')
            fprintf('%s\n', '        az network application-gateway http-settings create -g MyResourceGroup --gateway-name')
            fprintf('%s\n', '        MyAppGateway \')
            fprintf('%s\n', '            -n MyHttpSettings --port 80 --protocol Http --cookie-based-affinity Disabled --timeout')
            fprintf('%s\n', '        30')
            fprintf('%s\n', '    Create HTTP settings. (autogenerated)')
            fprintf('%s\n', '        az network application-gateway http-settings create --affinity-cookie-name MyAffinityCookie')
            fprintf('%s\n', '        --cookie-based-affinity Enabled --gateway-name MyAppGateway --host-name MyHost --name')
            fprintf('%s\n', '        MyHttpSettings --port 80 --probe MyNewProbe --protocol Http --resource-group MyResourceGroup')
            fprintf('%s\n', '        --timeout 30')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway http-settings')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
