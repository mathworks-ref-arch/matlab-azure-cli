classdef update_credentials < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update_credentials()
            % az aks update-credentials : Update credentials for a managed Kubernetes cluster, like service
            % principal.
            this.BaseCmd = 'az aks update-credentials ';
        end
        function this = name(this, varargin)
            % Name of the managed cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish. AAD Arguments
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = aad_client_app_id(this, varargin)
            % The ID of an Azure Active Directory client application. This argument is required if `--reset-aad` is specified.
            this.Options = [this.Options, '--aad-client-app-id', varargin{:}];
        end

        function this = aad_server_app_id(this, varargin)
            % The ID of an Azure Active Directory server application. This argument is required if `--reset-aad` is specified.
            this.Options = [this.Options, '--aad-server-app-id', varargin{:}];
        end

        function this = aad_server_app_secret(this, varargin)
            % The secret of an Azure Active Directory server application. This argument is required if `--reset-aad` is specified.
            this.Options = [this.Options, '--aad-server-app-secret', varargin{:}];
        end

        function this = aad_tenant_id(this, varargin)
            % Tenant ID associated with Azure Active Directory.
            this.Options = [this.Options, '--aad-tenant-id', varargin{:}];
        end

        function this = reset_aad(this, varargin)
            % Reset Azure Active Directory configuration for a managed cluster. Service Principal Arguments
            this.Options = [this.Options, '--reset-aad', varargin{:}];
        end

        function this = client_secret(this, varargin)
            % Secret associated with the service principal. This argument is required if `--service-principal` is specified.
            this.Options = [this.Options, '--client-secret', varargin{:}];
        end

        function this = reset_service_principal(this, varargin)
            % Reset service principal for a managed cluster.
            this.Options = [this.Options, '--reset-service-principal', varargin{:}];
        end

        function this = service_principal(this, varargin)
            % Service principal used for authentication to Azure APIs. This argument is required if `--reset-service-principal` is specified.
            this.Options = [this.Options, '--service-principal', varargin{:}];
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
            fprintf('%s\n', '    az aks update-credentials : Update credentials for a managed Kubernetes cluster, like service')
            fprintf('%s\n', '    principal.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the managed cluster.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', 'AAD Arguments')
            fprintf('%s\n', '    --aad-client-app-id            : The ID of an Azure Active Directory client application. This')
            fprintf('%s\n', '                                     argument is required if `--reset-aad` is specified.')
            fprintf('%s\n', '    --aad-server-app-id            : The ID of an Azure Active Directory server application. This')
            fprintf('%s\n', '                                     argument is required if `--reset-aad` is specified.')
            fprintf('%s\n', '    --aad-server-app-secret        : The secret of an Azure Active Directory server application.')
            fprintf('%s\n', '                                     This argument is required if `--reset-aad` is specified.')
            fprintf('%s\n', '    --aad-tenant-id                : Tenant ID associated with Azure Active Directory.')
            fprintf('%s\n', '    --reset-aad                    : Reset Azure Active Directory configuration for a managed')
            fprintf('%s\n', '                                     cluster.')
            fprintf('%s\n', 'Service Principal Arguments')
            fprintf('%s\n', '    --client-secret                : Secret associated with the service principal. This argument is')
            fprintf('%s\n', '                                     required if `--service-principal` is specified.')
            fprintf('%s\n', '    --reset-service-principal      : Reset service principal for a managed cluster.')
            fprintf('%s\n', '    --service-principal            : Service principal used for authentication to Azure APIs. This')
            fprintf('%s\n', '                                     argument is required if `--reset-service-principal` is')
            fprintf('%s\n', '                                     specified.')
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
            fprintf('%s\n', '    Update an existing Kubernetes cluster with new service principal.')
            fprintf('%s\n', '        az aks update-credentials -g MyResourceGroup -n MyManagedCluster --reset-service-principal')
            fprintf('%s\n', '        --service-principal MyNewServicePrincipalID --client-secret MyNewServicePrincipalSecret')
            fprintf('%s\n', '    Update an existing Azure Active Directory Kubernetes cluster with new server app secret key.')
            fprintf('%s\n', '        az aks update-credentials -g MyResourceGroup -n MyManagedCluster --reset-aad --aad-server-')
            fprintf('%s\n', '        app-id MyExistingAADServerAppID --aad-server-app-secret MyNewAADServerAppSecret --aad-')
            fprintf('%s\n', '        client-app-id MyExistingAADClientAppID --aad-tenant-id MyAADTenantID')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks update-credentials"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update_credentials 
