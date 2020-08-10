classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az network application-gateway ssl-policy set : Update or clear SSL policy settings.
            % To view the predefined policies, use `az network application-gateway ssl-policy predefined
            % list`.
            this.BaseCmd = 'az network application-gateway ssl-policy set ';
        end
        function this = cipher_suites(this, varargin)
            % Ssl cipher suites to be enabled in the specified order to application gateway.  Values from: az network application-gateway ssl-policy list-options.
            this.Options = [this.Options, '--cipher-suites', varargin{:}];
        end

        function this = disabled_ssl_protocols(this, varargin)
            % Space-separated list of protocols to disable.  Values from: az network application-gateway ssl-policy list-options.
            this.Options = [this.Options, '--disabled-ssl-protocols', varargin{:}];
        end

        function this = min_protocol_version(this, varargin)
            % Minimum version of Ssl protocol to be supported on application gateway.  Values from: az network application-gateway ssl-policy list-options.
            this.Options = [this.Options, '--min-protocol-version', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of Ssl predefined policy.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = policy_type(this, varargin)
            % Type of Ssl Policy.
            this.Options = [this.Options, '--policy-type', varargin{:}];
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
            fprintf('%s\n', '    az network application-gateway ssl-policy set : Update or clear SSL policy settings.')
            fprintf('%s\n', '        To view the predefined policies, use `az network application-gateway ssl-policy predefined')
            fprintf('%s\n', '        list`.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --cipher-suites          : Ssl cipher suites to be enabled in the specified order to application')
            fprintf('%s\n', '                               gateway.  Values from: az network application-gateway ssl-policy')
            fprintf('%s\n', '                               list-options.')
            fprintf('%s\n', '    --disabled-ssl-protocols : Space-separated list of protocols to disable.  Values from: az')
            fprintf('%s\n', '                               network application-gateway ssl-policy list-options.')
            fprintf('%s\n', '    --min-protocol-version   : Minimum version of Ssl protocol to be supported on application')
            fprintf('%s\n', '                               gateway.  Values from: az network application-gateway ssl-policy')
            fprintf('%s\n', '                               list-options.')
            fprintf('%s\n', '    --name -n                : Name of Ssl predefined policy.')
            fprintf('%s\n', '    --no-wait                : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --policy-type            : Type of Ssl Policy.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --gateway-name           : Name of the application gateway.')
            fprintf('%s\n', '    --ids                    : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                               resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                               You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Set a predefined SSL policy.')
            fprintf('%s\n', '        az network application-gateway ssl-policy set -g MyResourceGroup --gateway-name MyAppGateway')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            -n AppGwSslPolicy20170401S --policy-type Predefined')
            fprintf('%s\n', '    Set a custom SSL policy with TLSv1_2 and the cipher suites below.')
            fprintf('%s\n', '        az network application-gateway ssl-policy set -g MyResourceGroup --gateway-name MyAppGateway')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --policy-type Custom --min-protocol-version TLSv1_2 \')
            fprintf('%s\n', '            --cipher-suites TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256')
            fprintf('%s\n', '        TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 TLS_RSA_WITH_AES_128_GCM_SHA256')
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway ssl-policy set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
