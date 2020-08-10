classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az cdn custom-domain create : Create a new custom domain to provide a hostname for a CDN
            % endpoint.
            % Creates a new custom domain which must point to the hostname of the endpoint. For example,
            % the custom domain hostname cdn.contoso.com would need to have a CNAME record pointing to the
            % hostname of the endpoint related to this custom domain.
            this.BaseCmd = 'az cdn custom-domain create ';
        end
        function this = endpoint_name(this, varargin)
            % Name of the endpoint under the profile which is unique globally.
            this.Options = [this.Options, '--endpoint-name', varargin{:}];
        end

        function this = hostname(this, varargin)
            % The host name of the custom domain. Must be a domain name.
            this.Options = [this.Options, '--hostname', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the custom domain.
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

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
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
            fprintf('%s\n', '    az cdn custom-domain create : Create a new custom domain to provide a hostname for a CDN')
            fprintf('%s\n', '    endpoint.')
            fprintf('%s\n', '        Creates a new custom domain which must point to the hostname of the endpoint. For example,')
            fprintf('%s\n', '        the custom domain hostname cdn.contoso.com would need to have a CNAME record pointing to the')
            fprintf('%s\n', '        hostname of the endpoint related to this custom domain.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --endpoint-name     [Required] : Name of the endpoint under the profile which is unique')
            fprintf('%s\n', '                                     globally.')
            fprintf('%s\n', '    --hostname          [Required] : The host name of the custom domain. Must be a domain name.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the custom domain.')
            fprintf('%s\n', '    --profile-name      [Required] : Name of the CDN profile which is unique within the resource')
            fprintf('%s\n', '                                     group.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
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
            fprintf('%s\n', '    Create a custom domain within an endpoint and profile.')
            fprintf('%s\n', '        az cdn custom-domain create -g group --endpoint-name endpoint --profile-name profile -n')
            fprintf('%s\n', '        domain-name --hostname www.example.com')
            fprintf('%s\n', '    Enable custom https with a minimum')
            fprintf('%s\n', '        az cdn custom-domain create -g group --endpoint-name endpoint --profile-name profile -n')
            fprintf('%s\n', '        domain-name --hostname www.example.com')
            fprintf('%s\n', 'For more specific examples, use: az find "az cdn custom-domain create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
