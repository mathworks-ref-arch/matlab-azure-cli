classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network traffic-manager endpoint update : Update a traffic manager endpoint.
            this.BaseCmd = 'az network traffic-manager endpoint update ';
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
            % The status of the endpoint. If enabled the endpoint is probed for endpoint health and included in the traffic routing method.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--endpoint-status', varargin{:}];
        end

        function this = geo_mapping(this, varargin)
            % Space-separated list of country/region codes mapped to this endpoint when using the 'Geographic' routing method.
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
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

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = type(this, varargin)
            % Endpoint type.  Allowed values: azureEndpoints, externalEndpoints, nestedEndpoints.
            this.Options = [this.Options, '--type', varargin{:}];
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
            fprintf('%s\n', '    az network traffic-manager endpoint update : Update a traffic manager endpoint.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --custom-headers          : Space-separated list of custom headers in KEY=VALUE format.')
            fprintf('%s\n', '    --endpoint-location       : Location of the external or nested endpoints when using the')
            fprintf('%s\n', '                                ''Performance'' routing method.')
            fprintf('%s\n', '    --endpoint-monitor-status : The monitoring status of the endpoint.')
            fprintf('%s\n', '    --endpoint-status         : The status of the endpoint. If enabled the endpoint is probed for')
            fprintf('%s\n', '                                endpoint health and included in the traffic routing method.  Allowed')
            fprintf('%s\n', '                                values: Disabled, Enabled.')
            fprintf('%s\n', '    --geo-mapping             : Space-separated list of country/region codes mapped to this endpoint')
            fprintf('%s\n', '                                when using the ''Geographic'' routing method.')
            fprintf('%s\n', '    --min-child-endpoints     : The minimum number of endpoints that must be available in the child')
            fprintf('%s\n', '                                profile for the parent profile to be considered available. Only')
            fprintf('%s\n', '                                applicable to an endpoint of type ''NestedEndpoints''.')
            fprintf('%s\n', '    --priority                : Priority of the endpoint when using the ''Priority'' traffic routing')
            fprintf('%s\n', '                                method. Values range from 1 to 1000, with lower values representing')
            fprintf('%s\n', '                                higher priority.')
            fprintf('%s\n', '    --subnets                 : Space-separated list of subnet CIDR prefixes (10.0.0.0/24) or subnet')
            fprintf('%s\n', '                                ranges (10.0.0.0-11.0.0.0).')
            fprintf('%s\n', '    --target                  : Fully-qualified DNS name of the endpoint.')
            fprintf('%s\n', '    --target-resource-id      : The Azure Resource URI of the endpoint. Not applicable for endpoints')
            fprintf('%s\n', '                                of type ''ExternalEndpoints''.')
            fprintf('%s\n', '    --weight                  : Weight of the endpoint when using the ''Weighted'' traffic routing')
            fprintf('%s\n', '                                method. Values range from 1 to 1000.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                     : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                string or JSON string>.')
            fprintf('%s\n', '    --force-string            : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                  : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                     : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                     : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                 : Endpoint name.')
            fprintf('%s\n', '    --profile-name            : Name of parent profile.')
            fprintf('%s\n', '    --resource-group -g       : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --type -t                 : Endpoint type.  Allowed values: azureEndpoints, externalEndpoints,')
            fprintf('%s\n', '                                nestedEndpoints.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a traffic manager endpoint to change its weight.')
            fprintf('%s\n', '        az network traffic-manager endpoint update -g MyResourceGroup --profile-name MyTmProfile \')
            fprintf('%s\n', '        -n MyEndpoint --weight 20 --type azureEndpoints')
            fprintf('%s\n', '    Update a traffic manager endpoint. (autogenerated)')
            fprintf('%s\n', '        az network traffic-manager endpoint update --name MyEndpoint --profile-name MyTmProfile')
            fprintf('%s\n', '        --resource-group MyResourceGroup --target webserver.mysite.com --type azureEndpoints')
            fprintf('%s\n', '    Update a traffic manager endpoint. (autogenerated)')
            fprintf('%s\n', '        az network traffic-manager endpoint update --endpoint-status Enabled --name MyEndpoint')
            fprintf('%s\n', '        --profile-name MyTmProfile --resource-group MyResourceGroup --type azureEndpoints')
            fprintf('%s\n', 'For more specific examples, use: az find "az network traffic-manager endpoint update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
