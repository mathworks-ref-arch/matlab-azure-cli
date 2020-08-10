classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az webapp auth update : Update the authentication settings for the webapp.
            this.BaseCmd = 'az webapp auth update ';
        end
        function this = action(this, varargin)
            % Allowed values: AllowAnonymous, LoginWithAzureActiveDirectory, LoginWithFacebook, LoginWithGoogle, LoginWithMicrosoftAccount, LoginWithTwitter.
            this.Options = [this.Options, '--action', varargin{:}];
        end

        function this = allowed_external_redirect_urls(this, varargin)
            % One or more urls (space-delimited).
            this.Options = [this.Options, '--allowed-external-redirect-urls', varargin{:}];
        end

        function this = enabled(this, varargin)
            % Allowed values: false, true.
            this.Options = [this.Options, '--enabled', varargin{:}];
        end

        function this = runtime_version(this, varargin)
            % Runtime version of the Authentication/Authorization feature in use for the current app.
            this.Options = [this.Options, '--runtime-version', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
        end

        function this = token_refresh_extension_hours(this, varargin)
            % Hours, must be formattable into a float.
            this.Options = [this.Options, '--token-refresh-extension-hours', varargin{:}];
        end

        function this = token_store(this, varargin)
            % Use App Service Token Store.  Allowed values: false, true. Azure Active Directory Arguments
            this.Options = [this.Options, '--token-store', varargin{:}];
        end

        function this = aad_allowed_token_audiences(this, varargin)
            % One or more token audiences (space-delimited).
            this.Options = [this.Options, '--aad-allowed-token-audiences', varargin{:}];
        end

        function this = aad_client_id(this, varargin)
            % Application ID to integrate AAD organization account Sign-in into your web app.
            this.Options = [this.Options, '--aad-client-id', varargin{:}];
        end

        function this = aad_client_secret(this, varargin)
            % AAD application secret.
            this.Options = [this.Options, '--aad-client-secret', varargin{:}];
        end

        function this = aad_token_issuer_url(this, varargin)
            % This url can be found in the JSON output returned from your active directory endpoint using your tenantID. The endpoint can be queried from `az cloud show` at "endpoints.activeDirectory". The tenantID can be found using `az account show`. Get the "issuer" from the JSON at <active directory endpoint>/<tenantId>/.well-known/openid- configuration. Facebook Arguments
            this.Options = [this.Options, '--aad-token-issuer-url', varargin{:}];
        end

        function this = facebook_app_id(this, varargin)
            % Application ID to integrate Facebook Sign-in into your web app.
            this.Options = [this.Options, '--facebook-app-id', varargin{:}];
        end

        function this = facebook_app_secret(this, varargin)
            % Facebook Application client secret.
            this.Options = [this.Options, '--facebook-app-secret', varargin{:}];
        end

        function this = facebook_oauth_scopes(this, varargin)
            % One or more facebook authentication scopes (space- delimited). Google Arguments
            this.Options = [this.Options, '--facebook-oauth-scopes', varargin{:}];
        end

        function this = google_client_id(this, varargin)
            % Application ID to integrate Google Sign-in into your web app.
            this.Options = [this.Options, '--google-client-id', varargin{:}];
        end

        function this = google_client_secret(this, varargin)
            % Google Application client secret.
            this.Options = [this.Options, '--google-client-secret', varargin{:}];
        end

        function this = google_oauth_scopes(this, varargin)
            % One or more Google authentication scopes (space-delimited). Microsoft Arguments
            this.Options = [this.Options, '--google-oauth-scopes', varargin{:}];
        end

        function this = microsoft_account_client_id(this, varargin)
            % AAD V2 Application ID to integrate Microsoft account Sign-in into your web app.
            this.Options = [this.Options, '--microsoft-account-client-id', varargin{:}];
        end

        function this = microsoft_account_client_secret(this, varargin)
            % AAD V2 Application client secret.
            this.Options = [this.Options, '--microsoft-account-client-secret', varargin{:}];
        end

        function this = microsoft_account_oauth_scopes(this, varargin)
            % One or more Microsoft authentification scopes (space- delimited).
            this.Options = [this.Options, '--microsoft-account-oauth-scopes', varargin{:}];
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

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the web app. You can configure the default using `az configure --defaults web=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Twitter Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = twitter_consumer_key(this, varargin)
            % Application ID to integrate Twitter Sign-in into your web app.
            this.Options = [this.Options, '--twitter-consumer-key', varargin{:}];
        end

        function this = twitter_consumer_secret(this, varargin)
            % Twitter Application client secret.
            this.Options = [this.Options, '--twitter-consumer-secret', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az webapp auth update : Update the authentication settings for the webapp.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --action                          : Allowed values: AllowAnonymous,')
            fprintf('%s\n', '                                        LoginWithAzureActiveDirectory, LoginWithFacebook,')
            fprintf('%s\n', '                                        LoginWithGoogle, LoginWithMicrosoftAccount,')
            fprintf('%s\n', '                                        LoginWithTwitter.')
            fprintf('%s\n', '    --allowed-external-redirect-urls  : One or more urls (space-delimited).')
            fprintf('%s\n', '    --enabled                         : Allowed values: false, true.')
            fprintf('%s\n', '    --runtime-version                 : Runtime version of the Authentication/Authorization feature')
            fprintf('%s\n', '                                        in use for the current app.')
            fprintf('%s\n', '    --slot -s                         : The name of the slot. Default to the productions slot if not')
            fprintf('%s\n', '                                        specified.')
            fprintf('%s\n', '    --token-refresh-extension-hours   : Hours, must be formattable into a float.')
            fprintf('%s\n', '    --token-store                     : Use App Service Token Store.  Allowed values: false, true.')
            fprintf('%s\n', 'Azure Active Directory Arguments')
            fprintf('%s\n', '    --aad-allowed-token-audiences     : One or more token audiences (space-delimited).')
            fprintf('%s\n', '    --aad-client-id                   : Application ID to integrate AAD organization account Sign-in')
            fprintf('%s\n', '                                        into your web app.')
            fprintf('%s\n', '    --aad-client-secret               : AAD application secret.')
            fprintf('%s\n', '    --aad-token-issuer-url            : This url can be found in the JSON output returned from your')
            fprintf('%s\n', '                                        active directory endpoint using your tenantID. The endpoint')
            fprintf('%s\n', '                                        can be queried from `az cloud show` at')
            fprintf('%s\n', '                                        "endpoints.activeDirectory". The tenantID can be found using')
            fprintf('%s\n', '                                        `az account show`. Get the "issuer" from the JSON at <active')
            fprintf('%s\n', '                                        directory endpoint>/<tenantId>/.well-known/openid-')
            fprintf('%s\n', '                                        configuration.')
            fprintf('%s\n', 'Facebook Arguments')
            fprintf('%s\n', '    --facebook-app-id                 : Application ID to integrate Facebook Sign-in into your web')
            fprintf('%s\n', '                                        app.')
            fprintf('%s\n', '    --facebook-app-secret             : Facebook Application client secret.')
            fprintf('%s\n', '    --facebook-oauth-scopes           : One or more facebook authentication scopes (space-')
            fprintf('%s\n', '                                        delimited).')
            fprintf('%s\n', 'Google Arguments')
            fprintf('%s\n', '    --google-client-id                : Application ID to integrate Google Sign-in into your web')
            fprintf('%s\n', '                                        app.')
            fprintf('%s\n', '    --google-client-secret            : Google Application client secret.')
            fprintf('%s\n', '    --google-oauth-scopes             : One or more Google authentication scopes (space-delimited).')
            fprintf('%s\n', 'Microsoft Arguments')
            fprintf('%s\n', '    --microsoft-account-client-id     : AAD V2 Application ID to integrate Microsoft account Sign-in')
            fprintf('%s\n', '                                        into your web app.')
            fprintf('%s\n', '    --microsoft-account-client-secret : AAD V2 Application client secret.')
            fprintf('%s\n', '    --microsoft-account-oauth-scopes  : One or more Microsoft authentification scopes (space-')
            fprintf('%s\n', '                                        delimited).')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                             : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                        complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                        Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                        ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                         : Name of the web app. You can configure the default using `az')
            fprintf('%s\n', '                                        configure --defaults web=<name>`.')
            fprintf('%s\n', '    --resource-group -g               : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                        using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Twitter Arguments')
            fprintf('%s\n', '    --twitter-consumer-key            : Application ID to integrate Twitter Sign-in into your web')
            fprintf('%s\n', '                                        app.')
            fprintf('%s\n', '    --twitter-consumer-secret         : Twitter Application client secret.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Enable AAD by enabling authentication and setting AAD-associated parameters. Default provider is')
            fprintf('%s\n', '    set to AAD. Must have created a AAD service principal beforehand.')
            fprintf('%s\n', '        az webapp auth update  -g myResourceGroup -n myUniqueApp --enabled true \')
            fprintf('%s\n', '          --action LoginWithAzureActiveDirectory \')
            fprintf('%s\n', '          --aad-allowed-token-audiences')
            fprintf('%s\n', '        https://webapp_name.azurewebsites.net/.auth/login/aad/callback \')
            fprintf('%s\n', '          --aad-client-id ecbacb08-df8b-450d-82b3-3fced03f2b27 --aad-client-secret')
            fprintf('%s\n', '        very_secret_password \')
            fprintf('%s\n', '          --aad-token-issuer-url https://sts.windows.net/54826b22-38d6-4fb2-bad9-b7983a3e9c5a/')
            fprintf('%s\n', '    Allow Facebook authentication by setting FB-associated parameters and turning on public-profile')
            fprintf('%s\n', '    and email scopes; allow anonymous users')
            fprintf('%s\n', '        az webapp auth update -g myResourceGroup -n myUniqueApp --action AllowAnonymous \')
            fprintf('%s\n', '          --facebook-app-id my_fb_id --facebook-app-secret my_fb_secret \')
            fprintf('%s\n', '          --facebook-oauth-scopes public_profile email')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp auth update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
