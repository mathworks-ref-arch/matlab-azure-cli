classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql instance-failover-group create : Creates an instance failover group between two connected
            % managed instances.
            % If an outage occurs on the primary server, the grace period indicates that Azure SQL Managed
            % Database will not initiate automatic failover before the grace period expires. Please note
            % that failover operation with --allow-data-loss option might cause data loss due to the
            % nature of asynchronous synchronization.
            this.BaseCmd = 'az sql instance-failover-group create ';
        end
        function this = mi(this, varargin)
            % Name of the Azure SQL managed instance.
            this.Options = [this.Options, '--mi', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the Instance Failover Group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = partner_mi(this, varargin)
            % The name of the partner managed instance of a Instance Failover Group.
            this.Options = [this.Options, '--partner-mi', varargin{:}];
        end

        function this = partner_resource_group(this, varargin)
            % The name of the resource group of the partner managed instance.
            this.Options = [this.Options, '--partner-resource-group', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = failover_policy(this, varargin)
            % The failover policy of the Instance Failover Group. Allowed values: Automatic, Manual.  Default: Automatic.
            this.Options = [this.Options, '--failover-policy', varargin{:}];
        end

        function this = grace_period(this, varargin)
            % Interval in hours before automatic failover is initiated if an outage occurs on the primary server. This indicates that Azure SQL Database will not initiate automatic failover before the grace period expires. Please note that failover operation with --allow-data-loss option might cause data loss due to the nature of asynchronous synchronization.  Default: 1.
            this.Options = [this.Options, '--grace-period', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az sql instance-failover-group create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql instance-failover-group create : Creates an instance failover group between two connected')
            fprintf('%s\n', '    managed instances.')
            fprintf('%s\n', '        If an outage occurs on the primary server, the grace period indicates that Azure SQL Managed')
            fprintf('%s\n', '        Database will not initiate automatic failover before the grace period expires. Please note')
            fprintf('%s\n', '        that failover operation with --allow-data-loss option might cause data loss due to the')
            fprintf('%s\n', '        nature of asynchronous synchronization.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --mi --source-mi         [Required] : Name of the Azure SQL managed instance.')
            fprintf('%s\n', '    --name -n                [Required] : The name of the Instance Failover Group.')
            fprintf('%s\n', '    --partner-mi             [Required] : The name of the partner managed instance of a Instance')
            fprintf('%s\n', '                                          Failover Group.')
            fprintf('%s\n', '    --partner-resource-group [Required] : The name of the resource group of the partner managed')
            fprintf('%s\n', '                                          instance.')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --failover-policy                   : The failover policy of the Instance Failover Group.')
            fprintf('%s\n', '                                          Allowed values: Automatic, Manual.  Default: Automatic.')
            fprintf('%s\n', '    --grace-period                      : Interval in hours before automatic failover is initiated')
            fprintf('%s\n', '                                          if an outage occurs on the primary server. This indicates')
            fprintf('%s\n', '                                          that Azure SQL Database will not initiate automatic')
            fprintf('%s\n', '                                          failover before the grace period expires. Please note that')
            fprintf('%s\n', '                                          failover operation with --allow-data-loss option might')
            fprintf('%s\n', '                                          cause data loss due to the nature of asynchronous')
            fprintf('%s\n', '                                          synchronization.  Default: 1.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql instance-failover-group create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
