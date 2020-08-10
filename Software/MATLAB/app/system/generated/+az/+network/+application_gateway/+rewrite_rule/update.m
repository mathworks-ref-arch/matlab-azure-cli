classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network application-gateway rewrite-rule update : Update a rewrite rule.
            this.BaseCmd = 'az network application-gateway rewrite-rule update ';
        end
        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = request_headers(this, varargin)
            % Space-separated list of HEADER=VALUE pairs.  Values from: az network application-gateway rewrite-rule list-request-headers.
            this.Options = [this.Options, '--request-headers', varargin{:}];
        end

        function this = response_headers(this, varargin)
            % Space-separated list of HEADER=VALUE pairs.  Values from: az network application-gateway rewrite-rule list-response-headers.
            this.Options = [this.Options, '--response-headers', varargin{:}];
        end

        function this = sequence(this, varargin)
            % Determines the execution order of the rule in the rule set.
            this.Options = [this.Options, '--sequence', varargin{:}];
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

        function this = gateway_name(this, varargin)
            % Name of the application gateway.
            this.Options = [this.Options, '--gateway-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the rewrite rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = rule_set_name(this, varargin)
            % Name of the rewrite rule set.
            this.Options = [this.Options, '--rule-set-name', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. URL Configuration Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = enable_reroute(this, varargin)
            % If set as true, it will re-evaluate the url path map provided in path based request routing rules using modified path.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-reroute', varargin{:}];
        end

        function this = modified_path(this, varargin)
            % Url path for url rewrite.
            this.Options = [this.Options, '--modified-path', varargin{:}];
        end

        function this = modified_query_string(this, varargin)
            % Query string for url rewrite.
            this.Options = [this.Options, '--modified-query-string', varargin{:}];
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
            fprintf('%s\n', '    az network application-gateway rewrite-rule update : Update a rewrite rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --no-wait               : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --request-headers       : Space-separated list of HEADER=VALUE pairs.  Values from: az network')
            fprintf('%s\n', '                              application-gateway rewrite-rule list-request-headers.')
            fprintf('%s\n', '    --response-headers      : Space-separated list of HEADER=VALUE pairs.  Values from: az network')
            fprintf('%s\n', '                              application-gateway rewrite-rule list-response-headers.')
            fprintf('%s\n', '    --sequence              : Determines the execution order of the rule in the rule set.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                   : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                              pairs.  Example: --add property.listProperty <key=value, string or')
            fprintf('%s\n', '                              JSON string>.')
            fprintf('%s\n', '    --force-string          : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                              attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                              property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                   : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                              Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --gateway-name          : Name of the application gateway.')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n               : Name of the rewrite rule.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', '    --rule-set-name         : Name of the rewrite rule set.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'URL Configuration Arguments')
            fprintf('%s\n', '    --enable-reroute        : If set as true, it will re-evaluate the url path map provided in path')
            fprintf('%s\n', '                              based request routing rules using modified path.  Allowed values:')
            fprintf('%s\n', '                              false, true.')
            fprintf('%s\n', '    --modified-path         : Url path for url rewrite.')
            fprintf('%s\n', '    --modified-query-string : Query string for url rewrite.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a rewrite rule. (autogenerated)')
            fprintf('%s\n', '        az network application-gateway rewrite-rule update --gateway-name MyGateway --name')
            fprintf('%s\n', '        MyRewriteRule --resource-group MyResourceGroup --rule-set-name MyRuleSet')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway rewrite-rule')
            fprintf('%s\n', 'update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
