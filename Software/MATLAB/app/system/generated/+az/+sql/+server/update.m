classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az sql server update : Update a server.
            this.BaseCmd = 'az sql server update ';
        end
        function this = admin_password(this, varargin)
            % The administrator login password. --assign_identity -i                 : Generate and assign an Azure Active Directory Identity for this serverfor use with key management services like Azure KeyVault.
            this.Options = [this.Options, '--admin-password', varargin{:}];
        end

        function this = enable_public_network(this, varargin)
            % Set whether public network access to server is allowed or not. When false,only connections made through Private Links can reach this server.  Allowed values: false, true. Argument '--enable-public-network' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--enable-public-network', varargin{:}];
        end

        function this = minimal_tls_version(this, varargin)
            % The minimal TLS version enforced by the sql server for inbound connections.  Allowed values: 1.0, 1.1, 1.2.
            this.Options = [this.Options, '--minimal-tls-version', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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
            % Name of the Azure SQL server. You can configure the default using `az configure --defaults sql- server=<name>`.
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql server update : Update a server.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --admin-password -p                  : The administrator login password.')
            fprintf('%s\n', '    --assign_identity -i                 : Generate and assign an Azure Active Directory Identity')
            fprintf('%s\n', '                                           for this serverfor use with key management services like')
            fprintf('%s\n', '                                           Azure KeyVault.')
            fprintf('%s\n', '    --enable-public-network -e [Preview] : Set whether public network access to server is')
            fprintf('%s\n', '                                           allowed or not. When false,only connections made through')
            fprintf('%s\n', '                                           Private Links can reach this server.  Allowed values:')
            fprintf('%s\n', '                                           false, true.')
            fprintf('%s\n', '        Argument ''--enable-public-network'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --minimal-tls-version                : The minimal TLS version enforced by the sql server for')
            fprintf('%s\n', '                                           inbound connections.  Allowed values: 1.0, 1.1, 1.2.')
            fprintf('%s\n', '    --no-wait                            : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                : Add an object to a list of objects by specifying a path')
            fprintf('%s\n', '                                           and key value pairs.  Example: --add')
            fprintf('%s\n', '                                           property.listProperty <key=value, string or JSON string>.')
            fprintf('%s\n', '    --force-string                       : When using ''set'' or ''add'', preserve string literals')
            fprintf('%s\n', '                                           instead of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                             : Remove a property or an element from a list.  Example:')
            fprintf('%s\n', '                                           --remove property.list <indexToRemove> OR --remove')
            fprintf('%s\n', '                                           propertyToRemove.')
            fprintf('%s\n', '    --set                                : Update an object by specifying a property path and value')
            fprintf('%s\n', '                                           to set.  Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                : One or more resource IDs (space-delimited). It should be')
            fprintf('%s\n', '                                           a complete resource ID containing all information of')
            fprintf('%s\n', '                                           ''Resource Id'' arguments. You should provide either --ids')
            fprintf('%s\n', '                                           or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                            : Name of the Azure SQL server. You can configure the')
            fprintf('%s\n', '                                           default using `az configure --defaults sql-')
            fprintf('%s\n', '                                           server=<name>`.')
            fprintf('%s\n', '    --resource-group -g                  : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                           group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                       : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                           subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                          : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                           tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                              : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                           information and examples.')
            fprintf('%s\n', '    --verbose                            : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                           logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a server. (autogenerated)')
            fprintf('%s\n', '        az sql server update --admin-password myadminpassword --name MyAzureSQLServer --resource-')
            fprintf('%s\n', '        group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql server update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
