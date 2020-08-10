classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az cdn endpoint rule add : Add a delivery rule to a CDN endpoint.
            % Command group 'cdn endpoint rule' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az cdn endpoint rule add ';
        end
        function this = order(this, varargin)
            % The order of the rule. The order number must start from 0 and consecutive.                    Rule with higher order will be applied later.
            this.Options = [this.Options, '--order', varargin{:}];
        end

        function this = rule_name(this, varargin)
            % Name of the rule.
            this.Options = [this.Options, '--rule-name', varargin{:}];
        end

        function this = destination(this, varargin)
            % The destination path to be used in the rewrite.
            this.Options = [this.Options, '--destination', varargin{:}];
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

        function this = action_name(this, varargin)
            % Name of the action.
            this.Options = [this.Options, '--action-name', varargin{:}];
        end

        function this = cache_behavior(this, varargin)
            % Caching behavior for the requests.  Allowed values: BypassCache, Override, SetIfMissing.
            this.Options = [this.Options, '--cache-behavior', varargin{:}];
        end

        function this = cache_duration(this, varargin)
            % The duration for which the content needs to be cached. Allowed format is [d.]hh:mm:ss.
            this.Options = [this.Options, '--cache-duration', varargin{:}];
        end

        function this = custom_fragment(this, varargin)
            % Fragment to add to the redirect URL.
            this.Options = [this.Options, '--custom-fragment', varargin{:}];
        end

        function this = custom_hostname(this, varargin)
            % Host to redirect.                    Leave empty to use the incoming host as the destination host.
            this.Options = [this.Options, '--custom-hostname', varargin{:}];
        end

        function this = custom_path(this, varargin)
            % The full path to redirect. Path cannot be empty and must start with /.                    Leave empty to use the incoming path as destination path.
            this.Options = [this.Options, '--custom-path', varargin{:}];
        end

        function this = custom_querystring(this, varargin)
            % The set of query strings to be placed in the redirect URL. leave empty to preserve the incoming query string.
            this.Options = [this.Options, '--custom-querystring', varargin{:}];
        end

        function this = header_action(this, varargin)
            % Header action for the requests.  Allowed values: Append, Delete, Overwrite.
            this.Options = [this.Options, '--header-action', varargin{:}];
        end

        function this = header_name(this, varargin)
            % Name of the header to modify.
            this.Options = [this.Options, '--header-name', varargin{:}];
        end

        function this = header_value(this, varargin)
            % Value of the header.
            this.Options = [this.Options, '--header-value', varargin{:}];
        end

        function this = preserve_unmatched_path(this, varargin)
            % If True, the remaining path after the source pattern will be appended to the new destination path.  Allowed values: false, true.
            this.Options = [this.Options, '--preserve-unmatched-path', varargin{:}];
        end

        function this = query_parameters(this, varargin)
            % Query parameters to include or exclude (comma separated).
            this.Options = [this.Options, '--query-parameters', varargin{:}];
        end

        function this = query_string_behavior(this, varargin)
            % Query string behavior for the requests.  Allowed values: Exclude, ExcludeAll, Include, IncludeAll.
            this.Options = [this.Options, '--query-string-behavior', varargin{:}];
        end

        function this = redirect_protocol(this, varargin)
            % Protocol to use for the redirect.  Allowed values: Http, Https, MatchRequest.
            this.Options = [this.Options, '--redirect-protocol', varargin{:}];
        end

        function this = redirect_type(this, varargin)
            % The redirect type the rule will use when redirecting traffic. Allowed values: Found, Moved, PermanentRedirect, TemporaryRedirect.
            this.Options = [this.Options, '--redirect-type', varargin{:}];
        end

        function this = source_pattern(this, varargin)
            % A request URI pattern that identifies the type of requests that may be rewritten. Match Condition Arguments
            this.Options = [this.Options, '--source-pattern', varargin{:}];
        end

        function this = match_values(this, varargin)
            % Match values of the match condition (comma separated).
            this.Options = [this.Options, '--match-values', varargin{:}];
        end

        function this = match_variable(this, varargin)
            % Name of the match condition.
            this.Options = [this.Options, '--match-variable', varargin{:}];
        end

        function this = negate_condition(this, varargin)
            % If true, negates the condition.  Allowed values: false, true.
            this.Options = [this.Options, '--negate-condition', varargin{:}];
        end

        function this = operator(this, varargin)
            % Operator of the match condition.
            this.Options = [this.Options, '--operator', varargin{:}];
        end

        function this = selector(this, varargin)
            % Selector of the match condition.
            this.Options = [this.Options, '--selector', varargin{:}];
        end

        function this = transform(this, varargin)
            % Transform to apply before matching.  Allowed values: Lowercase, Uppercase.
            this.Options = [this.Options, '--transform', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az cdn endpoint rule add : Add a delivery rule to a CDN endpoint.')
            fprintf('%s\n', '        Command group ''cdn endpoint rule'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --order        [Required] : The order of the rule. The order number must start from 0 and')
            fprintf('%s\n', '                                consecutive.                    Rule with higher order will be')
            fprintf('%s\n', '                                applied later.')
            fprintf('%s\n', '    --rule-name    [Required] : Name of the rule.')
            fprintf('%s\n', '    --destination             : The destination path to be used in the rewrite.')
            fprintf('%s\n', 'Action Arguments')
            fprintf('%s\n', '    --action-name  [Required] : Name of the action.')
            fprintf('%s\n', '    --cache-behavior          : Caching behavior for the requests.  Allowed values: BypassCache,')
            fprintf('%s\n', '                                Override, SetIfMissing.')
            fprintf('%s\n', '    --cache-duration          : The duration for which the content needs to be cached.')
            fprintf('%s\n', '                                Allowed format is [d.]hh:mm:ss.')
            fprintf('%s\n', '    --custom-fragment         : Fragment to add to the redirect URL.')
            fprintf('%s\n', '    --custom-hostname         : Host to redirect.                    Leave empty to use the incoming')
            fprintf('%s\n', '                                host as the destination host.')
            fprintf('%s\n', '    --custom-path             : The full path to redirect. Path cannot be empty and must start with')
            fprintf('%s\n', '                                /.                    Leave empty to use the incoming path as')
            fprintf('%s\n', '                                destination path.')
            fprintf('%s\n', '    --custom-querystring      : The set of query strings to be placed in the redirect URL.')
            fprintf('%s\n', '                                leave empty to preserve the incoming query string.')
            fprintf('%s\n', '    --header-action           : Header action for the requests.  Allowed values: Append, Delete,')
            fprintf('%s\n', '                                Overwrite.')
            fprintf('%s\n', '    --header-name             : Name of the header to modify.')
            fprintf('%s\n', '    --header-value            : Value of the header.')
            fprintf('%s\n', '    --preserve-unmatched-path : If True, the remaining path after the source')
            fprintf('%s\n', '                                pattern will be appended to the new destination path.  Allowed')
            fprintf('%s\n', '                                values: false, true.')
            fprintf('%s\n', '    --query-parameters        : Query parameters to include or exclude (comma separated).')
            fprintf('%s\n', '    --query-string-behavior   : Query string behavior for the requests.  Allowed values: Exclude,')
            fprintf('%s\n', '                                ExcludeAll, Include, IncludeAll.')
            fprintf('%s\n', '    --redirect-protocol       : Protocol to use for the redirect.  Allowed values: Http, Https,')
            fprintf('%s\n', '                                MatchRequest.')
            fprintf('%s\n', '    --redirect-type           : The redirect type the rule will use when redirecting traffic.')
            fprintf('%s\n', '                                Allowed values: Found, Moved, PermanentRedirect, TemporaryRedirect.')
            fprintf('%s\n', '    --source-pattern          : A request URI pattern that identifies the type of requests that may')
            fprintf('%s\n', '                                be rewritten.')
            fprintf('%s\n', 'Match Condition Arguments')
            fprintf('%s\n', '    --match-values            : Match values of the match condition (comma separated).')
            fprintf('%s\n', '    --match-variable          : Name of the match condition.')
            fprintf('%s\n', '    --negate-condition        : If true, negates the condition.  Allowed values: false, true.')
            fprintf('%s\n', '    --operator                : Operator of the match condition.')
            fprintf('%s\n', '    --selector                : Selector of the match condition.')
            fprintf('%s\n', '    --transform               : Transform to apply before matching.  Allowed values: Lowercase,')
            fprintf('%s\n', '                                Uppercase.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                     : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                 : Name of the CDN endpoint.')
            fprintf('%s\n', '    --profile-name            : Name of the CDN profile which is unique within the resource group.')
            fprintf('%s\n', '    --resource-group -g       : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
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
            fprintf('%s\n', '    Create a global rule to disable caching.')
            fprintf('%s\n', '        az cdn endpoint rule add -g group -n endpoint --profile-name profile --order 0 --rule-name')
            fprintf('%s\n', '        global --action-name CacheExpiration --cache-behavior BypassCache')
            fprintf('%s\n', '    Create a rule for http to https redirect')
            fprintf('%s\n', '        az cdn endpoint rule add -g group -n endpoint --profile-name profile --order 1 --rule-name')
            fprintf('%s\n', '        "redirect" --match-variable RequestScheme --operator Equal --match-values HTTPS --action-')
            fprintf('%s\n', '        name "UrlRedirect" --redirect-protocol Https --redirect-type Moved')
            fprintf('%s\n', 'For more specific examples, use: az find "az cdn endpoint rule add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
