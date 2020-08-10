classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network application-gateway url-path-map rule create : Create a rule for a URL path map.
            this.BaseCmd = 'az network application-gateway url-path-map rule create ';
        end
        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the url-path-map rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = path_map_name(this, varargin)
            % The name of the URL path map.
            this.Options = [this.Options, '--path-map-name', varargin{:}];
        end

        function this = paths(this, varargin)
            % Space-separated list of paths to associate with the rule. Valid paths start and end with "/" (ex: "/bar/").
            this.Options = [this.Options, '--paths', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = address_pool(this, varargin)
            % The name or ID of the backend address pool to use with the created rule.
            this.Options = [this.Options, '--address-pool', varargin{:}];
        end

        function this = http_settings(this, varargin)
            % The name or ID of the HTTP settings to use with the created rule.
            this.Options = [this.Options, '--http-settings', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = redirect_config(this, varargin)
            % The name or ID of the redirect configuration to use with the created rule.
            this.Options = [this.Options, '--redirect-config', varargin{:}];
        end

        function this = rewrite_rule_set(this, varargin)
            % The name or ID of the rewrite rule set. If not specified, the default for the map will be used.
            this.Options = [this.Options, '--rewrite-rule-set', varargin{:}];
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
            fprintf('%s\n', '    az network application-gateway url-path-map rule create : Create a rule for a URL path map.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-name      [Required] : Name of the application gateway.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the url-path-map rule.')
            fprintf('%s\n', '    --path-map-name     [Required] : The name of the URL path map.')
            fprintf('%s\n', '    --paths             [Required] : Space-separated list of paths to associate with the rule. Valid')
            fprintf('%s\n', '                                     paths start and end with "/" (ex: "/bar/").')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --address-pool                 : The name or ID of the backend address pool to use with the')
            fprintf('%s\n', '                                     created rule.')
            fprintf('%s\n', '    --http-settings                : The name or ID of the HTTP settings to use with the created')
            fprintf('%s\n', '                                     rule.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --redirect-config              : The name or ID of the redirect configuration to use with the')
            fprintf('%s\n', '                                     created rule.')
            fprintf('%s\n', '    --rewrite-rule-set             : The name or ID of the rewrite rule set. If not specified, the')
            fprintf('%s\n', '                                     default for the map will be used.')
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
            fprintf('%s\n', '    Create a rule for a URL path map.')
            fprintf('%s\n', '        az network application-gateway url-path-map rule create -g MyResourceGroup \')
            fprintf('%s\n', '            --gateway-name MyAppGateway -n MyUrlPathMapRule2 --path-map-name MyUrlPathMap \')
            fprintf('%s\n', '            --paths /mypath2/* --address-pool MyAddressPool --http-settings MyHttpSettings')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway url-path-map rule')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
