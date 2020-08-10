classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az sql db audit-policy update : Update a database's auditing policy.
            % If the policy is being enabled, `--storage-account` or both `--storage-endpoint` and
            % `--storage-key` must be specified.
            this.BaseCmd = 'az sql db audit-policy update ';
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
            % Name of the Azure SQL Database.
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

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Storage Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Name of the storage account.
            this.Options = [this.Options, '--storage-account', varargin{:}];
        end

        function this = storage_endpoint(this, varargin)
            % The storage account endpoint.
            this.Options = [this.Options, '--storage-endpoint', varargin{:}];
        end

        function this = storage_key(this, varargin)
            % Access key for the storage account.
            this.Options = [this.Options, '--storage-key', varargin{:}];
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>. Policy Arguments
            this.Options = [this.Options, '--set', varargin{:}];
        end

        function this = actions(this, varargin)
            % List of actions and action groups to audit.
            this.Options = [this.Options, '--actions', varargin{:}];
        end

        function this = retention_days(this, varargin)
            % The number of days to retain audit logs.
            this.Options = [this.Options, '--retention-days', varargin{:}];
        end

        function this = state(this, varargin)
            % Auditing policy state.  Allowed values: Disabled, Enabled.
            this.Options = [this.Options, '--state', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql db audit-policy update : Update a database''s auditing policy.')
            fprintf('%s\n', '        If the policy is being enabled, `--storage-account` or both `--storage-endpoint` and')
            fprintf('%s\n', '        `--storage-key` must be specified.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add               : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                          pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                          string>.')
            fprintf('%s\n', '    --force-string      : When using ''set'' or ''add'', preserve string literals instead of attempting')
            fprintf('%s\n', '                          to convert to JSON.')
            fprintf('%s\n', '    --remove            : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                          property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set               : Update an object by specifying a property path and value to set.  Example:')
            fprintf('%s\n', '                          --set property1.property2=<value>.')
            fprintf('%s\n', 'Policy Arguments')
            fprintf('%s\n', '    --actions           : List of actions and action groups to audit.')
            fprintf('%s\n', '    --retention-days    : The number of days to retain audit logs.')
            fprintf('%s\n', '    --state             : Auditing policy state.  Allowed values: Disabled, Enabled.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : Name of the Azure SQL Database.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --server -s         : Name of the Azure SQL server. You can configure the default using `az')
            fprintf('%s\n', '                          configure --defaults sql-server=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Storage Arguments')
            fprintf('%s\n', '    --storage-account   : Name of the storage account.')
            fprintf('%s\n', '    --storage-endpoint  : The storage account endpoint.')
            fprintf('%s\n', '    --storage-key       : Access key for the storage account.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Enable by storage account name.')
            fprintf('%s\n', '        az sql db audit-policy update -g mygroup -s myserver -n mydb --state Enabled --storage-')
            fprintf('%s\n', '        account mystorage')
            fprintf('%s\n', '    Enable by storage endpoint and key.')
            fprintf('%s\n', '        az sql db audit-policy update -g mygroup -s myserver -n mydb --state Enabled \')
            fprintf('%s\n', '            --storage-endpoint https://mystorage.blob.core.windows.net --storage-key MYKEY==')
            fprintf('%s\n', '    Set the list of audit actions.')
            fprintf('%s\n', '        az sql db audit-policy update -g mygroup -s myserver -n mydb \')
            fprintf('%s\n', '            --actions FAILED_DATABASE_AUTHENTICATION_GROUP ''UPDATE on database::mydb by public''')
            fprintf('%s\n', '    Add an audit action.')
            fprintf('%s\n', '        az sql db audit-policy update -g mygroup -s myserver -n mydb \')
            fprintf('%s\n', '            --add auditActionsAndGroups FAILED_DATABASE_AUTHENTICATION_GROUP')
            fprintf('%s\n', '    Remove an audit action by list index.')
            fprintf('%s\n', '        az sql db audit-policy update -g mygroup -s myserver -n mydb --remove auditActionsAndGroups')
            fprintf('%s\n', '        0')
            fprintf('%s\n', '    Disable an auditing policy.')
            fprintf('%s\n', '        az sql db audit-policy update -g mygroup -s myserver -n mydb --state Disabled')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql db audit-policy update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
