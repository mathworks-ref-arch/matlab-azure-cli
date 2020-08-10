classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network traffic-manager endpoint create : Create a traffic manager endpoint.
            this.BaseCmd = 'az network traffic-manager endpoint create ';
        end
        function this = name(this, varargin)
            % Endpoint name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = profile_name(this, varargin)
            % Name of parent profile.
            this.Options = [this.Options, '--profile-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = type(this, varargin)
            % Endpoint type.  Allowed values: azureEndpoints, externalEndpoints, nestedEndpoints.
            this.Options = [this.Options, '--type', varargin{:}];
        end

        function this = custom_headers(this, varargin)
            % Space-separated list of custom headers in KEY=VALUE format.
            this.Options = [this.Options, '--custom-headers', varargin{:}];
        end

        function this = endpoint_location(this, varargin)
            % Location of the external or nested endpoints when using the 'Performance' routing method.
            this.Options = [this.Options, '--endpoint-location', varargin{:}];
        end

        function this = endpoint_monitor_status(this, varargin)
            % The monitoring status of the endpoint.
            this.Options = [this.Options, '--endpoint-monitor-status', varargin{:}];
        end

        function this = endpoint_status(this, varargin)
            % The status of the endpoint. If enabled the endpoint is probed for endpoint health and included in the traffic routing method. Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--endpoint-status', varargin{:}];
        end

        function this = geo_mapping(this, varargin)
            % Space-separated list of country/region codes mapped to this endpoint when using the 'Geographic' routing method.  Values from: az network traffic-manager endpoint show-geographic- hierarchy.
            this.Options = [this.Options, '--geo-mapping', varargin{:}];
        end

        function this = min_child_endpoints(this, varargin)
            % The minimum number of endpoints that must be available in the child profile for the parent profile to be considered available. Only applicable to an endpoint of type 'NestedEndpoints'.
            this.Options = [this.Options, '--min-child-endpoints', varargin{:}];
        end

        function this = priority(this, varargin)
            % Priority of the endpoint when using the 'Priority' traffic routing method. Values range from 1 to 1000, with lower values representing higher priority.
            this.Options = [this.Options, '--priority', varargin{:}];
        end

        function this = subnets(this, varargin)
            % Space-separated list of subnet CIDR prefixes (10.0.0.0/24) or subnet ranges (10.0.0.0-11.0.0.0).
            this.Options = [this.Options, '--subnets', varargin{:}];
        end

        function this = target(this, varargin)
            % Fully-qualified DNS name of the endpoint.
            this.Options = [this.Options, '--target', varargin{:}];
        end

        function this = target_resource_id(this, varargin)
            % The Azure Resource URI of the endpoint. Not applicable for endpoints of type 'ExternalEndpoints'.
            this.Options = [this.Options, '--target-resource-id', varargin{:}];
        end

        function this = weight(this, varargin)
            % Weight of the endpoint when using the 'Weighted' traffic routing method. Values range from 1 to 1000.
            this.Options = [this.Options, '--weight', varargin{:}];
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
            fprintf('%s\n', '    az network traffic-manager endpoint create : Create a traffic manager endpoint.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Endpoint name.')
            fprintf('%s\n', '    --profile-name      [Required] : Name of parent profile.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --type -t           [Required] : Endpoint type.  Allowed values: azureEndpoints,')
            fprintf('%s\n', '                                     externalEndpoints, nestedEndpoints.')
            fprintf('%s\n', '    --custom-headers               : Space-separated list of custom headers in KEY=VALUE format.')
            fprintf('%s\n', '    --endpoint-location            : Location of the external or nested endpoints when using the')
            fprintf('%s\n', '                                     ''Performance'' routing method.')
            fprintf('%s\n', '    --endpoint-monitor-status      : The monitoring status of the endpoint.')
            fprintf('%s\n', '    --endpoint-status              : The status of the endpoint. If enabled the endpoint is probed')
            fprintf('%s\n', '                                     for endpoint health and included in the traffic routing method.')
            fprintf('%s\n', '                                     Allowed values: Disabled, Enabled.')
            fprintf('%s\n', '    --geo-mapping                  : Space-separated list of country/region codes mapped to this')
            fprintf('%s\n', '                                     endpoint when using the ''Geographic'' routing method.  Values')
            fprintf('%s\n', '                                     from: az network traffic-manager endpoint show-geographic-')
            fprintf('%s\n', '                                     hierarchy.')
            fprintf('%s\n', '    --min-child-endpoints          : The minimum number of endpoints that must be available in the')
            fprintf('%s\n', '                                     child profile for the parent profile to be considered')
            fprintf('%s\n', '                                     available. Only applicable to an endpoint of type')
            fprintf('%s\n', '                                     ''NestedEndpoints''.')
            fprintf('%s\n', '    --priority                     : Priority of the endpoint when using the ''Priority'' traffic')
            fprintf('%s\n', '                                     routing method. Values range from 1 to 1000, with lower values')
            fprintf('%s\n', '                                     representing higher priority.')
            fprintf('%s\n', '    --subnets                      : Space-separated list of subnet CIDR prefixes (10.0.0.0/24) or')
            fprintf('%s\n', '                                     subnet ranges (10.0.0.0-11.0.0.0).')
            fprintf('%s\n', '    --target                       : Fully-qualified DNS name of the endpoint.')
            fprintf('%s\n', '    --target-resource-id           : The Azure Resource URI of the endpoint. Not applicable for')
            fprintf('%s\n', '                                     endpoints of type ''ExternalEndpoints''.')
            fprintf('%s\n', '    --weight                       : Weight of the endpoint when using the ''Weighted'' traffic')
            fprintf('%s\n', '                                     routing method. Values range from 1 to 1000.')
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
            fprintf('%s\n', '    Create an endpoint for a performance profile to point to an Azure Web App endpoint.')
            fprintf('%s\n', '        az network traffic-manager endpoint create -g MyResourceGroup --profile-name MyTmProfile \')
            fprintf('%s\n', '            -n MyEndpoint --type azureEndpoints --target-resource-id $MyWebApp1Id --endpoint-status')
            fprintf('%s\n', '        enabled')
            fprintf('%s\n', 'For more specific examples, use: az find "az network traffic-manager endpoint create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
