classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az ad user update : Update Azure Active Directory users.
            this.BaseCmd = 'az ad user update ';
        end
        function this = id(this, varargin)
            % The object ID or principal name of the user for which to get information.
            this.Options = [this.Options, '--id', varargin{:}];
        end

        function this = account_enabled(this, varargin)
            % Enable the user account.  Allowed values: false, true.
            this.Options = [this.Options, '--account-enabled', varargin{:}];
        end

        function this = display_name(this, varargin)
            % Object's display name or its prefix.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = force_change_password_next_login(this, varargin)
            % Require the user to change their password the next time they log in. Only valid when --password is specified. Allowed values: false, true.
            this.Options = [this.Options, '--force-change-password-next-login', varargin{:}];
        end

        function this = mail_nickname(this, varargin)
            % Mail alias. Defaults to user principal name.
            this.Options = [this.Options, '--mail-nickname', varargin{:}];
        end

        function this = password(this, varargin)
            % User password.
            this.Options = [this.Options, '--password', varargin{:}];
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
            fprintf('%s\n', '    az ad user update : Update Azure Active Directory users.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --id                    [Required] : The object ID or principal name of the user for which to')
            fprintf('%s\n', '                                         get information.')
            fprintf('%s\n', '    --account-enabled                  : Enable the user account.  Allowed values: false, true.')
            fprintf('%s\n', '    --display-name                     : Object''s display name or its prefix.')
            fprintf('%s\n', '    --force-change-password-next-login : Require the user to change their password the next time')
            fprintf('%s\n', '                                         they log in. Only valid when --password is specified.')
            fprintf('%s\n', '                                         Allowed values: false, true.')
            fprintf('%s\n', '    --mail-nickname                    : Mail alias. Defaults to user principal name.')
            fprintf('%s\n', '    --password                         : User password.')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update Azure Active Directory users. (autogenerated)')
            fprintf('%s\n', '        az ad user update --id 00000000-0000-0000-0000-000000000000')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad user update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
