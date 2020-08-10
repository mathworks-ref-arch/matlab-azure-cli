classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az policy definition create : Create a policy definition.
            this.BaseCmd = 'az policy definition create ';
        end
        function this = name(this, varargin)
            % Name of the new policy definition.
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
            % Name of the management group the new policy definition can be assigned in.
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
            % Policy rules in JSON format, or a path to a file containing JSON rules.
            this.Options = [this.Options, '--rules', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or id of the subscription the new policy definition can be assigned in.
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
            fprintf('%s\n', '    az policy definition create : Create a policy definition.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : Name of the new policy definition.')
            fprintf('%s\n', '    --description        : Description of policy definition.')
            fprintf('%s\n', '    --display-name       : Display name of policy definition.')
            fprintf('%s\n', '    --management-group   : Name of the management group the new policy definition can be assigned')
            fprintf('%s\n', '                           in.')
            fprintf('%s\n', '    --metadata           : Metadata in space-separated key=value pairs.')
            fprintf('%s\n', '    --mode -m            : Mode of the policy definition, e.g. All, Indexed. Please visit')
            fprintf('%s\n', '                           https://aka.ms/azure-policy-mode for more information.')
            fprintf('%s\n', '    --params             : JSON formatted string or a path to a file or uri with parameter')
            fprintf('%s\n', '                           definitions.')
            fprintf('%s\n', '    --rules              : Policy rules in JSON format, or a path to a file containing JSON rules.')
            fprintf('%s\n', '    --subscription       : Name or id of the subscription the new policy definition can be assigned')
            fprintf('%s\n', '                           in.')
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
            fprintf('%s\n', '    Create a read-only policy.')
            fprintf('%s\n', '        az policy definition create --name readOnlyStorage --rules "{ \"if\": \')
            fprintf('%s\n', '            { \"field\": \"type\", \"equals\": \"Microsoft.Storage/storageAccounts/write\" }, \')
            fprintf('%s\n', '                \"then\": { \"effect\": \"deny\" } }"')
            fprintf('%s\n', '    Create a policy parameter definition.')
            fprintf('%s\n', '        az policy definition create --name allowedLocations \')
            fprintf('%s\n', '            --rules "{ \"if\": { \"allOf\": [ \')
            fprintf('%s\n', '                { \"field\": \"location\",\"notIn\": \"[parameters(''listOfAllowedLocations'')]\" }, \')
            fprintf('%s\n', '                    { \"field\": \"location\", \"notEquals\": \"global\" }, \')
            fprintf('%s\n', '                        { \"field\": \"type\", \"notEquals\": \')
            fprintf('%s\n', '                            \"Microsoft.AzureActiveDirectory/b2cDirectories\"} \')
            fprintf('%s\n', '                                ] }, \"then\": { \"effect\": \"deny\" } }" \')
            fprintf('%s\n', '            --params "{ \"allowedLocations\": { \')
            fprintf('%s\n', '                \"type\": \"array\", \"metadata\": { \"description\": \')
            fprintf('%s\n', '                    \"The list of locations that can be specified when deploying resources\", \')
            fprintf('%s\n', '                        \"strongType\": \"location\", \"displayName\": \"Allowed locations\" } } }"')
            fprintf('%s\n', '    Create a read-only policy that can be applied within a management group.')
            fprintf('%s\n', '        az policy definition create -n readOnlyStorage --management-group "MyManagementGroup" \')
            fprintf('%s\n', '            --rules "{ \"if\": { \"field\": \"type\", \')
            fprintf('%s\n', '                \"equals\": \"Microsoft.Storage/storageAccounts/write\" }, \')
            fprintf('%s\n', '                    \"then\": { \"effect\": \"deny\" } }"')
            fprintf('%s\n', '    Create a policy definition with mode. The mode ''Indexed'' indicates the policy should be')
            fprintf('%s\n', '    evaluated only for resource types that support tags and location.')
            fprintf('%s\n', '        az policy definition create --name TagsPolicyDefinition --subscription "MySubscription" \')
            fprintf('%s\n', '            --mode Indexed --rules "{ \"if\": { \"field\": \"tags\", \"exists\": \"false\" }, \')
            fprintf('%s\n', '                \"then\": { \"effect\": \"deny\" } }"')
            fprintf('%s\n', 'For more specific examples, use: az find "az policy definition create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
