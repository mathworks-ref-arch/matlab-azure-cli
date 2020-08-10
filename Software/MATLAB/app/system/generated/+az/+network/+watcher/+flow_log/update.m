classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network watcher flow-log update : Update the flow log configuration of a network security
            % group.
            this.BaseCmd = 'az network watcher flow-log update ';
        end
        function this = location(this, varargin)
            % Location to identify the exclusive Network Watcher under a region. Only one Network Watcher can be existed per subscription and region.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the flow logger.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = enabled(this, varargin)
            % Enable logging.  Allowed values: false, true.  Default: true.
            this.Options = [this.Options, '--enabled', varargin{:}];
        end

        function this = nsg(this, varargin)
            % Name or ID of the network security group.
            this.Options = [this.Options, '--nsg', varargin{:}];
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
            % Name or ID of the storage account in which to save the flow logs. Must be in the same region of flow log.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Format Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = format(this, varargin)
            % File type of the flow log.  Allowed values: JSON.
            this.Options = [this.Options, '--format', varargin{:}];
        end

        function this = log_version(this, varargin)
            % Version (revision) of the flow log.
            this.Options = [this.Options, '--log-version', varargin{:}];
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
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>. Traffic Analytics Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = interval(this, varargin)
            % Interval in minutes at which to conduct flow analytics. Temporarily allowed values are 10 and 60.  Default: 60.
            this.Options = [this.Options, '--interval', varargin{:}];
        end

        function this = traffic_analytics(this, varargin)
            % Enable traffic analytics. Defaults to true if `--workspace` is provided.  Allowed values: false, true.
            this.Options = [this.Options, '--traffic-analytics', varargin{:}];
        end

        function this = workspace(this, varargin)
            % Name or ID of a Log Analytics workspace. Must be in the same region of flow log.
            this.Options = [this.Options, '--workspace', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network watcher flow-log update : Update the flow log configuration of a network security')
            fprintf('%s\n', '    group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l [Required] : Location to identify the exclusive Network Watcher under a region.')
            fprintf('%s\n', '                               Only one Network Watcher can be existed per subscription and region.')
            fprintf('%s\n', '    --name -n     [Required] : The name of the flow logger.')
            fprintf('%s\n', '    --enabled                : Enable logging.  Allowed values: false, true.  Default: true.')
            fprintf('%s\n', '    --nsg                    : Name or ID of the network security group.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --retention              : Number of days to retain logs.')
            fprintf('%s\n', '    --storage-account        : Name or ID of the storage account in which to save the flow logs.')
            fprintf('%s\n', '                               Must be in the same region of flow log.')
            fprintf('%s\n', '    --tags                   : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                               existing tags.')
            fprintf('%s\n', 'Format Arguments')
            fprintf('%s\n', '    --format                 : File type of the flow log.  Allowed values: JSON.')
            fprintf('%s\n', '    --log-version            : Version (revision) of the flow log.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                    : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                               pairs.  Example: --add property.listProperty <key=value, string or')
            fprintf('%s\n', '                               JSON string>.')
            fprintf('%s\n', '    --force-string           : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                               attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                 : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                               property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                    : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                               Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Traffic Analytics Arguments')
            fprintf('%s\n', '    --interval               : Interval in minutes at which to conduct flow analytics. Temporarily')
            fprintf('%s\n', '                               allowed values are 10 and 60.  Default: 60.')
            fprintf('%s\n', '    --traffic-analytics      : Enable traffic analytics. Defaults to true if `--workspace` is')
            fprintf('%s\n', '                               provided.  Allowed values: false, true.')
            fprintf('%s\n', '    --workspace              : Name or ID of a Log Analytics workspace. Must be in the same region')
            fprintf('%s\n', '                               of flow log.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update storage account with name to let resource group identify the storage account and network')
            fprintf('%s\n', '    watcher')
            fprintf('%s\n', '        az network watcher flow-log update --location westus --resource-group MyResourceGroup --name')
            fprintf('%s\n', '        MyFlowLog --storage-account accountname')
            fprintf('%s\n', '    Update storage account with ID to let location identify the network watcher')
            fprintf('%s\n', '        az network watcher flow-log update --location westus --resource-group MyResourceGroup --name')
            fprintf('%s\n', '        MyFlowLog --storage-account accountid')
            fprintf('%s\n', '    Update Network Security Group on another resource group')
            fprintf('%s\n', '        az network watcher flow-log update --location westus --resource-group MyAnotherResourceGroup')
            fprintf('%s\n', '        --name MyFlowLog --nsg MyNSG')
            fprintf('%s\n', '    Update Workspace on another resource group')
            fprintf('%s\n', '        az network watcher flow-log update --location westus --resource-group MyAnotherResourceGroup')
            fprintf('%s\n', '        --name MyFlowLog --workspace MyAnotherLogAnalyticWorkspace')
            fprintf('%s\n', 'For more specific examples, use: az find "az network watcher flow-log update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
