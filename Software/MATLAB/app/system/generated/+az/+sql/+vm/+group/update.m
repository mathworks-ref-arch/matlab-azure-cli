classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az sql vm group update : Updates a SQL virtual machine group if there are not SQL virtual
            % machines attached to the group.
            % Command group 'sql vm' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az sql vm group update ';
        end
        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            % Name of the SQL virtual machine group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. WSFC Domain Profile Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = bootstrap_acc(this, varargin)
            % Account name used for creating cluster (at minimum needs permissions to 'Create Computer Objects' in domain).
            this.Options = [this.Options, '--bootstrap-acc', varargin{:}];
        end

        function this = domain_fqdn(this, varargin)
            % Fully qualified name of the domain.
            this.Options = [this.Options, '--domain-fqdn', varargin{:}];
        end

        function this = fsw_path(this, varargin)
            % Optional path for fileshare witness.
            this.Options = [this.Options, '--fsw-path', varargin{:}];
        end

        function this = operator_acc(this, varargin)
            % Account name used for operating cluster i.e. will be part of administrators group on all the participating virtual machines in the cluster.
            this.Options = [this.Options, '--operator-acc', varargin{:}];
        end

        function this = ou_path(this, varargin)
            % Organizational Unit path in which the nodes and cluster will be present. Example: OU=WSCluster,DC=testdomain,DC=com.
            this.Options = [this.Options, '--ou-path', varargin{:}];
        end

        function this = sa_key(this, varargin)
            % Primary key of the witness storage account.
            this.Options = [this.Options, '--sa-key', varargin{:}];
        end

        function this = service_acc(this, varargin)
            % Account name under which SQL service will run on all participating SQL virtual machines in the cluster.
            this.Options = [this.Options, '--service-acc', varargin{:}];
        end

        function this = storage_account(this, varargin)
            % Storage account url of the witness storage account.
            this.Options = [this.Options, '--storage-account', varargin{:}];
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
            % Update an object by specifying a property path and value to set. Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sql vm group update : Updates a SQL virtual machine group if there are not SQL virtual')
            fprintf('%s\n', '    machines attached to the group.')
            fprintf('%s\n', '        Command group ''sql vm'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --tags               : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                           existing tags.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                : Add an object to a list of objects by specifying a path and key value')
            fprintf('%s\n', '                           pairs.  Example: --add property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                           string>.')
            fprintf('%s\n', '    --force-string       : When using ''set'' or ''add'', preserve string literals instead of attempting')
            fprintf('%s\n', '                           to convert to JSON.')
            fprintf('%s\n', '    --remove             : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                           property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                : Update an object by specifying a property path and value to set.')
            fprintf('%s\n', '                           Example: --set property1.property2=<value>.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                           resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                           should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n            : Name of the SQL virtual machine group.')
            fprintf('%s\n', '    --resource-group -g  : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                           configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'WSFC Domain Profile Arguments')
            fprintf('%s\n', '    --bootstrap-acc      : Account name used for creating cluster (at minimum needs permissions to')
            fprintf('%s\n', '                           ''Create Computer Objects'' in domain).')
            fprintf('%s\n', '    --domain-fqdn -f     : Fully qualified name of the domain.')
            fprintf('%s\n', '    --fsw-path           : Optional path for fileshare witness.')
            fprintf('%s\n', '    --operator-acc -p    : Account name used for operating cluster i.e. will be part of')
            fprintf('%s\n', '                           administrators group on all the participating virtual machines in the')
            fprintf('%s\n', '                           cluster.')
            fprintf('%s\n', '    --ou-path            : Organizational Unit path in which the nodes and cluster will be present.')
            fprintf('%s\n', '                           Example: OU=WSCluster,DC=testdomain,DC=com.')
            fprintf('%s\n', '    --sa-key -k          : Primary key of the witness storage account.')
            fprintf('%s\n', '    --service-acc -e     : Account name under which SQL service will run on all participating SQL')
            fprintf('%s\n', '                           virtual machines in the cluster.')
            fprintf('%s\n', '    --storage-account -u : Storage account url of the witness storage account.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update an empty SQL virtual machine group operator account.')
            fprintf('%s\n', '        az sql vm group update -n sqlvmgroup -g myresourcegroup --operator-acc testop')
            fprintf('%s\n', '    Update an empty SQL virtual machine group storage account and key.')
            fprintf('%s\n', '        az sql vm group update -n sqlvmgroup -g myresourcegroup --sa-key {PublicKey} --storage-')
            fprintf('%s\n', '        account ''https://newstoracc.blob.core.windows.net/''')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql vm group update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
