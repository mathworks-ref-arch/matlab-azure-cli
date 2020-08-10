classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network application-gateway waf-policy policy-setting update : Update properties of a web
            % application firewall global configuration.
            this.BaseCmd = 'az network application-gateway waf-policy policy-setting update ';
        end
        function this = policy_name(this, varargin)
            % The name of the web application firewall policy.
            this.Options = [this.Options, '--policy-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = file_upload_limit_in_mb(this, varargin)
            % Maximum file upload size in Mb for WAF.".
            this.Options = [this.Options, '--file-upload-limit-in-mb', varargin{:}];
        end

        function this = max_request_body_size_in_kb(this, varargin)
            % Maximum request body size in Kb for WAF.
            this.Options = [this.Options, '--max-request-body-size-in-kb', varargin{:}];
        end

        function this = mode(this, varargin)
            % Describes if it is in detection mode or prevention mode at policy level.  Allowed values: Detection, Prevention.
            this.Options = [this.Options, '--mode', varargin{:}];
        end

        function this = request_body_check(this, varargin)
            % Specified to require WAF to check request Body.  Allowed values: false, true.
            this.Options = [this.Options, '--request-body-check', varargin{:}];
        end

        function this = state(this, varargin)
            % Describes if the policy is in enabled state or disabled state. Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--state', varargin{:}];
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network application-gateway waf-policy policy-setting update : Update properties of a web')
            fprintf('%s\n', '    application firewall global configuration.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --policy-name       [Required] : The name of the web application firewall policy.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --file-upload-limit-in-mb      : Maximum file upload size in Mb for WAF.".')
            fprintf('%s\n', '    --max-request-body-size-in-kb  : Maximum request body size in Kb for WAF.')
            fprintf('%s\n', '    --mode                         : Describes if it is in detection mode or prevention mode at')
            fprintf('%s\n', '                                     policy level.  Allowed values: Detection, Prevention.')
            fprintf('%s\n', '    --request-body-check           : Specified to require WAF to check request Body.  Allowed')
            fprintf('%s\n', '                                     values: false, true.')
            fprintf('%s\n', '    --state                        : Describes if the policy is in enabled state or disabled state.')
            fprintf('%s\n', '                                     Allowed values: Disabled, Enabled.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                          : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                     value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                     string or JSON string>.')
            fprintf('%s\n', '    --force-string                 : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                     attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                       : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                     property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                          : Update an object by specifying a property path and value to')
            fprintf('%s\n', '                                     set.  Example: --set property1.property2=<value>.')
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
            fprintf('%s\n', '    Update properties of a web application firewall global configuration. (autogenerated)')
            fprintf('%s\n', '        az network application-gateway waf-policy policy-setting update --mode Prevention --policy-')
            fprintf('%s\n', '        name MyPolicy --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway waf-policy policy-')
            fprintf('%s\n', 'setting update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
