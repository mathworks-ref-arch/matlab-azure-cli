classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql failover-group create : Creates a failover group.
            this.BaseCmd = 'az sql failover-group create ';
        end
        function this = name(this, varargin)
            % The name of the Failover Group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = partner_server(this, varargin)
            % The name of the partner server of a Failover Group.
            this.Options = [this.Options, '--partner-server', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = server(this, varargin)
            % Name of the Azure SQL server. You can configure the default using `az configure --defaults sql-server=<name>`.
            this.Options = [this.Options, '--server', varargin{:}];
        end

        function this = add_db(this, varargin)
            % List of databases to add to Failover Group.
            this.Options = [this.Options, '--add-db', varargin{:}];
        end

        function this = failover_policy(this, varargin)
            % The failover policy of the Failover Group.  Allowed values: Automatic, Manual.  Default: Automatic.
            this.Options = [this.Options, '--failover-policy', varargin{:}];
        end

        function this = grace_period(this, varargin)
            % Interval in hours before automatic failover is initiated if an outage occurs on the primary server. This indicates that Azure SQL Database will not initiate automatic failover before the grace period expires. Please note that failover operation with --allow-data-loss option might cause data loss due to the nature of asynchronous synchronization.  Default: 1.
            this.Options = [this.Options, '--grace-period', varargin{:}];
        end

        function this = partner_resource_group(this, varargin)
            % The name of the resource group of the partner server.
            this.Options = [this.Options, '--partner-resource-group', varargin{:}];
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
            fprintf('%s\n', '    az sql failover-group create : Creates a failover group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the Failover Group.')
            fprintf('%s\n', '    --partner-server    [Required] : The name of the partner server of a Failover Group.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server -s         [Required] : Name of the Azure SQL server. You can configure the default')
            fprintf('%s\n', '                                     using `az configure --defaults sql-server=<name>`.')
            fprintf('%s\n', '    --add-db                       : List of databases to add to Failover Group.')
            fprintf('%s\n', '    --failover-policy              : The failover policy of the Failover Group.  Allowed values:')
            fprintf('%s\n', '                                     Automatic, Manual.  Default: Automatic.')
            fprintf('%s\n', '    --grace-period                 : Interval in hours before automatic failover is initiated if an')
            fprintf('%s\n', '                                     outage occurs on the primary server. This indicates that Azure')
            fprintf('%s\n', '                                     SQL Database will not initiate automatic failover before the')
            fprintf('%s\n', '                                     grace period expires. Please note that failover operation with')
            fprintf('%s\n', '                                     --allow-data-loss option might cause data loss due to the')
            fprintf('%s\n', '                                     nature of asynchronous synchronization.  Default: 1.')
            fprintf('%s\n', '    --partner-resource-group       : The name of the resource group of the partner server.')
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
            fprintf('%s\n', '    Creates a failover group. (autogenerated)')
            fprintf('%s\n', '        az sql failover-group create --name MyFailoverGroup --partner-server newDb --resource-group')
            fprintf('%s\n', '        MyResourceGroup --server myserver --subscription MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql failover-group create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
