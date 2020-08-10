classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az ad app permission add : Add an API permission.
            % Invoking "az ad app permission grant" is needed to activate it.
            this.BaseCmd = 'az ad app permission add ';
        end
        function this = api(this, varargin)
            % The target API to access.
            this.Options = [this.Options, '--api', varargin{:}];
        end

        function this = api_permissions(this, varargin)
            % Space separated list of `<resource-access-id>=<type>`.
            this.Options = [this.Options, '--api-permissions', varargin{:}];
        end

        function this = id(this, varargin)
            % Identifier uri, application id, or object id.
            this.Options = [this.Options, '--id', varargin{:}];
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
            fprintf('%s\n', '    az ad app permission add : Add an API permission.')
            fprintf('%s\n', '        Invoking "az ad app permission grant" is needed to activate it.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --api             [Required] : The target API to access.')
            fprintf('%s\n', '    --api-permissions [Required] : Space separated list of `<resource-access-id>=<type>`.')
            fprintf('%s\n', '    --id              [Required] : Identifier uri, application id, or object id.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    add a Graph API permission of "Sign in and read user profile"')
            fprintf('%s\n', '        az ad app permission add --id eeba0b46-78e5-4a1a-a1aa-cafe6c123456 --api')
            fprintf('%s\n', '        00000002-0000-0000-c000-000000000000 --api-permissions')
            fprintf('%s\n', '        311a71cc-e848-46a1-bdf8-97ff7156d8e6=Scope')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad app permission add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
