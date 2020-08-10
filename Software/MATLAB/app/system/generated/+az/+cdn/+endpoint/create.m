classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az cdn endpoint create : Create a named endpoint to connect to a CDN.
            this.BaseCmd = 'az cdn endpoint create ';
        end
        function this = name(this, varargin)
            % Name of the CDN endpoint.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = origin(this, varargin)
            % Endpoint origin specified by the following space-delimited 6 tuple: `www.example.com http_port https_port private_link_resource_id private_link_location private_link_approval_message`. The HTTP and HTTPS ports and the private link resource ID and location are optional. The HTTP and HTTPS ports default to 80 and 443, respectively. Private link fields are only valid for the sku Standard_Microsoft, and private_link_location is required if private_link_resource_id is set.
            this.Options = [this.Options, '--origin', varargin{:}];
        end

        function this = profile_name(this, varargin)
            % Name of the CDN profile which is unique within the resource group.
            this.Options = [this.Options, '--profile-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = content_types_to_compress(this, varargin)
            % List of content types on which compression applies. The value should be a valid MIME type.
            this.Options = [this.Options, '--content-types-to-compress', varargin{:}];
        end

        function this = enable_compression(this, varargin)
            % If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on CDN when requested content is smaller than 1 byte or larger than 1 MB.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-compression', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
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

        function this = query_string_caching_behavior(this, varargin)
            % Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL.
            this.Options = [this.Options, '--query-string-caching-behavior', varargin{:}];
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
            fprintf('%s\n', '    az cdn endpoint create : Create a named endpoint to connect to a CDN.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n            [Required] : Name of the CDN endpoint.')
            fprintf('%s\n', '    --origin             [Required] : Endpoint origin specified by the following space-delimited 6')
            fprintf('%s\n', '                                      tuple: `www.example.com http_port https_port')
            fprintf('%s\n', '                                      private_link_resource_id private_link_location')
            fprintf('%s\n', '                                      private_link_approval_message`. The HTTP and HTTPS ports and')
            fprintf('%s\n', '                                      the private link resource ID and location are optional. The')
            fprintf('%s\n', '                                      HTTP and HTTPS ports default to 80 and 443, respectively.')
            fprintf('%s\n', '                                      Private link fields are only valid for the sku')
            fprintf('%s\n', '                                      Standard_Microsoft, and private_link_location is required if')
            fprintf('%s\n', '                                      private_link_resource_id is set.')
            fprintf('%s\n', '    --profile-name       [Required] : Name of the CDN profile which is unique within the resource')
            fprintf('%s\n', '                                      group.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --content-types-to-compress     : List of content types on which compression applies. The value')
            fprintf('%s\n', '                                      should be a valid MIME type.')
            fprintf('%s\n', '    --enable-compression            : If compression is enabled, content will be served as')
            fprintf('%s\n', '                                      compressed if user requests for a compressed version. Content')
            fprintf('%s\n', '                                      won''t be compressed on CDN when requested content is smaller')
            fprintf('%s\n', '                                      than 1 byte or larger than 1 MB.  Allowed values: false, true.')
            fprintf('%s\n', '    --location -l                   : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                      configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                      location=<location>`.')
            fprintf('%s\n', '    --no-http                       : Indicates whether HTTP traffic is not allowed on the endpoint.')
            fprintf('%s\n', '                                      Default is to allow HTTP traffic.  Allowed values: false,')
            fprintf('%s\n', '                                      true.')
            fprintf('%s\n', '    --no-https                      : Indicates whether HTTPS traffic is not allowed on the')
            fprintf('%s\n', '                                      endpoint. Default is to allow HTTPS traffic.  Allowed values:')
            fprintf('%s\n', '                                      false, true.')
            fprintf('%s\n', '    --no-wait                       : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --origin-host-header            : The host header value sent to the origin with each request.')
            fprintf('%s\n', '                                      This property at Endpoint is only allowed when endpoint uses')
            fprintf('%s\n', '                                      single origin and can be overridden by the same property')
            fprintf('%s\n', '                                      specified at origin.If you leave this blank, the request')
            fprintf('%s\n', '                                      hostname determines this value. Azure CDN origins, such as Web')
            fprintf('%s\n', '                                      Apps, Blob Storage, and Cloud Services require this host')
            fprintf('%s\n', '                                      header value to match the origin hostname by default.')
            fprintf('%s\n', '    --origin-path                   : A directory path on the origin that CDN can use to retrieve')
            fprintf('%s\n', '                                      content from, e.g. contoso.cloudapp.net/originpath.')
            fprintf('%s\n', '    --query-string-caching-behavior : Defines how CDN caches requests that include query strings.')
            fprintf('%s\n', '                                      You can ignore any query strings when caching, bypass caching')
            fprintf('%s\n', '                                      to prevent requests that contain query strings from being')
            fprintf('%s\n', '                                      cached, or cache every request with a unique URL.')
            fprintf('%s\n', '    --tags                          : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                      clear existing tags.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an endpoint to service content for hostname over HTTP or HTTPS.')
            fprintf('%s\n', '        az cdn endpoint create -g group -n endpoint --profile-name profile --origin www.example.com')
            fprintf('%s\n', '    Create an endpoint with a custom domain origin with HTTP and HTTPS ports.')
            fprintf('%s\n', '        az cdn endpoint create -g group -n endpoint --profile-name profile --origin www.example.com')
            fprintf('%s\n', '        88 4444')
            fprintf('%s\n', '    Create an endpoint with a custom domain origin with private link enabled.')
            fprintf('%s\n', '        az cdn endpoint create -g group -n endpoint --profile-name profile --origin www.example.com')
            fprintf('%s\n', '        80 443')
            fprintf('%s\n', '        /subscriptions/subid/resourcegroups/rg1/providers/Microsoft.Network/privateLinkServices/pls1')
            fprintf('%s\n', '        eastus "Please approve this request"')
            fprintf('%s\n', '    Create an endpoint with a custom domain with compression and only HTTPS.')
            fprintf('%s\n', '        az cdn endpoint create -g group -n endpoint --profile-name profile --origin www.example.com')
            fprintf('%s\n', '        --no-http --enable-compression')
            fprintf('%s\n', 'For more specific examples, use: az find "az cdn endpoint create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
