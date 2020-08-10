classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az apim create : Create an API Management service instance.
            % Command group 'apim' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az apim create ';
        end
        function this = name(this, varargin)
            % Unique name of the service instance to be created. The name must be globally unique since it will be included as the gateway hostname like' https://my-api-servicename.azure-api.net'.  See examples.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = publisher_email(this, varargin)
            % The e-mail address to receive all system notifications.
            this.Options = [this.Options, '--publisher-email', varargin{:}];
        end

        function this = publisher_name(this, varargin)
            % The name of your organization for use in the developer portal and e-mail notifications.
            this.Options = [this.Options, '--publisher-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = enable_client_certificate(this, varargin)
            % Enforces a client certificate to be presented on each request to the gateway and also enables the ability to authenticate the certificate in the policy on the gateway.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-client-certificate', varargin{:}];
        end

        function this = enable_managed_identity(this, varargin)
            % Create a managed identity for the API Management service to access other Azure resources.  Allowed values: false, true.
            this.Options = [this.Options, '--enable-managed-identity', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = sku_capacity(this, varargin)
            % The number of deployed units of the SKU.  Default: 1.
            this.Options = [this.Options, '--sku-capacity', varargin{:}];
        end

        function this = sku_name(this, varargin)
            % The sku of the api management instance.  Allowed values: Basic, Consumption, Developer, Premium, Standard.  Default: Developer.
            this.Options = [this.Options, '--sku-name', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = virtual_network(this, varargin)
            % The virtual network type.  Allowed values: External, Internal, None.  Default: None.
            this.Options = [this.Options, '--virtual-network', varargin{:}];
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
            fprintf('%s\n', '    az apim create : Create an API Management service instance.')
            fprintf('%s\n', '        Command group ''apim'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Unique name of the service instance to be created.')
            fprintf('%s\n', '        The name must be globally unique since it will be included as the gateway')
            fprintf('%s\n', '        hostname like'' https://my-api-servicename.azure-api.net''.  See examples.')
            fprintf('%s\n', '    --publisher-email   [Required] : The e-mail address to receive all system notifications.')
            fprintf('%s\n', '    --publisher-name    [Required] : The name of your organization for use in the developer portal')
            fprintf('%s\n', '                                     and e-mail notifications.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --enable-client-certificate    : Enforces a client certificate to be presented on each request')
            fprintf('%s\n', '                                     to the gateway and also enables the ability to authenticate the')
            fprintf('%s\n', '                                     certificate in the policy on the gateway.  Allowed values:')
            fprintf('%s\n', '                                     false, true.')
            fprintf('%s\n', '    --enable-managed-identity      : Create a managed identity for the API Management service to')
            fprintf('%s\n', '                                     access other Azure resources.  Allowed values: false, true.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --sku-capacity                 : The number of deployed units of the SKU.  Default: 1.')
            fprintf('%s\n', '    --sku-name                     : The sku of the api management instance.  Allowed values: Basic,')
            fprintf('%s\n', '                                     Consumption, Developer, Premium, Standard.  Default: Developer.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --virtual-network -v           : The virtual network type.  Allowed values: External, Internal,')
            fprintf('%s\n', '                                     None.  Default: None.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a Developer tier API Management service.')
            fprintf('%s\n', '        az apim create --name MyApim -g MyResourceGroup -l eastus --publisher-email')
            fprintf('%s\n', '        email@mydomain.com --publisher-name Microsoft')
            fprintf('%s\n', '    Create a Consumption tier API Management service.')
            fprintf('%s\n', '        az apim create --name MyApim -g MyResourceGroup -l eastus --sku-name Consumption --enable-')
            fprintf('%s\n', '        client-certificate \')
            fprintf('%s\n', '            --publisher-email email@mydomain.com --publisher-name Microsoft')
            fprintf('%s\n', 'For more specific examples, use: az find "az apim create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
