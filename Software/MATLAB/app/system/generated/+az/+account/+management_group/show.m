classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az account management-group show : Get a specific management group.
            % Get the details of the management group.
            this.BaseCmd = 'az account management-group show ';
        end
        function this = name(this, varargin)
            % Name of the management group.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = expand(this, varargin)
            % If given, lists the children in the first level of hierarchy.
            this.Options = [this.Options, '--expand', varargin{:}];
        end

        function this = recurse(this, varargin)
            % If given, lists the children in all levels of hierarchy.
            this.Options = [this.Options, '--recurse', varargin{:}];
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
            fprintf('%s\n', '    az account management-group show : Get a specific management group.')
            fprintf('%s\n', '        Get the details of the management group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : Name of the management group.')
            fprintf('%s\n', '    --expand -e          : If given, lists the children in the first level of hierarchy.')
            fprintf('%s\n', '    --recurse -r         : If given, lists the children in all levels of hierarchy.')
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
            fprintf('%s\n', '    Get a management group.')
            fprintf('%s\n', '        az account management-group show --name GroupName')
            fprintf('%s\n', '    Get a management group with children in the first level of hierarchy.')
            fprintf('%s\n', '        az account management-group show --name GroupName -e')
            fprintf('%s\n', '    Get a management group with children in all levels of hierarchy.')
            fprintf('%s\n', '        az account management-group show --name GroupName -e -r')
            fprintf('%s\n', 'For more specific examples, use: az find "az account management-group show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
