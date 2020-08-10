classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az ams streaming-endpoint create : Create a streaming endpoint.
            this.BaseCmd = 'az ams streaming-endpoint create ';
        end
        function this = account_name(this, varargin)
            % The name of the Azure Media Services account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the streaming endpoint.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = scale_units(this, varargin)
            % The number of scale units for Premium StreamingEndpoints. For Standard StreamingEndpoints, set this value to 0. Use the Scale operation to adjust this value for Premium StreamingEndpoints.
            this.Options = [this.Options, '--scale-units', varargin{:}];
        end

        function this = auto_start(this, varargin)
            % The flag indicates if the resource should be automatically started on creation.
            this.Options = [this.Options, '--auto-start', varargin{:}];
        end

        function this = availability_set_name(this, varargin)
            % The name of the AvailabilitySet used with this StreamingEndpoint for high availability streaming. This value can only be set at creation time.
            this.Options = [this.Options, '--availability-set-name', varargin{:}];
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
            % The CDN provider name. Allowed values: StandardVerizon, PremiumVerizon, StandardAkamai. Cross Site Access Policies Arguments
            this.Options = [this.Options, '--cdn-provider', varargin{:}];
        end

        function this = client_access_policy(this, varargin)
            % The XML representing the clientaccesspolicy data used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file. For further information about the XML structure please refer to documentation on https://docs.microsoft.com/rest/api/m edia/operations/crosssiteaccesspolicies.
            this.Options = [this.Options, '--client-access-policy', varargin{:}];
        end

        function this = cross_domain_policy(this, varargin)
            % The XML representing the crossdomain data used by Silverlight. Use @{file} to load from a file. For further information about the XML structure please refer to documentation on https://docs .microsoft.com/rest/api/media/operations/crosssiteaccesspolicie s.
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

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ams streaming-endpoint create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ams streaming-endpoint create : Create a streaming endpoint.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --account-name -a   [Required] : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the streaming endpoint.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --scale-units       [Required] : The number of scale units for Premium StreamingEndpoints. For')
            fprintf('%s\n', '                                     Standard StreamingEndpoints, set this value to 0. Use the Scale')
            fprintf('%s\n', '                                     operation to adjust this value for Premium StreamingEndpoints.')
            fprintf('%s\n', '    --auto-start                   : The flag indicates if the resource should be automatically')
            fprintf('%s\n', '                                     started on creation.')
            fprintf('%s\n', '    --availability-set-name        : The name of the AvailabilitySet used with this')
            fprintf('%s\n', '                                     StreamingEndpoint for high availability streaming. This value')
            fprintf('%s\n', '                                     can only be set at creation time.')
            fprintf('%s\n', '    --custom-host-names            : Space-separated list of custom host names for the streaming')
            fprintf('%s\n', '                                     endpoint. Use "" to clear existing list.')
            fprintf('%s\n', '    --description                  : The streaming endpoint description.')
            fprintf('%s\n', '    --max-cache-age                : Max cache age.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', 'Access Control Support Arguments')
            fprintf('%s\n', '    --ips                          : Space-separated IP addresses for access control. Allowed IP')
            fprintf('%s\n', '                                     addresses can be specified as either a single IP address (e.g.')
            fprintf('%s\n', '                                     "10.0.0.1") or as an IP range using an IP address and a CIDR')
            fprintf('%s\n', '                                     subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing')
            fprintf('%s\n', '                                     list. If no IP addresses are specified any IP address will be')
            fprintf('%s\n', '                                     allowed.')
            fprintf('%s\n', 'CDN Support Arguments')
            fprintf('%s\n', '    --cdn-profile                  : The CDN profile name.')
            fprintf('%s\n', '    --cdn-provider                 : The CDN provider name. Allowed values: StandardVerizon,')
            fprintf('%s\n', '                                     PremiumVerizon, StandardAkamai.')
            fprintf('%s\n', 'Cross Site Access Policies Arguments')
            fprintf('%s\n', '    --client-access-policy         : The XML representing the clientaccesspolicy data used by')
            fprintf('%s\n', '                                     Microsoft Silverlight and Adobe Flash. Use @{file} to load from')
            fprintf('%s\n', '                                     a file. For further information about the XML structure please')
            fprintf('%s\n', '                                     refer to documentation on https://docs.microsoft.com/rest/api/m')
            fprintf('%s\n', '                                     edia/operations/crosssiteaccesspolicies.')
            fprintf('%s\n', '    --cross-domain-policy          : The XML representing the crossdomain data used by Silverlight.')
            fprintf('%s\n', '                                     Use @{file} to load from a file. For further information about')
            fprintf('%s\n', '                                     the XML structure please refer to documentation on https://docs')
            fprintf('%s\n', '                                     .microsoft.com/rest/api/media/operations/crosssiteaccesspolicie')
            fprintf('%s\n', '                                     s.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az ams streaming-endpoint create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
