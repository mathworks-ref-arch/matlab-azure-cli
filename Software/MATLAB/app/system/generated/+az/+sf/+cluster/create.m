classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sf cluster create : Create a new Azure Service Fabric cluster.
            % Command group 'sf' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sf cluster create ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Specify the resource group name. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = certificate_file(this, varargin)
            % The existing certificate file path for the primary cluster certificate.
            this.Options = [this.Options, '--certificate-file', varargin{:}];
        end

        function this = certificate_output_folder(this, varargin)
            % The folder of the new certificate file to be created.
            this.Options = [this.Options, '--certificate-output-folder', varargin{:}];
        end

        function this = certificate_password(this, varargin)
            % The password of the certificate file.
            this.Options = [this.Options, '--certificate-password', varargin{:}];
        end

        function this = certificate_subject_name(this, varargin)
            % The subject name of the certificate to be created.
            this.Options = [this.Options, '--certificate-subject-name', varargin{:}];
        end

        function this = cluster_name(this, varargin)
            % Specify the name of the cluster, if not given it will be same as resource group name.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
        end

        function this = cluster_size(this, varargin)
            % The number of nodes in the cluster. Default are 5 nodes.
            this.Options = [this.Options, '--cluster-size', varargin{:}];
        end

        function this = os(this, varargin)
            % The Operating System of the VMs that make up the cluster. Allowed values: UbuntuServer1604, WindowsServer1709, WindowsServer1709withContainers, WindowsServer1803withContainers, WindowsServer1809withContainers, WindowsServer2012R2Datacenter, WindowsServer2016Datacenter, WindowsServer2016DatacenterwithContainers, WindowsServer2019Datacenter, WindowsServer2019DatacenterwithContainers.  Default: WindowsServer2016Datacenter.
            this.Options = [this.Options, '--os', varargin{:}];
        end

        function this = parameter_file(this, varargin)
            % The path to the template parameter file.
            this.Options = [this.Options, '--parameter-file', varargin{:}];
        end

        function this = secret_identifier(this, varargin)
            % The existing Azure key vault secret URL.
            this.Options = [this.Options, '--secret-identifier', varargin{:}];
        end

        function this = template_file(this, varargin)
            % The path to the template file.
            this.Options = [this.Options, '--template-file', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Azure key vault name, it not given it will be the cluster resource group name.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

        function this = vault_resource_group(this, varargin)
            % Key vault resource group name, if not given it will be cluster resource group name.
            this.Options = [this.Options, '--vault-resource-group', varargin{:}];
        end

        function this = vm_password(this, varargin)
            % The password of the Vm.
            this.Options = [this.Options, '--vm-password', varargin{:}];
        end

        function this = vm_sku(this, varargin)
            % VM Sku.
            this.Options = [this.Options, '--vm-sku', varargin{:}];
        end

        function this = vm_user_name(this, varargin)
            % The user name for logging to Vm. Default will be adminuser.
            this.Options = [this.Options, '--vm-user-name', varargin{:}];
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
            fprintf('%s\n', '    az sf cluster create : Create a new Azure Service Fabric cluster.')
            fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l       [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --resource-group -g [Required] : Specify the resource group name. You can configure the default')
            fprintf('%s\n', '                                     group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --certificate-file             : The existing certificate file path for the primary cluster')
            fprintf('%s\n', '                                     certificate.')
            fprintf('%s\n', '    --certificate-output-folder    : The folder of the new certificate file to be created.')
            fprintf('%s\n', '    --certificate-password         : The password of the certificate file.')
            fprintf('%s\n', '    --certificate-subject-name     : The subject name of the certificate to be created.')
            fprintf('%s\n', '    --cluster-name -c              : Specify the name of the cluster, if not given it will be same')
            fprintf('%s\n', '                                     as resource group name.')
            fprintf('%s\n', '    --cluster-size -s              : The number of nodes in the cluster. Default are 5 nodes.')
            fprintf('%s\n', '    --os --vm-os                   : The Operating System of the VMs that make up the cluster.')
            fprintf('%s\n', '                                     Allowed values: UbuntuServer1604, WindowsServer1709,')
            fprintf('%s\n', '                                     WindowsServer1709withContainers,')
            fprintf('%s\n', '                                     WindowsServer1803withContainers,')
            fprintf('%s\n', '                                     WindowsServer1809withContainers, WindowsServer2012R2Datacenter,')
            fprintf('%s\n', '                                     WindowsServer2016Datacenter,')
            fprintf('%s\n', '                                     WindowsServer2016DatacenterwithContainers,')
            fprintf('%s\n', '                                     WindowsServer2019Datacenter,')
            fprintf('%s\n', '                                     WindowsServer2019DatacenterwithContainers.  Default:')
            fprintf('%s\n', '                                     WindowsServer2016Datacenter.')
            fprintf('%s\n', '    --parameter-file               : The path to the template parameter file.')
            fprintf('%s\n', '    --secret-identifier            : The existing Azure key vault secret URL.')
            fprintf('%s\n', '    --template-file                : The path to the template file.')
            fprintf('%s\n', '    --vault-name                   : Azure key vault name, it not given it will be the cluster')
            fprintf('%s\n', '                                     resource group name.')
            fprintf('%s\n', '    --vault-resource-group         : Key vault resource group name, if not given it will be cluster')
            fprintf('%s\n', '                                     resource group name.')
            fprintf('%s\n', '    --vm-password                  : The password of the Vm.')
            fprintf('%s\n', '    --vm-sku                       : VM Sku.')
            fprintf('%s\n', '    --vm-user-name                 : The user name for logging to Vm. Default will be adminuser.')
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
            fprintf('%s\n', '    Create a cluster with a given size and self-signed certificate that is downloaded locally.')
            fprintf('%s\n', '        az sf cluster create -g group-name -c cluster1 -l westus --cluster-size 4 --vm-password')
            fprintf('%s\n', '        Password#1234 --certificate-output-folder MyCertificates --certificate-subject-name cluster1')
            fprintf('%s\n', '    Use a keyvault certificate and custom template to deploy a cluster.')
            fprintf('%s\n', '        az sf cluster create -g group-name -c cluster1 -l westus --template-file template.json \')
            fprintf('%s\n', '            --parameter-file parameter.json --secret-identifier')
            fprintf('%s\n', '        https://{KeyVault}.vault.azure.net:443/secrets/{MyCertificate}')
            fprintf('%s\n', 'For more specific examples, use: az find "az sf cluster create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
