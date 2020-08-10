classdef list_grants < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list_grants()
            % az ad app permission list-grants : List Oauth2 permission grants.
            this.BaseCmd = 'az ad app permission list-grants ';
        end
        function this = filter(this, varargin)
            % OData filter, e.g. --filter "displayname eq 'test' and servicePrincipalType eq 'Application'".
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = id(this, varargin)
            % Identifier uri, application id, or object id.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = show_resource_name(this, varargin)
            % Show resource's display name.  Allowed values: false, true.
            this.Options = [this.Options, '--show-resource-name', varargin{:}];
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
            fprintf('%s\n', '    az ad app permission list-grants : List Oauth2 permission grants.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --filter                : OData filter, e.g. --filter "displayname eq ''test'' and')
            fprintf('%s\n', '                              servicePrincipalType eq ''Application''".')
            fprintf('%s\n', '    --id                    : Identifier uri, application id, or object id.')
            fprintf('%s\n', '    --show-resource-name -r : Show resource''s display name.  Allowed values: false, true.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    list oauth2 permissions granted to the service principal')
            fprintf('%s\n', '        az ad app permission list-grants --id e042ec79-34cd-498f-9d9f-1234234123456')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad app permission list-grants"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list_grants 
