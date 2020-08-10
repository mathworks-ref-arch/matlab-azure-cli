classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az ad user create : Create an Azure Active Directory user.
            this.BaseCmd = 'az ad user create ';
        end
        function this = display_name(this, varargin)
            % Object's display name or its prefix.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = password(this, varargin)
            % The password that should be assigned to the user for authentication.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = user_principal_name(this, varargin)
            % Required. The user principal name (someuser@contoso.com). It must contain one of the verified domains for the tenant.
            this.Options = [this.Options, '--user-principal-name', varargin{:}];
        end

        function this = force_change_password_next_login(this, varargin)
            % Marks this user as needing to update their password the next time they authenticate.  Allowed values: false, true.
            this.Options = [this.Options, '--force-change-password-next-login', varargin{:}];
        end

        function this = immutable_id(this, varargin)
            % This must be specified if you are using a federated domain for the user's userPrincipalName (UPN) property when creating a new user account. It is used to associate an on- premises Active Directory user account with their Azure AD user object.
            this.Options = [this.Options, '--immutable-id', varargin{:}];
        end

        function this = mail_nickname(this, varargin)
            % Mail alias. Defaults to user principal name.
            this.Options = [this.Options, '--mail-nickname', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az ad user create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az ad user create : Create an Azure Active Directory user.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --display-name          [Required] : Object''s display name or its prefix.')
            fprintf('%s\n', '    --password              [Required] : The password that should be assigned to the user for')
            fprintf('%s\n', '                                         authentication.')
            fprintf('%s\n', '    --user-principal-name   [Required] : Required. The user principal name (someuser@contoso.com).')
            fprintf('%s\n', '                                         It must contain one of the verified domains for the tenant.')
            fprintf('%s\n', '    --force-change-password-next-login : Marks this user as needing to update their password the')
            fprintf('%s\n', '                                         next time they authenticate.  Allowed values: false, true.')
            fprintf('%s\n', '    --immutable-id                     : This must be specified if you are using a federated domain')
            fprintf('%s\n', '                                         for the user''s userPrincipalName (UPN) property when')
            fprintf('%s\n', '                                         creating a new user account. It is used to associate an on-')
            fprintf('%s\n', '                                         premises Active Directory user account with their Azure AD')
            fprintf('%s\n', '                                         user object.')
            fprintf('%s\n', '    --mail-nickname                    : Mail alias. Defaults to user principal name.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                 : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                        : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                         tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                            : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                         information and examples.')
            fprintf('%s\n', '    --verbose                          : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                         logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad user create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
