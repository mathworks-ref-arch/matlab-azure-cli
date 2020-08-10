classdef login < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = login()
            % az login : Log in to Azure.
            this.BaseCmd = 'az login ';
        end
        function this = allow_no_subscriptions(this, varargin)
            % Support access tenants without subscriptions. It's uncommon but useful to run tenant level commands, such as 'az ad'.
            this.Options = [this.Options, '--allow-no-subscriptions', varargin{:}];
        end

        function this = password(this, varargin)
            % Credentials like user password, or for a service principal, provide client secret or a pem file with key and public certificate. Will prompt if not given.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = service_principal(this, varargin)
            % The credential representing a service principal.
            this.Options = [this.Options, '--service-principal', varargin{:}];
        end

        function this = tenant(this, varargin)
            % The AAD tenant, must provide when using service principals.
            this.Options = [this.Options, '--tenant', varargin{:}];
        end

        function this = use_cert_sn_issuer(this, varargin)
            % Used with a service principal configured with Subject Name and Issuer Authentication in order to support automatic certificate rolls.
            this.Options = [this.Options, '--use-cert-sn-issuer', varargin{:}];
        end

        function this = use_device_code(this, varargin)
            % Use CLI's old authentication flow based on device code. CLI will also use this if it can't launch a browser in your behalf, e.g. in remote SSH or Cloud Shell.
            this.Options = [this.Options, '--use-device-code', varargin{:}];
        end

        function this = username(this, varargin)
            % User name, service principal, or managed service identity ID. Managed Service Identity Arguments
            this.Options = [this.Options, '--username', varargin{:}];
        end

        function this = identity(this, varargin)
            % Log in using the Virtual Machine's identity.
            this.Options = [this.Options, '--identity', varargin{:}];
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
            fprintf('%s\n', '    az login : Log in to Azure.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --allow-no-subscriptions : Support access tenants without subscriptions. It''s uncommon but')
            fprintf('%s\n', '                               useful to run tenant level commands, such as ''az ad''.')
            fprintf('%s\n', '    --password -p            : Credentials like user password, or for a service principal, provide')
            fprintf('%s\n', '                               client secret or a pem file with key and public certificate. Will')
            fprintf('%s\n', '                               prompt if not given.')
            fprintf('%s\n', '    --service-principal      : The credential representing a service principal.')
            fprintf('%s\n', '    --tenant -t              : The AAD tenant, must provide when using service principals.')
            fprintf('%s\n', '    --use-cert-sn-issuer     : Used with a service principal configured with Subject Name and Issuer')
            fprintf('%s\n', '                               Authentication in order to support automatic certificate rolls.')
            fprintf('%s\n', '    --use-device-code        : Use CLI''s old authentication flow based on device code. CLI will also')
            fprintf('%s\n', '                               use this if it can''t launch a browser in your behalf, e.g. in remote')
            fprintf('%s\n', '                               SSH or Cloud Shell.')
            fprintf('%s\n', '    --username -u            : User name, service principal, or managed service identity ID.')
            fprintf('%s\n', 'Managed Service Identity Arguments')
            fprintf('%s\n', '    --identity -i            : Log in using the Virtual Machine''s identity.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Log in interactively.')
            fprintf('%s\n', '        az login')
            fprintf('%s\n', '    Log in with user name and password. This doesn''t work with Microsoft accounts or accounts that')
            fprintf('%s\n', '    have two-factor authentication enabled. Use -p=secret if the first character of the password is')
            fprintf('%s\n', '    ''-''.')
            fprintf('%s\n', '        az login -u johndoe@contoso.com -p VerySecret')
            fprintf('%s\n', '    Log in with a service principal using client secret. Use -p=secret if the first character of the')
            fprintf('%s\n', '    password is ''-''.')
            fprintf('%s\n', '        az login --service-principal -u http://azure-cli-2016-08-05-14-31-15 -p VerySecret --tenant')
            fprintf('%s\n', '        contoso.onmicrosoft.com')
            fprintf('%s\n', '    Log in with a service principal using client certificate.')
            fprintf('%s\n', '        az login --service-principal -u http://azure-cli-2016-08-05-14-31-15 -p ~/mycertfile.pem')
            fprintf('%s\n', '        --tenant contoso.onmicrosoft.com')
            fprintf('%s\n', '    Log in using a VM''s system assigned identity')
            fprintf('%s\n', '        az login --identity')
            fprintf('%s\n', '    Log in using a VM''s user assigned identity. Client or object ids of the service identity also')
            fprintf('%s\n', '    work')
            fprintf('%s\n', '        az login --identity -u /subscriptions/<subscriptionId>/resourcegroups/myRG/providers/Microso')
            fprintf('%s\n', '        ft.ManagedIdentity/userAssignedIdentities/myID')
            fprintf('%s\n', 'For more specific examples, use: az find "az login"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class login 
