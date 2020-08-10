classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az sql vm group ag-listener update : Updates an availability group listener.
            % Command group 'sql vm' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az sql vm group ag-listener update ';
        end
        function this = group_name(this, varargin)
            % Name of the SQL virtual machine group.
            this.Options = [this.Options, '--group-name', varargin{:}];
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

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the availability group listener.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
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
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>. Load Balancer Configuration Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = sqlvms(this, varargin)
            % Space-separated list of SQL virtual machine instance name or resource IDs that are enrolled into the availability group.
            this.Options = [this.Options, '--sqlvms', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql vm group ag-listener update : Updates an availability group listener.')
            fprintf('%s\n', '        Command group ''sql vm'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --group-name -r [Required] : Name of the SQL virtual machine group.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                      : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                 value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                 string or JSON string>.')
            fprintf('%s\n', '    --force-string             : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                 attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                   : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                 property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                      : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                                 Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Load Balancer Configuration Arguments')
            fprintf('%s\n', '    --sqlvms -q                : Space-separated list of SQL virtual machine instance name or')
            fprintf('%s\n', '                                 resource IDs that are enrolled into the availability group.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                      : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                 resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                 You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                  : Name of the availability group listener.')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Replace the SQL virtual machines that were in the availability group.')
            fprintf('%s\n', '        az sql vm group ag-listener update -n aglistenertest -g myresourcegroup --sqlvms sqlvm3')
            fprintf('%s\n', '        sqlvm4 --group-name mygroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql vm group ag-listener update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
