classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az account management-group update : Update an existing management group.
            % Update an existing management group.
            this.BaseCmd = 'az account management-group update ';
        end
        function this = name(this, varargin)
            % Name of the management group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = display_name(this, varargin)
            % Updates the display name of the management group. If null, no change is made.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = parent(this, varargin)
            % Update the parent of the management group. Can be the fully qualified id or the name of the management group. If null, no change is made.
            this.Options = [this.Options, '--parent', varargin{:}];
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
            fprintf('%s\n', '    az account management-group update : Update an existing management group.')
            fprintf('%s\n', '        Update an existing management group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : Name of the management group.')
            fprintf('%s\n', '    --display-name -d    : Updates the display name of the management group. If null, no change is')
            fprintf('%s\n', '                           made.')
            fprintf('%s\n', '    --parent -p          : Update the parent of the management group. Can be the fully qualified id')
            fprintf('%s\n', '                           or the name of the management group. If null, no change is made.')
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
            fprintf('%s\n', '    Update an existing management group with a specific display name.')
            fprintf('%s\n', '        az account management-group update --name GroupName --display-name DisplayName')
            fprintf('%s\n', '    Update an existing management group with a specific parent.')
            fprintf('%s\n', '        az account management-group update --name GroupName --parent ParentId/ParentName')
            fprintf('%s\n', '    Update an existing management group with a specific display name and parent.')
            fprintf('%s\n', '        az account management-group update --name GroupName --display-name DisplayName --parent')
            fprintf('%s\n', '        ParentId/ParentName')
            fprintf('%s\n', 'For more specific examples, use: az find "az account management-group update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
