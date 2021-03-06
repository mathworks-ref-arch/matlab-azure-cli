classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network route-filter rule create : Create a rule in a route filter.
            % Command group 'network route-filter' is in preview. It may be changed/removed in a
            % future release.
            this.BaseCmd = 'az network route-filter rule create ';
        end
        function this = access(this, varargin)
            % The access type of the rule.  Allowed values: Allow, Deny.
            this.Options = [this.Options, '--access', varargin{:}];
        end

        function this = communities(this, varargin)
            % Space-separated list of border gateway protocol (BGP) community values to filter on.  Values from: az network route-filter rule list-service-communities.
            this.Options = [this.Options, '--communities', varargin{:}];
        end

        function this = filter_name(this, varargin)
            % Name of the route filter.
            this.Options = [this.Options, '--filter-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the route filter rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
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
            fprintf('%s\n', '    az network route-filter rule create : Create a rule in a route filter.')
            fprintf('%s\n', '        Command group ''network route-filter'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --access            [Required] : The access type of the rule.  Allowed values: Allow, Deny.')
            fprintf('%s\n', '    --communities       [Required] : Space-separated list of border gateway protocol (BGP) community')
            fprintf('%s\n', '                                     values to filter on.  Values from: az network route-filter rule')
            fprintf('%s\n', '                                     list-service-communities.')
            fprintf('%s\n', '    --filter-name       [Required] : Name of the route filter.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the route filter rule.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
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
            fprintf('%s\n', '    Create a rule in a route filter to allow Dynamics 365.')
            fprintf('%s\n', '        az network route-filter rule create -g MyResourceGroup --filter-name MyRouteFilter \')
            fprintf('%s\n', '            -n MyRouteFilterRule --communities 12076:5040 --access Allow')
            fprintf('%s\n', 'For more specific examples, use: az find "az network route-filter rule create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
