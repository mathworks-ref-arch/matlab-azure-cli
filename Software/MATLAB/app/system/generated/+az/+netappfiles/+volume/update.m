classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az netappfiles volume update : Update the specified ANF volume with the values provided.
            % Unspecified values will remain unchanged. Export policies are amended/created with the subgroup
            % commands.
            % Command group 'netappfiles' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az netappfiles volume update ';
        end
        function this = protocol_types(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--protocol-types', varargin{:}];
        end

        function this = service_level(this, varargin)
            % The service level.  Allowed values: Premium, Standard, Ultra.
            this.Options = [this.Options, '--service-level', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags in `key[=value]` format.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = usage_threshold(this, varargin)
            % The maximum storage quota allowed for a file system as integer number of GiB. Min 100 GiB, max 100TiB".
            this.Options = [this.Options, '--usage-threshold', varargin{:}];
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
            fprintf('%s\n', '    az netappfiles volume update : Update the specified ANF volume with the values provided.')
            fprintf('%s\n', '    Unspecified values will remain unchanged. Export policies are amended/created with the subgroup')
            fprintf('%s\n', '    commands.')
            fprintf('%s\n', '        Command group ''netappfiles'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --protocol-types           : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                 clear existing tags.')
            fprintf('%s\n', '    --service-level            : The service level.  Allowed values: Premium, Standard, Ultra.')
            fprintf('%s\n', '    --tags                     : Space-separated tags in `key[=value]` format.')
            fprintf('%s\n', '    --usage-threshold          : The maximum storage quota allowed for a file system as integer')
            fprintf('%s\n', '                                 number of GiB. Min 100 GiB, max 100TiB".')
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
            fprintf('%s\n', '    Update an ANF volume')
            fprintf('%s\n', '        az netappfiles volume update -g mygroup --account-name myaccname --pool-name mypoolname')
            fprintf('%s\n', '        --name myvolname --service-level ultra --usage-threshold 100 --tags mytag=specialvol')
            fprintf('%s\n', 'For more specific examples, use: az find "az netappfiles volume update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
