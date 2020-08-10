classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az ad app list : List applications.
            % For low latency, by default, only the first 100 will be returned unless you provide filter
            % arguments or use "--all".
            this.BaseCmd = 'az ad app list ';
        end
        function this = all(this, varargin)
            % List all entities, expect long delay if under a big organization.
            this.Options = [this.Options, '--all', varargin{:}];
        end

        function this = app_id(this, varargin)
            % Application id.
            this.Options = [this.Options, '--app-id', varargin{:}];
        end

        function this = display_name(this, varargin)
            % The display name of the application.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = filter(this, varargin)
            % OData filter, e.g. --filter "displayname eq 'test' and servicePrincipalType eq 'Application'".
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = identifier_uri(this, varargin)
            % Graph application identifier, must be in uri format.
            this.Options = [this.Options, '--identifier-uri', varargin{:}];
        end

        function this = show_mine(this, varargin)
            % List entities owned by the current user.
            this.Options = [this.Options, '--show-mine', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
            this.Options = [this.Options, '--output', varargin{:}];
        end

        function this = query(this, varargin)
            % JMESPath query string. See http://jmespath.org/ for more information and examples.
            this.Options = [this.Options, '--query', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ad app list"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ad app list : List applications.')
            fprintf('%s\n', '        For low latency, by default, only the first 100 will be returned unless you provide filter')
            fprintf('%s\n', '        arguments or use "--all".')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --all              : List all entities, expect long delay if under a big organization.')
            fprintf('%s\n', '    --app-id           : Application id.')
            fprintf('%s\n', '    --display-name     : The display name of the application.')
            fprintf('%s\n', '    --filter           : OData filter, e.g. --filter "displayname eq ''test'' and servicePrincipalType')
            fprintf('%s\n', '                         eq ''Application''".')
            fprintf('%s\n', '    --identifier-uri   : Graph application identifier, must be in uri format.')
            fprintf('%s\n', '    --show-mine        : List entities owned by the current user.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad app list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
