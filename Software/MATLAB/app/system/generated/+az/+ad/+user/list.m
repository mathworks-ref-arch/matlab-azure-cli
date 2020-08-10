classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az ad user list : List Azure Active Directory users.
            this.BaseCmd = 'az ad user list ';
        end
        function this = display_name(this, varargin)
            % Object's display name or its prefix.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = filter(this, varargin)
            % OData filter, e.g. --filter "displayname eq 'test' and servicePrincipalType eq 'Application'".
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = upn(this, varargin)
            % User principal name, e.g. john.doe@contoso.com.
            this.Options = [this.Options, '--upn', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ad user list"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ad user list : List Azure Active Directory users.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --display-name     : Object''s display name or its prefix.')
            fprintf('%s\n', '    --filter           : OData filter, e.g. --filter "displayname eq ''test'' and servicePrincipalType')
            fprintf('%s\n', '                         eq ''Application''".')
            fprintf('%s\n', '    --upn              : User principal name, e.g. john.doe@contoso.com.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad user list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
