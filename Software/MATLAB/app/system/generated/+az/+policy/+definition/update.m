classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az policy definition update : Update a policy definition.
            this.BaseCmd = 'az policy definition update ';
        end
        function this = name(this, varargin)
            % The policy definition name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = description(this, varargin)
            % Description of policy definition.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = display_name(this, varargin)
            % Display name of policy definition.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = management_group(this, varargin)
            % The name of the management group of the policy [set] definition.
            this.Options = [this.Options, '--management-group', varargin{:}];
        end

        function this = metadata(this, varargin)
            % Metadata in space-separated key=value pairs.
            this.Options = [this.Options, '--metadata', varargin{:}];
        end

        function this = mode(this, varargin)
            % Mode of the policy definition, e.g. All, Indexed. Please visit https://aka.ms/azure-policy-mode for more information.
            this.Options = [this.Options, '--mode', varargin{:}];
        end

        function this = params(this, varargin)
            % JSON formatted string or a path to a file or uri with parameter definitions.
            this.Options = [this.Options, '--params', varargin{:}];
        end

        function this = rules(this, varargin)
            % JSON formatted string or a path to a file with such content.
            this.Options = [this.Options, '--rules', varargin{:}];
        end

        function this = subscription(this, varargin)
            % The subscription id of the policy [set] definition.
            this.Options = [this.Options, '--subscription', varargin{:}];
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
            fprintf('%s\n', '    az policy definition update : Update a policy definition.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : The policy definition name.')
            fprintf('%s\n', '    --description        : Description of policy definition.')
            fprintf('%s\n', '    --display-name       : Display name of policy definition.')
            fprintf('%s\n', '    --management-group   : The name of the management group of the policy [set] definition.')
            fprintf('%s\n', '    --metadata           : Metadata in space-separated key=value pairs.')
            fprintf('%s\n', '    --mode -m            : Mode of the policy definition, e.g. All, Indexed. Please visit')
            fprintf('%s\n', '                           https://aka.ms/azure-policy-mode for more information.')
            fprintf('%s\n', '    --params             : JSON formatted string or a path to a file or uri with parameter')
            fprintf('%s\n', '                           definitions.')
            fprintf('%s\n', '    --rules              : JSON formatted string or a path to a file with such content.')
            fprintf('%s\n', '    --subscription       : The subscription id of the policy [set] definition.')
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
            fprintf('%s\n', '    Update a policy definition. (autogenerated)')
            fprintf('%s\n', '        az policy definition update --name MyPolicyDefinition')
            fprintf('%s\n', 'For more specific examples, use: az find "az policy definition update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
