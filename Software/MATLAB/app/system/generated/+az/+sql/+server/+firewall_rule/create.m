classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql server firewall-rule create : Create a firewall rule.
            this.BaseCmd = 'az sql server firewall-rule create ';
        end
        function this = end_ip_address(this, varargin)
            % The end IP address of the firewall rule. Must be IPv4 format. Use value '0.0.0.0' to represent all Azure-internal IP addresses.
            this.Options = [this.Options, '--end-ip-address', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the firewall rule.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server(this, varargin)
            % Name of the Azure SQL server. You can configure the default using `az configure --defaults sql-server=<name>`.
            this.Options = [this.Options, '--server', varargin{:}];
        end

        function this = start_ip_address(this, varargin)
            % The start IP address of the firewall rule. Must be IPv4 format. Use value '0.0.0.0' to represent all Azure-internal IP addresses.
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
            fprintf('%s\n', '    az sql server firewall-rule create : Create a firewall rule.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --end-ip-address    [Required] : The end IP address of the firewall rule. Must be IPv4 format.')
            fprintf('%s\n', '                                     Use value ''0.0.0.0'' to represent all Azure-internal IP')
            fprintf('%s\n', '                                     addresses.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the firewall rule.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server -s         [Required] : Name of the Azure SQL server. You can configure the default')
            fprintf('%s\n', '                                     using `az configure --defaults sql-server=<name>`.')
            fprintf('%s\n', '    --start-ip-address  [Required] : The start IP address of the firewall rule. Must be IPv4 format.')
            fprintf('%s\n', '                                     Use value ''0.0.0.0'' to represent all Azure-internal IP')
            fprintf('%s\n', '                                     addresses.')
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
            fprintf('%s\n', '    Create a firewall rule')
            fprintf('%s\n', '        az sql server firewall-rule create -g mygroup -s myserver -n myrule --start-ip-address')
            fprintf('%s\n', '        1.2.3.4 --end-ip-address 5.6.7.8')
            fprintf('%s\n', '    Create a firewall rule that allows access from Azure services')
            fprintf('%s\n', '        az sql server firewall-rule create -g mygroup -s myserver -n myrule --start-ip-address')
            fprintf('%s\n', '        0.0.0.0 --end-ip-address 0.0.0.0')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql server firewall-rule create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
