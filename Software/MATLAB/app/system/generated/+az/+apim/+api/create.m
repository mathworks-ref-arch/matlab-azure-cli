classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az apim api create : Create an API Management API.
            % Command group 'apim api' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az apim api create ';
        end
        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = service_name(this, varargin)
            % The name of the API Management service instance.
            this.Options = [this.Options, '--service-name', varargin{:}];
        end

        function this = authorization_scope(this, varargin)
            % Specifies the OAuth operations scope.
            this.Options = [this.Options, '--authorization-scope', varargin{:}];
        end

        function this = authorization_server_id(this, varargin)
            % Specifies the OAuth authorization server ID.
            this.Options = [this.Options, '--authorization-server-id', varargin{:}];
        end

        function this = bearer_token_sending_methods(this, varargin)
            % Specifies the sending methods for bearer token.
            this.Options = [this.Options, '--bearer-token-sending-methods', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = open_id_provider_id(this, varargin)
            % Specifies the openid in the authentication setting.
            this.Options = [this.Options, '--open-id-provider-id', varargin{:}];
        end

        function this = subscription_key_required(this, varargin)
            % Specifies whether subscription key is required during call to this API, true - API is included into closed products only, false - API is included into open products alone, null - there is a mix of products. API Arguments
            this.Options = [this.Options, '--subscription-key-required', varargin{:}];
        end

        function this = api_id(this, varargin)
            % Unique name of the api to be created. API revision identifier. Must be unique in the current API Management service instance. Non- current revision has ;rev=n as a suffix where n is the revision number.
            this.Options = [this.Options, '--api-id', varargin{:}];
        end

        function this = display_name(this, varargin)
            % Display name of the API to be created.
            this.Options = [this.Options, '--display-name', varargin{:}];
        end

        function this = path(this, varargin)
            % Path to the API.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = api_type(this, varargin)
            % The type of the API.  Allowed values: http, soap.
            this.Options = [this.Options, '--api-type', varargin{:}];
        end

        function this = description(this, varargin)
            % Description of the API. May include HTML formatting tags.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = protocols(this, varargin)
            % Describes on which protocols the operations in this API can be invoked.  Allowed values: http, https.
            this.Options = [this.Options, '--protocols', varargin{:}];
        end

        function this = service_url(this, varargin)
            % Absolute URL of the backend service implementing this API. Cannot be more than 2000 characters long.
            this.Options = [this.Options, '--service-url', varargin{:}];
        end

        function this = subscription_key_header_name(this, varargin)
            % Specifies the subscription key header name.
            this.Options = [this.Options, '--subscription-key-header-name', varargin{:}];
        end

        function this = subscription_key_query_param_name(this, varargin)
            % Specifies the subscription key query string parameter name.
            this.Options = [this.Options, '--subscription-key-query-param-name', varargin{:}];
        end

        function this = subscription_required(this, varargin)
            % If true, the API requires a subscription key on requests. Allowed values: false, true.
            this.Options = [this.Options, '--subscription-required', varargin{:}];
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

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az apim api create : Create an API Management API.')
            fprintf('%s\n', '        Command group ''apim api'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --service-name -n        [Required] : The name of the API Management service instance.')
            fprintf('%s\n', '    --authorization-scope               : Specifies the OAuth operations scope.')
            fprintf('%s\n', '    --authorization-server-id           : Specifies the OAuth authorization server ID.')
            fprintf('%s\n', '    --bearer-token-sending-methods      : Specifies the sending methods for bearer token.')
            fprintf('%s\n', '    --no-wait                           : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --open-id-provider-id               : Specifies the openid in the authentication setting.')
            fprintf('%s\n', '    --subscription-key-required         : Specifies whether subscription key is required during call')
            fprintf('%s\n', '                                          to this API, true - API is included into closed products')
            fprintf('%s\n', '                                          only, false - API is included into open products alone,')
            fprintf('%s\n', '                                          null - there is a mix of products.')
            fprintf('%s\n', 'API Arguments')
            fprintf('%s\n', '    --api-id                 [Required] : Unique name of the api to be created.')
            fprintf('%s\n', '        API revision identifier. Must be unique in the current API Management service instance. Non-')
            fprintf('%s\n', '        current revision has ;rev=n as a suffix where n is the revision number.')
            fprintf('%s\n', '    --display-name           [Required] : Display name of the API to be created.')
            fprintf('%s\n', '    --path                   [Required] : Path to the API.')
            fprintf('%s\n', '    --api-type                          : The type of the API.  Allowed values: http, soap.')
            fprintf('%s\n', '    --description                       : Description of the API. May include HTML formatting tags.')
            fprintf('%s\n', '    --protocols                         : Describes on which protocols the operations in this API')
            fprintf('%s\n', '                                          can be invoked.  Allowed values: http, https.')
            fprintf('%s\n', '    --service-url                       : Absolute URL of the backend service implementing this API.')
            fprintf('%s\n', '                                          Cannot be more than 2000 characters long.')
            fprintf('%s\n', '    --subscription-key-header-name      : Specifies the subscription key header name.')
            fprintf('%s\n', '    --subscription-key-query-param-name : Specifies the subscription key query string parameter')
            fprintf('%s\n', '                                          name.')
            fprintf('%s\n', '    --subscription-required             : If true, the API requires a subscription key on requests.')
            fprintf('%s\n', '                                          Allowed values: false, true.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a basic API.')
            fprintf('%s\n', '        az apim api create --service-name MyApim -g MyResourceGroup --api-id MyApi --path ''/myapi''')
            fprintf('%s\n', '        --display-name ''My API''')
            fprintf('%s\n', 'For more specific examples, use: az find "az apim api create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
