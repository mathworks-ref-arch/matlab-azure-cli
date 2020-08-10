classdef remove < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = remove()
            % az netappfiles volume export-policy remove : Remove a rule from the export policy for a volume
            % by rule index. The current rules can be obtained by performing the subgroup list command.
            % Command group 'netappfiles' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az netappfiles volume export-policy remove ';
        end
        function this = rule_index(this, varargin)
            % Order index. Range 1 to 6.
            this.Options = [this.Options, '--rule-index', varargin{:}];
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

        function this = account_name(this, varargin)
            % The name of the ANF account.
            this.Options = [this.Options, '--account-name', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the ANF volume.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = pool_name(this, varargin)
            % The name of the ANF pool.
            this.Options = [this.Options, '--pool-name', varargin{:}];
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

        function this = opt_remove(this, varargin)
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
            fprintf('%s\n', '    az netappfiles volume export-policy remove : Remove a rule from the export policy for a volume')
            fprintf('%s\n', '    by rule index. The current rules can be obtained by performing the subgroup list command.')
            fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --rule-index    [Required] : Order index. Range 1 to 6.')
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
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --account-name -a          : The name of the ANF account.')
            fprintf('%s\n', '    --ids                      : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                 resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                 You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name --volume-name -n -v : The name of the ANF volume.')
            fprintf('%s\n', '    --pool-name -p             : The name of the ANF pool.')
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
            fprintf('%s\n', '    Remove an export policy rule for an ANF volume')
            fprintf('%s\n', '        az netappfiles volume export-policy remove -g mygroup --account-name myaccname --pool-name')
            fprintf('%s\n', '        mypoolname --name myvolname --rule-index 4')
            fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles volume export-policy remove"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class remove 
