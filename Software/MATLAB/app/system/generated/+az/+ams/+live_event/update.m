classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az ams live-event update : Update the details of a live event.
            this.BaseCmd = 'az ams live-event update ';
        end
        function this = description(this, varargin)
            % The live event description.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Cross Site Access Policies Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = client_access_policy(this, varargin)
            % Filepath to the clientaccesspolicy.xml used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file.
            this.Options = [this.Options, '--client-access-policy', varargin{:}];
        end

        function this = cross_domain_policy(this, varargin)
            % Filepath to the crossdomain.xml used by Microsoft Silverlight and Adobe Flash. Use @{file} to load from a file.
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
            % Increase logging verbosity. Use --debug for full debug logs.
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
            % The name of the live event.
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
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>. Input Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = ips(this, varargin)
            % Space-separated IP addresses for access control. Allowed IP addresses can be specified as either a single IP address (e.g. "10.0.0.1") or as an IP range using an IP address and a CIDR subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list. Use "AllowAll" to allow all IP addresses. Allowing all IPs is not recommended for production environments.
            this.Options = [this.Options, '--ips', varargin{:}];
        end

        function this = key_frame_interval_duration(this, varargin)
            % ISO 8601 timespan duration of the key frame interval duration in seconds. The value should be an interger in the range of 1 (PT1S or 00:00:01) to 30 (PT30S or 00:00:30) seconds. Preview Arguments
            this.Options = [this.Options, '--key-frame-interval-duration', varargin{:}];
        end

        function this = preview_ips(this, varargin)
            % Space-separated IP addresses for access control. Allowed IP addresses can be specified as either a single IP address (e.g. "10.0.0.1") or as an IP range using an IP address and a CIDR subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list. Use "AllowAll" to allow all IP addresses. Allowing all IPs is not recommended for production environments.
            this.Options = [this.Options, '--preview-ips', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ams live-event update : Update the details of a live event.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --description                 : The live event description.')
            fprintf('%s\n', '    --tags                        : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                    clear existing tags.')
            fprintf('%s\n', 'Cross Site Access Policies Arguments')
            fprintf('%s\n', '    --client-access-policy        : Filepath to the clientaccesspolicy.xml used by Microsoft')
            fprintf('%s\n', '                                    Silverlight and Adobe Flash. Use @{file} to load from a file.')
            fprintf('%s\n', '    --cross-domain-policy         : Filepath to the crossdomain.xml used by Microsoft Silverlight')
            fprintf('%s\n', '                                    and Adobe Flash. Use @{file} to load from a file.')
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
            fprintf('%s\n', 'Input Arguments')
            fprintf('%s\n', '    --ips                         : Space-separated IP addresses for access control. Allowed IP')
            fprintf('%s\n', '                                    addresses can be specified as either a single IP address (e.g.')
            fprintf('%s\n', '                                    "10.0.0.1") or as an IP range using an IP address and a CIDR')
            fprintf('%s\n', '                                    subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list.')
            fprintf('%s\n', '                                    Use "AllowAll" to allow all IP addresses. Allowing all IPs is')
            fprintf('%s\n', '                                    not recommended for production environments.')
            fprintf('%s\n', '    --key-frame-interval-duration : ISO 8601 timespan duration of the key frame interval duration in')
            fprintf('%s\n', '                                    seconds. The value should be an interger in the range of 1 (PT1S')
            fprintf('%s\n', '                                    or 00:00:01) to 30 (PT30S or 00:00:30) seconds.')
            fprintf('%s\n', 'Preview Arguments')
            fprintf('%s\n', '    --preview-ips                 : Space-separated IP addresses for access control. Allowed IP')
            fprintf('%s\n', '                                    addresses can be specified as either a single IP address (e.g.')
            fprintf('%s\n', '                                    "10.0.0.1") or as an IP range using an IP address and a CIDR')
            fprintf('%s\n', '                                    subnet mask (e.g. "10.0.0.1/22"). Use "" to clear existing list.')
            fprintf('%s\n', '                                    Use "AllowAll" to allow all IP addresses. Allowing all IPs is')
            fprintf('%s\n', '                                    not recommended for production environments.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name -a             : The name of the Azure Media Services account.')
            fprintf('%s\n', '    --ids                         : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                    complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                    arguments. You should provide either --ids or other ''Resource')
            fprintf('%s\n', '                                    Id'' arguments.')
            fprintf('%s\n', '    --name -n                     : The name of the live event.')
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
            fprintf('%s\n', '    Set a new allowed IP address and remove an existing IP address at index ''0''.')
            fprintf('%s\n', '        az ams live-event update -a amsAccount -g resourceGroup -n liveEventName --remove')
            fprintf('%s\n', '        input.accessControl.ip.allow 0 --add input.accessControl.ip.allow 1.2.3.4/22')
            fprintf('%s\n', '    Clear existing IP addresses and set new ones.')
            fprintf('%s\n', '        az ams live-event update -a amsAccount -g resourceGroup -n liveEventName --ips 1.2.3.4/22')
            fprintf('%s\n', '        5.6.7.8/30')
            fprintf('%s\n', 'For more specific examples, use: az find "az ams live-event update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
