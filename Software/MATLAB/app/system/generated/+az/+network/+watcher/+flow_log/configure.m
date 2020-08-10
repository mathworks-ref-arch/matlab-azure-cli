classdef configure < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = configure()
            % az network watcher flow-log configure : Configure flow logging on a network security group.
            % This command has been deprecated and will be removed in a future release. Use 'network
            % watcher flow-log create' instead.
            this.BaseCmd = 'az network watcher flow-log configure ';
        end
        function this = nsg(this, varargin)
            % Name or ID of the Network Security Group to target.
            this.Options = [this.Options, '--nsg', varargin{:}];
        end

        function this = enabled(this, varargin)
            % Enable logging.  Allowed values: false, true.  Default: true.
            this.Options = [this.Options, '--enabled', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = retention(this, varargin)
            % Number of days to retain logs.
            this.Options = [this.Options, '--retention', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Name or ID of the storage account in which to save the flow logs. Format Arguments
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = format(this, varargin)
            % File type of the flow log.  Allowed values: JSON.
            this.Options = [this.Options, '--format', varargin{:}];
        end

        function this = log_version(this, varargin)
            % Version (revision) of the flow log. Traffic Analytics Arguments
            this.Options = [this.Options, '--log-version', varargin{:}];
        end

        function this = interval(this, varargin)
            % Interval in minutes at which to conduct flow analytics. Temporarily allowed values are 10 and 60.
            this.Options = [this.Options, '--interval', varargin{:}];
        end

        function this = traffic_analytics(this, varargin)
            % Enable traffic analytics. Defaults to true if `--workspace` is provided. Allowed values: false, true.
            this.Options = [this.Options, '--traffic-analytics', varargin{:}];
        end

        function this = workspace(this, varargin)
            % Name or ID of a Log Analytics workspace. Must be in the same region of flow log.
            this.Options = [this.Options, '--workspace', varargin{:}];
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
            fprintf('%s\n', '    az network watcher flow-log configure : Configure flow logging on a network security group.')
            fprintf('%s\n', '        This command has been deprecated and will be removed in a future release. Use ''network')
            fprintf('%s\n', '        watcher flow-log create'' instead.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --nsg    [Required] : Name or ID of the Network Security Group to target.')
            fprintf('%s\n', '    --enabled           : Enable logging.  Allowed values: false, true.  Default: true.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --retention         : Number of days to retain logs.')
            fprintf('%s\n', '    --storage-account   : Name or ID of the storage account in which to save the flow logs.')
            fprintf('%s\n', 'Format Arguments')
            fprintf('%s\n', '    --format            : File type of the flow log.  Allowed values: JSON.')
            fprintf('%s\n', '    --log-version       : Version (revision) of the flow log.')
            fprintf('%s\n', 'Traffic Analytics Arguments')
            fprintf('%s\n', '    --interval          : Interval in minutes at which to conduct flow analytics. Temporarily')
            fprintf('%s\n', '                          allowed values are 10 and 60.')
            fprintf('%s\n', '    --traffic-analytics : Enable traffic analytics. Defaults to true if `--workspace` is provided.')
            fprintf('%s\n', '                          Allowed values: false, true.')
            fprintf('%s\n', '    --workspace         : Name or ID of a Log Analytics workspace. Must be in the same region of')
            fprintf('%s\n', '                          flow log.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Enable NSG flow logs.')
            fprintf('%s\n', '        az network watcher flow-log configure -g MyResourceGroup --enabled true --nsg MyNsg')
            fprintf('%s\n', '        --storage-account MyStorageAccount')
            fprintf('%s\n', '    Disable NSG flow logs.')
            fprintf('%s\n', '        az network watcher flow-log configure -g MyResourceGroup --enabled false --nsg MyNsg')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher flow-log configure"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class configure 
