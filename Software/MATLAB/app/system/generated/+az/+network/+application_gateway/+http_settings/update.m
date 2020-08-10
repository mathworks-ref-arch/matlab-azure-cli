classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network application-gateway http-settings update : Update HTTP settings.
            this.BaseCmd = 'az network application-gateway http-settings update ';
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
            % Use host name of the backend server as the host header.  Allowed values: false, true.
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

        function this = port(this, varargin)
            % The port number.
            this.Options = [this.Options, '--port', varargin{:}];
        end

        function this = probe(this, varargin)
            % Name or ID of the probe to associate with the HTTP settings.
            this.Options = [this.Options, '--probe', varargin{:}];
        end

        function this = protocol(this, varargin)
            % The HTTP settings protocol.  Allowed values: Http, Https.
            this.Options = [this.Options, '--protocol', varargin{:}];
        end

        function this = root_certs(this, varargin)
            % Space-separated list of trusted root certificates (names or IDs) to associate with the HTTP settings. --host-name or --host-name- from-backend-pool is required when this field is set.
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the backed HTTP settings.
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

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list.  Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network application-gateway http-settings update : Update HTTP settings.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --affinity-cookie-name        : Name used for the affinity cookie.')
            fprintf('%s\n', '    --auth-certs                  : Space-separated list of authentication certificates (names or')
            fprintf('%s\n', '                                    IDs) to associate with the HTTP settings.')
            fprintf('%s\n', '    --connection-draining-timeout : The time in seconds after a backend server is removed during')
            fprintf('%s\n', '                                    which on open connection remains active. Range: 0 (disabled) to')
            fprintf('%s\n', '                                    3600.')
            fprintf('%s\n', '    --cookie-based-affinity       : Enable or disable cookie-based affinity.  Allowed values:')
            fprintf('%s\n', '                                    Disabled, Enabled.')
            fprintf('%s\n', '    --enable-probe                : Whether the probe is enabled.  Allowed values: false, true.')
            fprintf('%s\n', '    --host-name                   : Host header sent to the backend servers.')
            fprintf('%s\n', '    --host-name-from-backend-pool : Use host name of the backend server as the host header.  Allowed')
            fprintf('%s\n', '                                    values: false, true.')
            fprintf('%s\n', '    --no-wait                     : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --path                        : Path that will prefix all HTTP requests.')
            fprintf('%s\n', '    --port                        : The port number.')
            fprintf('%s\n', '    --probe                       : Name or ID of the probe to associate with the HTTP settings.')
            fprintf('%s\n', '    --protocol                    : The HTTP settings protocol.  Allowed values: Http, Https.')
            fprintf('%s\n', '    --root-certs                  : Space-separated list of trusted root certificates (names or IDs)')
            fprintf('%s\n', '                                    to associate with the HTTP settings. --host-name or --host-name-')
            fprintf('%s\n', '                                    from-backend-pool is required when this field is set.')
            fprintf('%s\n', '    --timeout                     : Request timeout in seconds.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                         : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                    value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                    string or JSON string>.')
            fprintf('%s\n', '    --force-string                : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                    attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                      : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                    property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                         : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                    Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --gateway-name                : Name of the application gateway.')
            fprintf('%s\n', '    --ids                         : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                    complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                    arguments. You should provide either --ids or other ''Resource')
            fprintf('%s\n', '                                    Id'' arguments.')
            fprintf('%s\n', '    --name -n                     : The name of the backed HTTP settings.')
            fprintf('%s\n', '    --resource-group -g           : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                    using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                    subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                       : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                   : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                    yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                       : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                    information and examples.')
            fprintf('%s\n', '    --verbose                     : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update HTTP settings to use a new probe.')
            fprintf('%s\n', '        az network application-gateway http-settings update -g MyResourceGroup --gateway-name')
            fprintf('%s\n', '        MyAppGateway \')
            fprintf('%s\n', '            -n MyHttpSettings --probe MyNewProbe')
            fprintf('%s\n', '    Update HTTP settings. (autogenerated)')
            fprintf('%s\n', '        az network application-gateway http-settings update --enable-probe true --gateway-name')
            fprintf('%s\n', '        MyAppGateway --name MyHttpSettings --probe MyNewProbe --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway http-settings')
            fprintf('%s\n', 'update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
