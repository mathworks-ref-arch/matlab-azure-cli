classdef grant < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = grant()
            % az ad app permission grant : Grant the app an API Delegated permissions.
            % A service principal must exist for the app when running this command. To create a
            % corresponding service principal, use `az ad sp create --id {appId}`.
            % For Application permissions, please use "ad app permission admin-consent".
            this.BaseCmd = 'az ad app permission grant ';
        end
        function this = api(this, varargin)
            % The target API to access.
            this.Options = [this.Options, '--api', varargin{:}];
        end

        function this = id(this, varargin)
            % Identifier uri, application id, or object id.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = consent_type(this, varargin)
            % Indicates if consent was provided by the administrator (on behalf of the organization) or by an individual.  Allowed values: AllPrincipals, Principal.  Default: AllPrincipals.
            this.Options = [this.Options, '--consent-type', varargin{:}];
        end

        function this = expires(this, varargin)
            % Expiry date for the permissions in years. e.g. 1, 2 or "never".  Default: 1.
            this.Options = [this.Options, '--expires', varargin{:}];
        end

        function this = principal_id(this, varargin)
            % If --consent-type is "Principal", this argument specifies the object of the user that granted consent and applies only for that user.
            this.Options = [this.Options, '--principal-id', varargin{:}];
        end

        function this = scope(this, varargin)
            % Specifies the value of the scope claim that the resource application should expect in the OAuth 2.0 access token, e.g. User.Read.  Default: user_impersonation.
            this.Options = [this.Options, '--scope', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ad app permission grant : Grant the app an API Delegated permissions.')
            fprintf('%s\n', '        A service principal must exist for the app when running this command. To create a')
            fprintf('%s\n', '        corresponding service principal, use `az ad sp create --id {appId}`.')
            fprintf('%s\n', '        For Application permissions, please use "ad app permission admin-consent".')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --api   [Required] : The target API to access.')
            fprintf('%s\n', '    --id    [Required] : Identifier uri, application id, or object id.')
            fprintf('%s\n', '    --consent-type     : Indicates if consent was provided by the administrator (on behalf of the')
            fprintf('%s\n', '                         organization) or by an individual.  Allowed values: AllPrincipals,')
            fprintf('%s\n', '                         Principal.  Default: AllPrincipals.')
            fprintf('%s\n', '    --expires          : Expiry date for the permissions in years. e.g. 1, 2 or "never".  Default:')
            fprintf('%s\n', '                         1.')
            fprintf('%s\n', '    --principal-id     : If --consent-type is "Principal", this argument specifies the object of the')
            fprintf('%s\n', '                         user that granted consent and applies only for that user.')
            fprintf('%s\n', '    --scope            : Specifies the value of the scope claim that the resource application should')
            fprintf('%s\n', '                         expect in the OAuth 2.0 access token, e.g. User.Read.  Default:')
            fprintf('%s\n', '                         user_impersonation.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Grant a native application with permissions to access an existing API with TTL of 2 years')
            fprintf('%s\n', '        az ad app permission grant --id e042ec79-34cd-498f-9d9f-1234234 --api')
            fprintf('%s\n', '        a0322f79-57df-498f-9d9f-12678 --expires 2')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad app permission grant"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class grant 
