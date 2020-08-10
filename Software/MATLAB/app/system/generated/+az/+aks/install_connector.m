classdef install_connector < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = install_connector()
            % az aks install-connector : Install the ACI Connector on a managed Kubernetes cluster.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az aks install-connector ';
        end
        function this = name(this, varargin)
            % Name of the managed cluster.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = aci_resource_group(this, varargin)
            % The resource group to create the ACI container groups. Use the MC_* resource group if it is not specified.
            this.Options = [this.Options, '--aci-resource-group', varargin{:}];
        end

        function this = chart_url(this, varargin)
            % URL of a Helm chart that installs ACI Connector.  Default: https://github.com/virtual-kubelet/virtual- kubelet/raw/master/charts/virtual-kubelet-for-aks-latest.tgz.
            this.Options = [this.Options, '--chart-url', varargin{:}];
        end

        function this = client_secret(this, varargin)
            % Secret associated with the service principal. This argument is required if `--service-principal` is specified.
            this.Options = [this.Options, '--client-secret', varargin{:}];
        end

        function this = connector_name(this, varargin)
            % Name of the ACI Connector.  Default: aci-connector.
            this.Options = [this.Options, '--connector-name', varargin{:}];
        end

        function this = image_tag(this, varargin)
            % The image tag of the virtual kubelet. Use 'latest' if it is not specified.
            this.Options = [this.Options, '--image-tag', varargin{:}];
        end

        function this = location(this, varargin)
            % The location to create the ACI container groups. Use the location of the MC_* resource group if it is not specified.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = os_type(this, varargin)
            % Install support for deploying ACIs of this operating system type.  Allowed values: Both, Linux, Windows.  Default: Linux.
            this.Options = [this.Options, '--os-type', varargin{:}];
        end

        function this = service_principal(this, varargin)
            % Service principal used for authentication to Azure APIs. If not specified, use the AKS service principal defined in the file /etc/kubernetes/azure.json on the node which runs the virtual kubelet pod.
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
            fprintf('%s\n', '    az aks install-connector : Install the ACI Connector on a managed Kubernetes cluster.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the managed cluster.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --aci-resource-group           : The resource group to create the ACI container groups. Use the')
            fprintf('%s\n', '                                     MC_* resource group if it is not specified.')
            fprintf('%s\n', '    --chart-url                    : URL of a Helm chart that installs ACI Connector.  Default:')
            fprintf('%s\n', '                                     https://github.com/virtual-kubelet/virtual-')
            fprintf('%s\n', '                                     kubelet/raw/master/charts/virtual-kubelet-for-aks-latest.tgz.')
            fprintf('%s\n', '    --client-secret                : Secret associated with the service principal. This argument is')
            fprintf('%s\n', '                                     required if `--service-principal` is specified.')
            fprintf('%s\n', '    --connector-name               : Name of the ACI Connector.  Default: aci-connector.')
            fprintf('%s\n', '    --image-tag                    : The image tag of the virtual kubelet. Use ''latest'' if it is not')
            fprintf('%s\n', '                                     specified.')
            fprintf('%s\n', '    --location -l                  : The location to create the ACI container groups. Use the')
            fprintf('%s\n', '                                     location of the MC_* resource group if it is not specified.')
            fprintf('%s\n', '    --os-type                      : Install support for deploying ACIs of this operating system')
            fprintf('%s\n', '                                     type.  Allowed values: Both, Linux, Windows.  Default: Linux.')
            fprintf('%s\n', '    --service-principal            : Service principal used for authentication to Azure APIs.')
            fprintf('%s\n', '        If not specified, use the AKS service principal defined in the file')
            fprintf('%s\n', '        /etc/kubernetes/azure.json on the node which runs the virtual kubelet pod.')
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
            fprintf('%s\n', '    Install the virtual Kubelet for Linux to a managed Kubernetes cluster.')
            fprintf('%s\n', '        az aks install-connector --name MyManagedCluster --resource-group MyResourceGroup')
            fprintf('%s\n', '    Install the virtual Kubelet for Windows to a managed Kubernetes cluster.')
            fprintf('%s\n', '        az aks install-connector --name MyManagedCluster --resource-group MyResourceGroup \')
            fprintf('%s\n', '           --connector-name virtual-kubelet --os-type Windows')
            fprintf('%s\n', '    Install the virtual Kubelet for both Windows and Linux to a managed Kubernetes cluster.')
            fprintf('%s\n', '        az aks install-connector --name MyManagedCluster --resource-group MyResourceGroup \')
            fprintf('%s\n', '          --connector-name virtual-kubelet --os-type Both')
            fprintf('%s\n', '    Install the virtual Kubelet using a specific service principal in a specific resource group.')
            fprintf('%s\n', '        az aks install-connector --name MyManagedCluster --resource-group MyResourceGroup \')
            fprintf('%s\n', '          --connector-name virtual-kubelet --service-principal {SPN_ID} --client-secret {SPN_SECRET}')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '          --aci-resource-group ACI-resource-group')
            fprintf('%s\n', '    Install the virtual Kubelet from a custom Helm chart with custom tag.')
            fprintf('%s\n', '        az aks install-connector --name MyManagedCluster --resource-group MyResourceGroup \')
            fprintf('%s\n', '          --connector-name virtual-kubelet --chart-url {CustomURL} --image-tag')
            fprintf('%s\n', '        {VirtualKubeletImageTag}')
            fprintf('%s\n', 'For more specific examples, use: az find "az aks install-connector"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class install_connector 
