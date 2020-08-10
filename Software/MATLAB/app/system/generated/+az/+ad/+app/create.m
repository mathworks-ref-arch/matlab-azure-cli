classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az ad app create : Create a web application, web API or native application.
            this.BaseCmd = 'az ad app create ';
        end
        function this = display_name(this, varargin)
            % The display name of the application.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = app_roles(this, varargin)
            % Declare the roles you want to associate with your application. Should be in manifest json format. See examples below for details.
            this.Options = [this.Options, '--app-roles', varargin{:}];
        end

        function this = available_to_other_tenants(this, varargin)
            % The application can be used from any Azure AD tenants.  Allowed values: false, true.
            this.Options = [this.Options, '--available-to-other-tenants', varargin{:}];
        end

        function this = credential_description(this, varargin)
            % The description of the password.
            this.Options = [this.Options, '--credential-description', varargin{:}];
        end

        function this = end_date(this, varargin)
            % Date or datetime after which credentials expire(e.g. '2017-12-31T11:59:59+00:00' or '2017-12-31'). Default value is one year after current time.
            this.Options = [this.Options, '--end-date', varargin{:}];
        end

        function this = homepage(this, varargin)
            % The url where users can sign in and use your app.
            this.Options = [this.Options, '--homepage', varargin{:}];
        end

        function this = identifier_uris(this, varargin)
            % Space-separated unique URIs that Azure AD can use for this app.
            this.Options = [this.Options, '--identifier-uris', varargin{:}];
        end

        function this = key_type(this, varargin)
            % The type of the key credentials associated with the application. Allowed values: AsymmetricX509Cert, Password, Symmetric. Default: AsymmetricX509Cert.
            this.Options = [this.Options, '--key-type', varargin{:}];
        end

        function this = key_usage(this, varargin)
            % The usage of the key credentials associated with the application. Allowed values: Sign, Verify.  Default: Verify.
            this.Options = [this.Options, '--key-usage', varargin{:}];
        end

        function this = key_value(this, varargin)
            % The value for the key credentials associated with the application.
            this.Options = [this.Options, '--key-value', varargin{:}];
        end

        function this = native_app(this, varargin)
            % An application which can be installed on a user's device or computer.  Allowed values: false, true.
            this.Options = [this.Options, '--native-app', varargin{:}];
        end

        function this = oauth2_allow_implicit_flow(this, varargin)
            % Whether to allow implicit grant flow for OAuth2.  Allowed values: false, true.
            this.Options = [this.Options, '--oauth2-allow-implicit-flow', varargin{:}];
        end

        function this = optional_claims(this, varargin)
            % Declare the optional claims for the application. Should be in manifest json format. See examples below for details. Please reference https://docs.microsoft.com/en-us/azure/active- directory/develop/active-directory-optional-claims#optionalclaim- type for optional claim properties.
            this.Options = [this.Options, '--optional-claims', varargin{:}];
        end

        function this = password(this, varargin)
            % App password, aka 'client secret'.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = reply_urls(this, varargin)
            % Space-separated URIs to which Azure AD will redirect in response to an OAuth 2.0 request. The value does not need to be a physical endpoint, but must be a valid URI.
            this.Options = [this.Options, '--reply-urls', varargin{:}];
        end

        function this = required_resource_accesses(this, varargin)
            % Resource scopes and roles the application requires access to. Should be in manifest json format. See examples below for details.
            this.Options = [this.Options, '--required-resource-accesses', varargin{:}];
        end

        function this = start_date(this, varargin)
            % Date or datetime at which credentials become valid(e.g. '2017-01-01T01:00:00+00:00' or '2017-01-01'). Default value is current time.
            this.Options = [this.Options, '--start-date', varargin{:}];
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
            fprintf('%s\n', '    az ad app create : Create a web application, web API or native application.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --display-name    [Required] : The display name of the application.')
            fprintf('%s\n', '    --app-roles                  : Declare the roles you want to associate with your application.')
            fprintf('%s\n', '                                   Should be in manifest json format. See examples below for')
            fprintf('%s\n', '                                   details.')
            fprintf('%s\n', '    --available-to-other-tenants : The application can be used from any Azure AD tenants.  Allowed')
            fprintf('%s\n', '                                   values: false, true.')
            fprintf('%s\n', '    --credential-description     : The description of the password.')
            fprintf('%s\n', '    --end-date                   : Date or datetime after which credentials expire(e.g.')
            fprintf('%s\n', '                                   ''2017-12-31T11:59:59+00:00'' or ''2017-12-31''). Default value is')
            fprintf('%s\n', '                                   one year after current time.')
            fprintf('%s\n', '    --homepage                   : The url where users can sign in and use your app.')
            fprintf('%s\n', '    --identifier-uris            : Space-separated unique URIs that Azure AD can use for this app.')
            fprintf('%s\n', '    --key-type                   : The type of the key credentials associated with the application.')
            fprintf('%s\n', '                                   Allowed values: AsymmetricX509Cert, Password, Symmetric.')
            fprintf('%s\n', '                                   Default: AsymmetricX509Cert.')
            fprintf('%s\n', '    --key-usage                  : The usage of the key credentials associated with the application.')
            fprintf('%s\n', '                                   Allowed values: Sign, Verify.  Default: Verify.')
            fprintf('%s\n', '    --key-value                  : The value for the key credentials associated with the')
            fprintf('%s\n', '                                   application.')
            fprintf('%s\n', '    --native-app                 : An application which can be installed on a user''s device or')
            fprintf('%s\n', '                                   computer.  Allowed values: false, true.')
            fprintf('%s\n', '    --oauth2-allow-implicit-flow : Whether to allow implicit grant flow for OAuth2.  Allowed values:')
            fprintf('%s\n', '                                   false, true.')
            fprintf('%s\n', '    --optional-claims            : Declare the optional claims for the application. Should be in')
            fprintf('%s\n', '                                   manifest json format. See examples below for details. Please')
            fprintf('%s\n', '                                   reference https://docs.microsoft.com/en-us/azure/active-')
            fprintf('%s\n', '                                   directory/develop/active-directory-optional-claims#optionalclaim-')
            fprintf('%s\n', '                                   type for optional claim properties.')
            fprintf('%s\n', '    --password                   : App password, aka ''client secret''.')
            fprintf('%s\n', '    --reply-urls                 : Space-separated URIs to which Azure AD will redirect in response')
            fprintf('%s\n', '                                   to an OAuth 2.0 request. The value does not need to be a physical')
            fprintf('%s\n', '                                   endpoint, but must be a valid URI.')
            fprintf('%s\n', '    --required-resource-accesses : Resource scopes and roles the application requires access to.')
            fprintf('%s\n', '                                   Should be in manifest json format. See examples below for')
            fprintf('%s\n', '                                   details.')
            fprintf('%s\n', '    --start-date                 : Date or datetime at which credentials become valid(e.g.')
            fprintf('%s\n', '                                   ''2017-01-01T01:00:00+00:00'' or ''2017-01-01''). Default value is')
            fprintf('%s\n', '                                   current time.')
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
            fprintf('%s\n', '    Create a native application with delegated permission of "access the AAD directory as the')
            fprintf('%s\n', '    signed-in user"')
            fprintf('%s\n', '        az ad app create --display-name my-native --native-app --required-resource-accesses')
            fprintf('%s\n', '        @manifest.json')
            fprintf('%s\n', '        ("manifest.json" contains the following content)')
            fprintf('%s\n', '        [{')
            fprintf('%s\n', '            "resourceAppId": "00000002-0000-0000-c000-000000000000",')
            fprintf('%s\n', '            "resourceAccess": [')
            fprintf('%s\n', '                {')
            fprintf('%s\n', '                    "id": "a42657d6-7f20-40e3-b6f0-cee03008a62a",')
            fprintf('%s\n', '                    "type": "Scope"')
            fprintf('%s\n', '                }')
            fprintf('%s\n', '           ]')
            fprintf('%s\n', '        }]')
            fprintf('%s\n', '    Create an application with a role')
            fprintf('%s\n', '        az ad app create --display-name mytestapp --identifier-uris https://mytestapp.websites.net')
            fprintf('%s\n', '        --app-roles @manifest.json')
            fprintf('%s\n', '        ("manifest.json" contains the following content)')
            fprintf('%s\n', '        [{')
            fprintf('%s\n', '            "allowedMemberTypes": [')
            fprintf('%s\n', '              "User"')
            fprintf('%s\n', '            ],')
            fprintf('%s\n', '            "description": "Approvers can mark documents as approved",')
            fprintf('%s\n', '            "displayName": "Approver",')
            fprintf('%s\n', '            "isEnabled": "true",')
            fprintf('%s\n', '            "value": "approver"')
            fprintf('%s\n', '        }]')
            fprintf('%s\n', '    Create an application with optional claims')
            fprintf('%s\n', '        az ad app create --display-name mytestapp --optional-claims @manifest.json')
            fprintf('%s\n', '        ("manifest.json" contains the following content)')
            fprintf('%s\n', '        {')
            fprintf('%s\n', '            "idToken": [')
            fprintf('%s\n', '                {')
            fprintf('%s\n', '                    "name": "auth_time",')
            fprintf('%s\n', '                    "source": null,')
            fprintf('%s\n', '                    "essential": false')
            fprintf('%s\n', '                }')
            fprintf('%s\n', '            ],')
            fprintf('%s\n', '            "accessToken": [')
            fprintf('%s\n', '                {')
            fprintf('%s\n', '                    "name": "email",')
            fprintf('%s\n', '                    "source": null,')
            fprintf('%s\n', '                    "essential": false')
            fprintf('%s\n', '                }')
            fprintf('%s\n', '            ]')
            fprintf('%s\n', '        }')
            fprintf('%s\n', 'For more specific examples, use: az find "az ad app create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
