classdef what_if < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = what_if()
            % az deployment mg what-if : Execute a deployment What-If operation at management group scope.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az deployment mg what-if ';
        end
        function this = location(this, varargin)
            % The location to store the deployment metadata.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = management_group_id(this, varargin)
            % The management group id to create deployment at.
            this.Options = [this.Options, '--management-group-id', varargin{:}];
        end

        function this = exclude_change_types(this, varargin)
            % Space-separated list of resource change types to be excluded from What-If results.  Allowed values: Create, Delete, Deploy, Ignore, Modify, NoChange. Argument '--exclude-change-types' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--exclude-change-types', varargin{:}];
        end

        function this = name(this, varargin)
            % The deployment name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = no_pretty_print(this, varargin)
            % Disable pretty-print for What-If results. When set, the output format type will be used.
            this.Options = [this.Options, '--no-pretty-print', varargin{:}];
        end

        function this = no_prompt(this, varargin)
            % The option to disable the prompt of missing parameters for ARM template. When the value is true, the prompt requiring users to provide missing parameter will be ignored. The default value is false.  Allowed values: false, true.
            this.Options = [this.Options, '--no-prompt', varargin{:}];
        end

        function this = parameters(this, varargin)
            % Supply deployment parameter values. Parameters may be supplied from a file using the `@{path}` syntax, a JSON string, or as <KEY=VALUE> pairs. Parameters are evaluated in order, so when a value is assigned twice, the latter value will be used. It is recommended that you supply your parameters file first, and then override selectively using KEY=VALUE syntax.
            this.Options = [this.Options, '--parameters', varargin{:}];
        end

        function this = result_format(this, varargin)
            % The format of What-If results.  Allowed values: FullResourcePayloads, ResourceIdOnly.  Default: FullResourcePayloads. Argument '--result-format' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--result-format', varargin{:}];
        end

        function this = template_file(this, varargin)
            % The path to the template file.
            this.Options = [this.Options, '--template-file', varargin{:}];
        end

        function this = template_uri(this, varargin)
            % The URI to the template file.
            this.Options = [this.Options, '--template-uri', varargin{:}];
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

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az deployment mg what-if : Execute a deployment What-If operation at management group scope.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l            [Required] : The location to store the deployment metadata.')
            fprintf('%s\n', '    --management-group-id -m [Required] : The management group id to create deployment at.')
            fprintf('%s\n', '    --exclude-change-types -x [Preview] : Space-separated list of resource change types to')
            fprintf('%s\n', '                                          be excluded from What-If results.  Allowed values: Create,')
            fprintf('%s\n', '                                          Delete, Deploy, Ignore, Modify, NoChange.')
            fprintf('%s\n', '        Argument ''--exclude-change-types'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --name -n                           : The deployment name.')
            fprintf('%s\n', '    --no-pretty-print                   : Disable pretty-print for What-If results. When set, the')
            fprintf('%s\n', '                                          output format type will be used.')
            fprintf('%s\n', '    --no-prompt                         : The option to disable the prompt of missing parameters for')
            fprintf('%s\n', '                                          ARM template. When the value is true, the prompt requiring')
            fprintf('%s\n', '                                          users to provide missing parameter will be ignored. The')
            fprintf('%s\n', '                                          default value is false.  Allowed values: false, true.')
            fprintf('%s\n', '    --parameters -p                     : Supply deployment parameter values.')
            fprintf('%s\n', '        Parameters may be supplied from a file using the `@{path}` syntax, a JSON string, or as')
            fprintf('%s\n', '        <KEY=VALUE> pairs. Parameters are evaluated in order, so when a value is assigned twice, the')
            fprintf('%s\n', '        latter value will be used. It is recommended that you supply your parameters file first, and')
            fprintf('%s\n', '        then override selectively using KEY=VALUE syntax.')
            fprintf('%s\n', '    --result-format -r        [Preview] : The format of What-If results.  Allowed values:')
            fprintf('%s\n', '                                          FullResourcePayloads, ResourceIdOnly.  Default:')
            fprintf('%s\n', '                                          FullResourcePayloads.')
            fprintf('%s\n', '        Argument ''--result-format'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --template-file -f                  : The path to the template file.')
            fprintf('%s\n', '    --template-uri -u                   : The URI to the template file.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Execute a deployment What-If operation at a management group.')
            fprintf('%s\n', '        az deployment mg what-if --management-group-id testmg --location westus --name rollout01')
            fprintf('%s\n', '        --template-uri https://myresource/azuredeploy.json --parameters @myparameters.json')
            fprintf('%s\n', '    Execute a deployment What-If operation at a management group with ResourceIdOnly format.')
            fprintf('%s\n', '        az deployment mg what-if --management-group-id testmg --location westus --name rollout01')
            fprintf('%s\n', '        --template-uri https://myresource/azuredeploy.json --parameters @myparameters.json --result-')
            fprintf('%s\n', '        format ResourceIdOnly')
            fprintf('%s\n', '    Execute a deployment What-If operation at a management group without pretty-printing the result.')
            fprintf('%s\n', '        az deployment mg what-if --management-group-id testmg --location westus --name rollout01')
            fprintf('%s\n', '        --template-uri https://myresource/azuredeploy.json --parameters @myparameters.json --no-')
            fprintf('%s\n', '        pretty-print')
            fprintf('%s\n', 'For more specific examples, use: az find "az deployment mg what-if"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class what_if 
