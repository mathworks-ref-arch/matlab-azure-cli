classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network application-gateway url-path-map create : Create a URL path map.
            % The map must be created with at least one rule. This command requires the creation of the
            % first rule at the time the map is created. To learn more visit
            % https://docs.microsoft.com/azure/application-gateway/application-gateway-create-url-route-
            % cli.
            this.BaseCmd = 'az network application-gateway url-path-map create ';
        end
        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the URL path map.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = default_address_pool(this, varargin)
            % The name or ID of the default backend address pool, if different from --address-pool.
            this.Options = [this.Options, '--default-address-pool', varargin{:}];
        end

        function this = default_http_settings(this, varargin)
            % The name or ID of the default HTTP settings, if different from --http-settings.
            this.Options = [this.Options, '--default-http-settings', varargin{:}];
        end

        function this = default_redirect_config(this, varargin)
            % The name or ID of the default redirect configuration.
            this.Options = [this.Options, '--default-redirect-config', varargin{:}];
        end

        function this = default_rewrite_rule_set(this, varargin)
            % The name or ID of the default rewrite rule set, if different from --rewrite-rule-set.
            this.Options = [this.Options, '--default-rewrite-rule-set', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish. First Rule Arguments
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = paths(this, varargin)
            % Space-separated list of paths to associate with the rule. Valid paths start and end with "/" (ex: "/bar/").
            this.Options = [this.Options, '--paths', varargin{:}];
        end

        function this = address_pool(this, varargin)
            % The name or ID of the backend address pool to use with the created rule.
            this.Options = [this.Options, '--address-pool', varargin{:}];
        end

        function this = http_settings(this, varargin)
            % The name or ID of the HTTP settings to use with the created rule.
            this.Options = [this.Options, '--http-settings', varargin{:}];
        end

        function this = redirect_config(this, varargin)
            % The name or ID of the redirect configuration to use with the created rule.
            this.Options = [this.Options, '--redirect-config', varargin{:}];
        end

        function this = rewrite_rule_set(this, varargin)
            % The name or ID of the rewrite rule set. If not specified, the default for the map will be used.
            this.Options = [this.Options, '--rewrite-rule-set', varargin{:}];
        end

        function this = rule_name(this, varargin)
            % The name of the url-path-map rule.  Default: default.
            this.Options = [this.Options, '--rule-name', varargin{:}];
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
            fprintf('%s\n', '    az network application-gateway url-path-map create : Create a URL path map.')
            fprintf('%s\n', '        The map must be created with at least one rule. This command requires the creation of the')
            fprintf('%s\n', '        first rule at the time the map is created. To learn more visit')
            fprintf('%s\n', '        https://docs.microsoft.com/azure/application-gateway/application-gateway-create-url-route-')
            fprintf('%s\n', '        cli.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-name      [Required] : Name of the application gateway.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the URL path map.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --default-address-pool         : The name or ID of the default backend address pool, if')
            fprintf('%s\n', '                                     different from --address-pool.')
            fprintf('%s\n', '    --default-http-settings        : The name or ID of the default HTTP settings, if different from')
            fprintf('%s\n', '                                     --http-settings.')
            fprintf('%s\n', '    --default-redirect-config      : The name or ID of the default redirect configuration.')
            fprintf('%s\n', '    --default-rewrite-rule-set     : The name or ID of the default rewrite rule set, if different')
            fprintf('%s\n', '                                     from --rewrite-rule-set.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'First Rule Arguments')
            fprintf('%s\n', '    --paths             [Required] : Space-separated list of paths to associate with the rule. Valid')
            fprintf('%s\n', '                                     paths start and end with "/" (ex: "/bar/").')
            fprintf('%s\n', '    --address-pool                 : The name or ID of the backend address pool to use with the')
            fprintf('%s\n', '                                     created rule.')
            fprintf('%s\n', '    --http-settings                : The name or ID of the HTTP settings to use with the created')
            fprintf('%s\n', '                                     rule.')
            fprintf('%s\n', '    --redirect-config              : The name or ID of the redirect configuration to use with the')
            fprintf('%s\n', '                                     created rule.')
            fprintf('%s\n', '    --rewrite-rule-set             : The name or ID of the rewrite rule set. If not specified, the')
            fprintf('%s\n', '                                     default for the map will be used.')
            fprintf('%s\n', '    --rule-name                    : The name of the url-path-map rule.  Default: default.')
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
            fprintf('%s\n', '    Create a URL path map with a rule.')
            fprintf('%s\n', '        az network application-gateway url-path-map create -g MyResourceGroup --gateway-name')
            fprintf('%s\n', '        MyAppGateway \')
            fprintf('%s\n', '            -n MyUrlPathMap --rule-name MyUrlPathMapRule1 --paths /mypath1/* --address-pool')
            fprintf('%s\n', '        MyAddressPool \')
            fprintf('%s\n', '            --default-address-pool MyAddressPool --http-settings MyHttpSettings --default-http-')
            fprintf('%s\n', '        settings MyHttpSettings')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway url-path-map')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
