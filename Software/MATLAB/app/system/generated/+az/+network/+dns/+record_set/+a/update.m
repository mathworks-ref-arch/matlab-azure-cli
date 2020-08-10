classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az network dns record-set a update : Update an A record set.
            this.BaseCmd = 'az network dns record-set a update ';
        end
        function this = name(this, varargin)
            % The name of the record set, relative to the name of the zone.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = zone_name(this, varargin)
            % The name of the zone.
            this.Options = [this.Options, '--zone-name', varargin{:}];
        end

        function this = if_match(this, varargin)
            % The etag of the record set. Omit this value to always overwrite the current record set. Specify the last-seen etag value to prevent accidentally overwritting any concurrent changes.
            this.Options = [this.Options, '--if-match', varargin{:}];
        end

        function this = if_none_match(this, varargin)
            % Set to '*' to allow a new record set to be created, but to prevent updating an existing record set. Other values will be ignored.
            this.Options = [this.Options, '--if-none-match', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs. This overwrites any existing metadata.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = target_resource(this, varargin)
            % ID of an Azure resource from which the DNS resource value is taken.
            this.Options = [this.Options, '--target-resource', varargin{:}];
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
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az network dns record-set a update : Update an A record set.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the record set, relative to the name of the zone.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --zone-name -z      [Required] : The name of the zone.')
            fprintf('%s\n', '    --if-match                     : The etag of the record set. Omit this value to always overwrite')
            fprintf('%s\n', '                                     the current record set. Specify the last-seen etag value to')
            fprintf('%s\n', '                                     prevent accidentally overwritting any concurrent changes.')
            fprintf('%s\n', '    --if-none-match                : Set to ''*'' to allow a new record set to be created, but to')
            fprintf('%s\n', '                                     prevent updating an existing record set. Other values will be')
            fprintf('%s\n', '                                     ignored.')
            fprintf('%s\n', '    --metadata                     : Metadata in space-separated key=value pairs. This overwrites')
            fprintf('%s\n', '                                     any existing metadata.')
            fprintf('%s\n', '    --target-resource              : ID of an Azure resource from which the DNS resource value is')
            fprintf('%s\n', '                                     taken.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                          : Add an object to a list of objects by specifying a path and key')
            fprintf('%s\n', '                                     value pairs.  Example: --add property.listProperty <key=value,')
            fprintf('%s\n', '                                     string or JSON string>.')
            fprintf('%s\n', '    --force-string                 : When using ''set'' or ''add'', preserve string literals instead of')
            fprintf('%s\n', '                                     attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                       : Remove a property or an element from a list.  Example: --remove')
            fprintf('%s\n', '                                     property.list <indexToRemove> OR --remove propertyToRemove.')
            fprintf('%s\n', '    --set                          : Update an object by specifying a property path and value to')
            fprintf('%s\n', '                                     set.  Example: --set property1.property2=<value>.')
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
            fprintf('%s\n', '    Update an A record set.')
            fprintf('%s\n', '        az network dns record-set a update -g MyResourceGroup -n MyRecordSet \')
            fprintf('%s\n', '            -z www.mysite.com --metadata owner=WebTeam')
            fprintf('%s\n', '    Update an A record set. (autogenerated)')
            fprintf('%s\n', '        az network dns record-set a update --name MyRecordSet --resource-group MyResourceGroup --set')
            fprintf('%s\n', '        tags.CostCenter=MyBusinessGroup --zone-name www.mysite.com')
            fprintf('%s\n', 'For more specific examples, use: az find "az network dns record-set a update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
