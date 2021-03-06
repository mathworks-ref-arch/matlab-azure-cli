classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az account management-group create : Create a new management group.
            % Create a new management group.
            this.BaseCmd = 'az account management-group create ';
        end
        function this = name(this, varargin)
            % Name of the management group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = display_name(this, varargin)
            % Sets the display name of the management group. If null, the group name is set as the display name.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = parent(this, varargin)
            % Sets the parent of the management group. Can be the fully qualified id or the name of the management group. If null, the root tenant group is set as the parent.
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az account management-group create : Create a new management group.')
            fprintf('%s\n', '        Create a new management group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : Name of the management group.')
            fprintf('%s\n', '    --display-name -d    : Sets the display name of the management group. If null, the group name is')
            fprintf('%s\n', '                           set as the display name.')
            fprintf('%s\n', '    --parent -p          : Sets the parent of the management group. Can be the fully qualified id or')
            fprintf('%s\n', '                           the name of the management group. If null, the root tenant group is set')
            fprintf('%s\n', '                           as the parent.')
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
            fprintf('%s\n', '    Create a new management group.')
            fprintf('%s\n', '        az account management-group create --name GroupName')
            fprintf('%s\n', '    Create a new management group with a specific display name.')
            fprintf('%s\n', '        az account management-group create --name GroupName --display-name DisplayName')
            fprintf('%s\n', '    Create a new management group with a specific parent.')
            fprintf('%s\n', '        az account management-group create --name GroupName --parent ParentId/ParentName')
            fprintf('%s\n', '    Create a new management group with a specific display name and parent.')
            fprintf('%s\n', '        az account management-group create --name GroupName --display-name DisplayName --parent')
            fprintf('%s\n', '        ParentId/ParentName')
            fprintf('%s\n', 'For more specific examples, use: az find "az account management-group create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
