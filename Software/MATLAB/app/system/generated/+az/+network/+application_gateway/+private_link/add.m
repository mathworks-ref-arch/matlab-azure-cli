classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az network application-gateway private-link add : Add a new Private Link with a default IP
            % Configuration and associate it with an existing Frontend IP.
            % Command group 'network application-gateway private-link' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az network application-gateway private-link add ';
        end
        function this = frontend_ip(this, varargin)
            % The frontend IP which the Private Link will associate to.
            this.Options = [this.Options, '--frontend-ip', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of Private Link.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = subnet(this, varargin)
            % The name or an existing ID of a subnet within the same vnet of an application gateway.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = ip_address(this, varargin)
            % The static private IP address of a subnet for Private Link. If omitting, a dynamic one will be created.
            this.Options = [this.Options, '--ip-address', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = primary(this, varargin)
            % Whether the IP configuration is primary or not.  Allowed values: false, true.
            this.Options = [this.Options, '--primary', varargin{:}];
        end

        function this = subnet_prefix(this, varargin)
            % The CIDR prefix to use when creating a new subnet.
            this.Options = [this.Options, '--subnet-prefix', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az network application-gateway private-link add"
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
            fprintf('%s\n', '    az network application-gateway private-link add : Add a new Private Link with a default IP')
            fprintf('%s\n', '    Configuration and associate it with an existing Frontend IP.')
            fprintf('%s\n', '        Command group ''network application-gateway private-link'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --frontend-ip [Required] : The frontend IP which the Private Link will associate to.')
            fprintf('%s\n', '    --name -n     [Required] : The name of Private Link.')
            fprintf('%s\n', '    --subnet      [Required] : The name or an existing ID of a subnet within the same vnet of an')
            fprintf('%s\n', '                               application gateway.')
            fprintf('%s\n', '    --ip-address             : The static private IP address of a subnet for Private Link. If')
            fprintf('%s\n', '                               omitting, a dynamic one will be created.')
            fprintf('%s\n', '    --no-wait                : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --primary                : Whether the IP configuration is primary or not.  Allowed values:')
            fprintf('%s\n', '                               false, true.')
            fprintf('%s\n', '    --subnet-prefix          : The CIDR prefix to use when creating a new subnet.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az network application-gateway private-link add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
