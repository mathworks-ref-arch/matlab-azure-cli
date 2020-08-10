classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az dla account firewall update : Update a firewall rule in a Data Lake Analytics account.
            % Command group 'dla' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az dla account firewall update ';
        end
        function this = firewall_rule_name(this, varargin)
            % The name of the firewall rule to update.
            this.Options = [this.Options, '--firewall-rule-name', varargin{:}];
        end

        function this = end_ip_address(this, varargin)
            % The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
            this.Options = [this.Options, '--end-ip-address', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % If not specified, will attempt to discover the resource group for the specified Data Lake Analytics account.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = start_ip_address(this, varargin)
            % The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol.
            this.Options = [this.Options, '--start-ip-address', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az dla account firewall update"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = account(this, varargin)
            % Name of the Data Lake Analytics account.
            this.Options = [this.Options, '--account', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az dla account firewall update : Update a firewall rule in a Data Lake Analytics account.')
            fprintf('%s\n', '        Command group ''dla'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --firewall-rule-name [Required] : The name of the firewall rule to update.')
            fprintf('%s\n', '    --end-ip-address                : The end IP address for the firewall rule. This can be either')
            fprintf('%s\n', '                                      ipv4 or ipv6. Start and End should be in the same protocol.')
            fprintf('%s\n', '    --resource-group -g             : If not specified, will attempt to discover the resource group')
            fprintf('%s\n', '                                      for the specified Data Lake Analytics account.')
            fprintf('%s\n', '    --start-ip-address              : The start IP address for the firewall rule. This can be either')
            fprintf('%s\n', '                                      ipv4 or ipv6. Start and End should be in the same protocol.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account -n                    : Name of the Data Lake Analytics account.')
            fprintf('%s\n', '    --ids                           : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                      complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                      Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                      ''Resource Id'' arguments.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az dla account firewall update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
