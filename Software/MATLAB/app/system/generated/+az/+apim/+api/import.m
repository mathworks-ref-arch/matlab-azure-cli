classdef import < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = import()
            % az apim api import : Import an API Management service instance.
            % Command group 'apim api' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az apim api import ';
        end
        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = service_name(this, varargin)
            % The name of the api management service instance.
            this.Options = [this.Options, '--service-name', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = soap_api_type(this, varargin)
            % The type of API when file format is WSDL.
            this.Options = [this.Options, '--soap-api-type', varargin{:}];
        end

        function this = specification_format(this, varargin)
            % Specify the format of the imported API.  Allowed values: OpenApi, OpenApiJson, Swagger, Wadl, Wsdl.
            this.Options = [this.Options, '--specification-format', varargin{:}];
        end

        function this = specification_path(this, varargin)
            % File path specified to import the API.
            this.Options = [this.Options, '--specification-path', varargin{:}];
        end

        function this = specification_url(this, varargin)
            % Url specified to import the API.
            this.Options = [this.Options, '--specification-url', varargin{:}];
        end

        function this = wsdl_endpoint_name(this, varargin)
            % Local name of WSDL Endpoint (port) to be imported.
            this.Options = [this.Options, '--wsdl-endpoint-name', varargin{:}];
        end

        function this = wsdl_service_name(this, varargin)
            % Local name of WSDL Service to be imported. API Arguments
            this.Options = [this.Options, '--wsdl-service-name', varargin{:}];
        end

        function this = path(this, varargin)
            % Required. Relative URL uniquely identifying this API and all of its resource paths within the API Management service instance.
            this.Options = [this.Options, '--path', varargin{:}];
        end

        function this = api_id(this, varargin)
            % API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
            this.Options = [this.Options, '--api-id', varargin{:}];
        end

        function this = api_revision(this, varargin)
            % Describes the Revision of the Api. If no value is provided, default revision 1 is created.
            this.Options = [this.Options, '--api-revision', varargin{:}];
        end

        function this = api_type(this, varargin)
            % The type of the API.  Allowed values: http, soap.
            this.Options = [this.Options, '--api-type', varargin{:}];
        end

        function this = description(this, varargin)
            % Description of the API. May include HTML formatting tags.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = display_name(this, varargin)
            % Display name of this API.
            this.Options = [this.Options, '--display-name', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az apim api import"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az apim api import : Import an API Management service instance.')
            fprintf('%s\n', '        Command group ''apim api'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --service-name -n        [Required] : The name of the api management service instance.')
            fprintf('%s\n', '    --no-wait                           : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --soap-api-type                     : The type of API when file format is WSDL.')
            fprintf('%s\n', '    --specification-format              : Specify the format of the imported API.  Allowed values:')
            fprintf('%s\n', '                                          OpenApi, OpenApiJson, Swagger, Wadl, Wsdl.')
            fprintf('%s\n', '    --specification-path                : File path specified to import the API.')
            fprintf('%s\n', '    --specification-url                 : Url specified to import the API.')
            fprintf('%s\n', '    --wsdl-endpoint-name                : Local name of WSDL Endpoint (port) to be imported.')
            fprintf('%s\n', '    --wsdl-service-name                 : Local name of WSDL Service to be imported.')
            fprintf('%s\n', 'API Arguments')
            fprintf('%s\n', '    --path                   [Required] : Required. Relative URL uniquely identifying this API and')
            fprintf('%s\n', '                                          all of its resource paths within the API Management')
            fprintf('%s\n', '                                          service instance.')
            fprintf('%s\n', '    --api-id                            : API revision identifier. Must be unique in the current API')
            fprintf('%s\n', '                                          Management service instance. Non-current revision has')
            fprintf('%s\n', '                                          ;rev=n as a suffix where n is the revision number.')
            fprintf('%s\n', '    --api-revision                      : Describes the Revision of the Api. If no value is')
            fprintf('%s\n', '                                          provided, default revision 1 is created.')
            fprintf('%s\n', '    --api-type                          : The type of the API.  Allowed values: http, soap.')
            fprintf('%s\n', '    --description                       : Description of the API. May include HTML formatting tags.')
            fprintf('%s\n', '    --display-name                      : Display name of this API.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az apim api import"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class import 
