classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az network application-gateway redirect-config create : Create a redirect configuration.
            this.BaseCmd = 'az network application-gateway redirect-config create ';
        end
        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the redirect configuration.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = type(this, varargin)
            % HTTP redirection type.  Allowed values: Found, Permanent, SeeOther, Temporary.
            this.Options = [this.Options, '--type', varargin{:}];
        end

        function this = include_path(this, varargin)
            % Include path in the redirected url.  Allowed values: false, true.
            this.Options = [this.Options, '--include-path', varargin{:}];
        end

        function this = include_query_string(this, varargin)
            % Include query string in the redirected url.  Allowed values: false, true.
            this.Options = [this.Options, '--include-query-string', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = target_listener(this, varargin)
            % Name or ID of the HTTP listener to redirect the request to.
            this.Options = [this.Options, '--target-listener', varargin{:}];
        end

        function this = target_url(this, varargin)
            % URL to redirect the request to.
            this.Options = [this.Options, '--target-url', varargin{:}];
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
            fprintf('%s\n', '    az network application-gateway redirect-config create : Create a redirect configuration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gateway-name      [Required] : Name of the application gateway.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the redirect configuration.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --type -t           [Required] : HTTP redirection type.  Allowed values: Found, Permanent,')
            fprintf('%s\n', '                                     SeeOther, Temporary.')
            fprintf('%s\n', '    --include-path                 : Include path in the redirected url.  Allowed values: false,')
            fprintf('%s\n', '                                     true.')
            fprintf('%s\n', '    --include-query-string         : Include query string in the redirected url.  Allowed values:')
            fprintf('%s\n', '                                     false, true.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --target-listener              : Name or ID of the HTTP listener to redirect the request to.')
            fprintf('%s\n', '    --target-url                   : URL to redirect the request to.')
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
            fprintf('%s\n', '    Create a redirect configuration to a http-listener called MyBackendListener.')
            fprintf('%s\n', '        az network application-gateway redirect-config create -g MyResourceGroup \')
            fprintf('%s\n', '            --gateway-name MyAppGateway -n MyRedirectConfig --type Permanent \')
            fprintf('%s\n', '            --include-path true --include-query-string true --target-listener MyBackendListener')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway redirect-config')
            fprintf('%s\n', 'create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
