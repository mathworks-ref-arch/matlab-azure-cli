classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az cdn endpoint update : Update a CDN endpoint to manage how content is delivered.
            this.BaseCmd = 'az cdn endpoint update ';
        end
        function this = content_types_to_compress(this, varargin)
            % List of content types on which compression applies. The value should be a valid MIME type.
            this.Options = [this.Options, '--content-types-to-compress', varargin{:}];
        end

        function this = enable_compression(this, varargin)
            % If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on CDN when requested content is smaller than 1 byte or larger than 1 MB.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-compression', varargin{:}];
        end

        function this = no_http(this, varargin)
            % Indicates whether HTTP traffic is not allowed on the endpoint. Default is to allow HTTP traffic.  Allowed values: false, true.
            this.Options = [this.Options, '--no-http', varargin{:}];
        end

        function this = no_https(this, varargin)
            % Indicates whether HTTPS traffic is not allowed on the endpoint. Default is to allow HTTPS traffic.  Allowed values: false, true.
            this.Options = [this.Options, '--no-https', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = origin_host_header(this, varargin)
            % The host header value sent to the origin with each request. This property at Endpoint is only allowed when endpoint uses single origin and can be overridden by the same property specified at origin.If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default.
            this.Options = [this.Options, '--origin-host-header', varargin{:}];
        end

        function this = origin_path(this, varargin)
            % A directory path on the origin that CDN can use to retrieve content from, e.g. contoso.cloudapp.net/originpath.
            this.Options = [this.Options, '--origin-path', varargin{:}];
        end

        function this = query_string_caching(this, varargin)
            % Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL.  Allowed values: BypassCaching, IgnoreQueryString, NotSet, UseQueryString.
            this.Options = [this.Options, '--query-string-caching', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            % Name of the CDN endpoint.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = profile_name(this, varargin)
            % Name of the CDN profile which is unique within the resource group.
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
            fprintf('%s\n', '    az cdn endpoint update : Update a CDN endpoint to manage how content is delivered.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --content-types-to-compress : List of content types on which compression applies. The value')
            fprintf('%s\n', '                                  should be a valid MIME type.')
            fprintf('%s\n', '    --enable-compression        : If compression is enabled, content will be served as compressed if')
            fprintf('%s\n', '                                  user requests for a compressed version. Content won''t be')
            fprintf('%s\n', '                                  compressed on CDN when requested content is smaller than 1 byte or')
            fprintf('%s\n', '                                  larger than 1 MB.  Allowed values: false, true.')
            fprintf('%s\n', '    --no-http                   : Indicates whether HTTP traffic is not allowed on the endpoint.')
            fprintf('%s\n', '                                  Default is to allow HTTP traffic.  Allowed values: false, true.')
            fprintf('%s\n', '    --no-https                  : Indicates whether HTTPS traffic is not allowed on the endpoint.')
            fprintf('%s\n', '                                  Default is to allow HTTPS traffic.  Allowed values: false, true.')
            fprintf('%s\n', '    --no-wait                   : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --origin-host-header        : The host header value sent to the origin with each request. This')
            fprintf('%s\n', '                                  property at Endpoint is only allowed when endpoint uses single')
            fprintf('%s\n', '                                  origin and can be overridden by the same property specified at')
            fprintf('%s\n', '                                  origin.If you leave this blank, the request hostname determines')
            fprintf('%s\n', '                                  this value. Azure CDN origins, such as Web Apps, Blob Storage, and')
            fprintf('%s\n', '                                  Cloud Services require this host header value to match the origin')
            fprintf('%s\n', '                                  hostname by default.')
            fprintf('%s\n', '    --origin-path               : A directory path on the origin that CDN can use to retrieve')
            fprintf('%s\n', '                                  content from, e.g. contoso.cloudapp.net/originpath.')
            fprintf('%s\n', '    --query-string-caching      : Defines how CDN caches requests that include query strings. You')
            fprintf('%s\n', '                                  can ignore any query strings when caching, bypass caching to')
            fprintf('%s\n', '                                  prevent requests that contain query strings from being cached, or')
            fprintf('%s\n', '                                  cache every request with a unique URL.  Allowed values:')
            fprintf('%s\n', '                                  BypassCaching, IgnoreQueryString, NotSet, UseQueryString.')
            fprintf('%s\n', '    --tags                      : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                  clear existing tags.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                       : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                  value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                  string or JSON string>.')
            fprintf('%s\n', '    --force-string              : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                  attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                    : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                  property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                       : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                       : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                  complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                  arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                  arguments.')
            fprintf('%s\n', '    --name -n                   : Name of the CDN endpoint.')
            fprintf('%s\n', '    --profile-name              : Name of the CDN profile which is unique within the resource group.')
            fprintf('%s\n', '    --resource-group -g         : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                  `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Turn off HTTP traffic for an endpoint.')
            fprintf('%s\n', '        az cdn endpoint update -g group -n endpoint --profile-name profile --no-http')
            fprintf('%s\n', '    Enable content compression for an endpoint.')
            fprintf('%s\n', '        az cdn endpoint update -g group -n endpoint --profile-name profile --enable-compression')
            fprintf('%s\n', 'For more specific examples, use: az find "az cdn endpoint update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
