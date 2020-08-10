classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az network application-gateway waf-config set : Update the firewall configuration of a web
            % application.
            % This command is only applicable to application gateways with an SKU type of WAF. To learn
            % more, visit https://docs.microsoft.com/azure/application-gateway/application-gateway-web-
            % application-firewall-cli.
            % This command is implicitly deprecated because command group 'network application-
            % gateway waf-config' is deprecated and will be removed in a future release. Use 'network
            % application-gateway waf-policy' instead.
            this.BaseCmd = 'az network application-gateway waf-config set ';
        end
        function this = enabled(this, varargin)
            % Specify whether the application firewall is enabled.  Allowed values: false, true.
            this.Options = [this.Options, '--enabled', varargin{:}];
        end

        function this = disabled_rule_groups(this, varargin)
            % Space-separated list of rule groups to disable. To disable individual rules, use `--disabled-rules`.  Values from: az network application- gateway waf-config list-rule-sets.
            this.Options = [this.Options, '--disabled-rule-groups', varargin{:}];
        end

        function this = disabled_rules(this, varargin)
            % Space-separated list of rule IDs to disable.  Values from: az network application-gateway waf-config list-rule-sets.
            this.Options = [this.Options, '--disabled-rules', varargin{:}];
        end

        function this = exclusion(this, varargin)
            % Add an exclusion expression to the WAF check. Usage:   --exclusion VARIABLE OPERATOR VALUE Multiple exclusions can be specified by using more than one `--exclusion` argument.
            this.Options = [this.Options, '--exclusion', varargin{:}];
        end

        function this = file_upload_limit(this, varargin)
            % File upload size limit in MB.
            this.Options = [this.Options, '--file-upload-limit', varargin{:}];
        end

        function this = firewall_mode(this, varargin)
            % Web application firewall mode.  Allowed values: Detection, Prevention. Default: Detection.
            this.Options = [this.Options, '--firewall-mode', varargin{:}];
        end

        function this = max_request_body_size(this, varargin)
            % Max request body size in KB.
            this.Options = [this.Options, '--max-request-body-size', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = request_body_check(this, varargin)
            % Allow WAF to check the request body.  Allowed values: false, true.
            this.Options = [this.Options, '--request-body-check', varargin{:}];
        end

        function this = rule_set_type(this, varargin)
            % Rule set type.  Default: OWASP.  Values from: az network application- gateway waf-config list-rule-sets.
            this.Options = [this.Options, '--rule-set-type', varargin{:}];
        end

        function this = rule_set_version(this, varargin)
            % Rule set version.  Values from: az network application-gateway waf- config list-rule-sets.
            this.Options = [this.Options, '--rule-set-version', varargin{:}];
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
            fprintf('%s\n', '    az network application-gateway waf-config set : Update the firewall configuration of a web')
            fprintf('%s\n', '    application.')
            fprintf('%s\n', '        This command is only applicable to application gateways with an SKU type of WAF. To learn')
            fprintf('%s\n', '        more, visit https://docs.microsoft.com/azure/application-gateway/application-gateway-web-')
            fprintf('%s\n', '        application-firewall-cli.')
            fprintf('%s\n', '        This command is implicitly deprecated because command group ''network application-')
            fprintf('%s\n', '        gateway waf-config'' is deprecated and will be removed in a future release. Use ''network')
            fprintf('%s\n', '        application-gateway waf-policy'' instead.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --enabled    [Required] : Specify whether the application firewall is enabled.  Allowed values:')
            fprintf('%s\n', '                              false, true.')
            fprintf('%s\n', '    --disabled-rule-groups  : Space-separated list of rule groups to disable. To disable individual')
            fprintf('%s\n', '                              rules, use `--disabled-rules`.  Values from: az network application-')
            fprintf('%s\n', '                              gateway waf-config list-rule-sets.')
            fprintf('%s\n', '    --disabled-rules        : Space-separated list of rule IDs to disable.  Values from: az network')
            fprintf('%s\n', '                              application-gateway waf-config list-rule-sets.')
            fprintf('%s\n', '    --exclusion             : Add an exclusion expression to the WAF check.')
            fprintf('%s\n', '        Usage:   --exclusion VARIABLE OPERATOR VALUE')
            fprintf('%s\n', '        Multiple exclusions can be specified by using more than one `--exclusion` argument.')
            fprintf('%s\n', '    --file-upload-limit     : File upload size limit in MB.')
            fprintf('%s\n', '    --firewall-mode         : Web application firewall mode.  Allowed values: Detection, Prevention.')
            fprintf('%s\n', '                              Default: Detection.')
            fprintf('%s\n', '    --max-request-body-size : Max request body size in KB.')
            fprintf('%s\n', '    --no-wait               : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --request-body-check    : Allow WAF to check the request body.  Allowed values: false, true.')
            fprintf('%s\n', '    --rule-set-type         : Rule set type.  Default: OWASP.  Values from: az network application-')
            fprintf('%s\n', '                              gateway waf-config list-rule-sets.')
            fprintf('%s\n', '    --rule-set-version      : Rule set version.  Values from: az network application-gateway waf-')
            fprintf('%s\n', '                              config list-rule-sets.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --gateway-name          : Name of the application gateway.')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
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
            fprintf('%s\n', '    Configure WAF on an application gateway in detection mode with default values')
            fprintf('%s\n', '        az network application-gateway waf-config set -g MyResourceGroup --gateway-name MyAppGateway')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --enabled true --firewall-mode Detection --rule-set-version 3.0')
            fprintf('%s\n', '    Disable rules for validation of request body parsing and SQL injection.')
            fprintf('%s\n', '        az network application-gateway waf-config set -g MyResourceGroup --gateway-name MyAppGateway')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --enabled true --rule-set-type OWASP --rule-set-version 3.0 \')
            fprintf('%s\n', '            --disabled-rule-groups REQUEST-942-APPLICATION-ATTACK-SQLI \')
            fprintf('%s\n', '            --disabled-rules 920130 920140')
            fprintf('%s\n', '    Configure WAF on an application gateway with exclusions.')
            fprintf('%s\n', '        az network application-gateway waf-config set -g MyResourceGroup --gateway-name MyAppGateway')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --enabled true --firewall-mode Detection --rule-set-version 3.0 \')
            fprintf('%s\n', '            --exclusion "RequestHeaderNames StartsWith x-header" \')
            fprintf('%s\n', '            --exclusion "RequestArgNames Equals IgnoreThis"')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-config set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
