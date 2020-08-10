classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az ams streaming-endpoint update : Update the details of a streaming endpoint.
            this.BaseCmd = 'az ams streaming-endpoint update ';
        end
        function this = custom_host_names(this, varargin)
            % Space-separated list of custom host names for the streaming endpoint. Use "" to clear existing list.
            this.Options = [this.Options, '--custom-host-names', varargin{:}];
        end

        function this = description(this, varargin)
            % The streaming endpoint description.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = max_cache_age(this, varargin)
            % Max cache age.
            this.Options = [this.Options, '--max-cache-age', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Access Control Support Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = ips(this, varargin)
            % Space-separated IP addresses for access control. Allowed IP addresses can be specified as either a single IP address (e.g. "10.0.0.1") or as an IP range using an IP address and a CIDR subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list. If no IP addresses are specified any IP address will be allowed. CDN Support Arguments
            this.Options = [this.Options, '--ips', varargin{:}];
        end

        function this = cdn_profile(this, varargin)
            % The CDN profile name.
            this.Options = [this.Options, '--cdn-profile', varargin{:}];
        end

        function this = cdn_provider(this, varargin)
            % The CDN provider name. Allowed values: StandardVerizon, PremiumVerizon, StandardAkamai.
            this.Options = [this.Options, '--cdn-provider', varargin{:}];
        end

        function this = disable_cdn(this, varargin)
            % Use this flag to disable CDN for the streaming endpoint. Cross Site Access Policies Arguments
            this.Options = [this.Options, '--disable-cdn', varargin{:}];
        end

        function this = client_access_policy(this, varargin)
            % The XML representing the clientaccesspolicy data used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file. For further information about the XML structure please refer to documentation on https://docs.microsoft.com/rest/api/media/operations/c rosssiteaccesspolicies.
            this.Options = [this.Options, '--client-access-policy', varargin{:}];
        end

        function this = cross_domain_policy(this, varargin)
            % The XML representing the crossdomain data used by Silverlight. Use @{file} to load from a file. For further information about the XML structure please refer to documentation on https://docs.microsoft.com/r est/api/media/operations/crosssiteaccesspolicies.
            this.Options = [this.Options, '--cross-domain-policy', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ams streaming-endpoint update"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the streaming endpoint.
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
            fprintf('%s\n', '    az ams streaming-endpoint update : Update the details of a streaming endpoint.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --custom-host-names    : Space-separated list of custom host names for the streaming endpoint.')
            fprintf('%s\n', '                             Use "" to clear existing list.')
            fprintf('%s\n', '    --description          : The streaming endpoint description.')
            fprintf('%s\n', '    --max-cache-age        : Max cache age.')
            fprintf('%s\n', '    --no-wait              : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                 : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                             existing tags.')
            fprintf('%s\n', 'Access Control Support Arguments')
            fprintf('%s\n', '    --ips                  : Space-separated IP addresses for access control. Allowed IP addresses')
            fprintf('%s\n', '                             can be specified as either a single IP address (e.g. "10.0.0.1") or as')
            fprintf('%s\n', '                             an IP range using an IP address and a CIDR subnet mask (e.g.')
            fprintf('%s\n', '                             "10.0.0.1/22"). Use "" to clear existing list. If no IP addresses are')
            fprintf('%s\n', '                             specified any IP address will be allowed.')
            fprintf('%s\n', 'CDN Support Arguments')
            fprintf('%s\n', '    --cdn-profile          : The CDN profile name.')
            fprintf('%s\n', '    --cdn-provider         : The CDN provider name. Allowed values: StandardVerizon, PremiumVerizon,')
            fprintf('%s\n', '                             StandardAkamai.')
            fprintf('%s\n', '    --disable-cdn          : Use this flag to disable CDN for the streaming endpoint.')
            fprintf('%s\n', 'Cross Site Access Policies Arguments')
            fprintf('%s\n', '    --client-access-policy : The XML representing the clientaccesspolicy data used by Microsoft')
            fprintf('%s\n', '                             Silverlight and Adobe Flash. Use @{file} to load from a file. For')
            fprintf('%s\n', '                             further information about the XML structure please refer to')
            fprintf('%s\n', '                             documentation on https://docs.microsoft.com/rest/api/media/operations/c')
            fprintf('%s\n', '                             rosssiteaccesspolicies.')
            fprintf('%s\n', '    --cross-domain-policy  : The XML representing the crossdomain data used by Silverlight. Use')
            fprintf('%s\n', '                             @{file} to load from a file. For further information about the XML')
            fprintf('%s\n', '                             structure please refer to documentation on https://docs.microsoft.com/r')
            fprintf('%s\n', '                             est/api/media/operations/crosssiteaccesspolicies.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                  : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                             pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                             string>.')
            fprintf('%s\n', '    --force-string         : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                             attempting to convert to JSON.')
            fprintf('%s\n', '    --remove               : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                             property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                  : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                             Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name -a      : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --ids                  : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                             resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                             should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n              : The name of the streaming endpoint.')
            fprintf('%s\n', '    --resource-group -g    : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                             configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams streaming-endpoint update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
