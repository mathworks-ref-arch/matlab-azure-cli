classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az cdn endpoint waf policy set : Set the CDN WAF policy applied to a CDN endpoint.
            % Command group 'cdn endpoint waf policy' is in preview. It may be changed/removed in a
            % future release.
            this.BaseCmd = 'az cdn endpoint waf policy set ';
        end
        function this = waf_policy_id(this, varargin)
            % The Resource ID of the CDN WAF policy to apply to this endpoint.
            this.Options = [this.Options, '--waf-policy-id', varargin{:}];
        end

        function this = waf_policy_name(this, varargin)
            % The name of the CDN WAF policy to apply to this endpoint. Ignored if --waf-policy-id is set.
            this.Options = [this.Options, '--waf-policy-name', varargin{:}];
        end

        function this = waf_policy_resource_group_name(this, varargin)
            % The resource group of the CDN WAF policy to apply to this endpoint. Ignored if --waf-policy-id is set.
            this.Options = [this.Options, '--waf-policy-resource-group-name', varargin{:}];
        end

        function this = waf_policy_subscription_id(this, varargin)
            % The Resource ID of the CDN WAF policy to apply to this endpoint. ignored if --waf-policy-id is set.
            this.Options = [this.Options, '--waf-policy-subscription-id', varargin{:}];
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

        function this = endpoint_name(this, varargin)
            % Name of the CDN endpoint.
            this.Options = [this.Options, '--endpoint-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az cdn endpoint waf policy set : Set the CDN WAF policy applied to a CDN endpoint.')
            fprintf('%s\n', '        Command group ''cdn endpoint waf policy'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --waf-policy-id                  : The Resource ID of the CDN WAF policy to apply to this')
            fprintf('%s\n', '                                       endpoint.')
            fprintf('%s\n', '    --waf-policy-name                : The name of the CDN WAF policy to apply to this endpoint.')
            fprintf('%s\n', '                                       Ignored if --waf-policy-id is set.')
            fprintf('%s\n', '    --waf-policy-resource-group-name : The resource group of the CDN WAF policy to apply to this')
            fprintf('%s\n', '                                       endpoint. Ignored if --waf-policy-id is set.')
            fprintf('%s\n', '    --waf-policy-subscription-id     : The Resource ID of the CDN WAF policy to apply to this')
            fprintf('%s\n', '                                       endpoint. ignored if --waf-policy-id is set.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --endpoint-name                  : Name of the CDN endpoint.')
            fprintf('%s\n', '    --ids                            : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                       complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                       Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                       ''Resource Id'' arguments.')
            fprintf('%s\n', '    --profile-name                   : Name of the CDN profile which is unique within the resource')
            fprintf('%s\n', '                                       group.')
            fprintf('%s\n', '    --resource-group -g              : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                       using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                   : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                       subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                          : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                        : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors               : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                      : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                       tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                          : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                       information and examples.')
            fprintf('%s\n', '    --verbose                        : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Set the CDN WAF policy applied to a CDN endpoint by WAF Policy name.')
            fprintf('%s\n', '        az cdn endpoint waf policy set -g group --endpoint-name endpoint --profile-name profile')
            fprintf('%s\n', '        --waf-policy-subscription-id xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx')
            fprintf('%s\n', 'For more specific examples, use: az find "az cdn endpoint waf policy set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
