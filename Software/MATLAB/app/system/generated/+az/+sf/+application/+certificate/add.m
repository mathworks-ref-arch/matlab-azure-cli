classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az sf application certificate add : Add a new certificate to the Virtual Machine Scale Sets that
            % make up the cluster to be used by hosted applications.
            % Command group 'sf' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az sf application certificate add ';
        end
        function this = cluster_name(this, varargin)
            % Specify the name of the cluster, if not given it will be same as resource group name.
            this.Options = [this.Options, '--cluster-name', varargin{:}];
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

        function this = secret_identifier(this, varargin)
            % The existing Azure key vault secret URL.
            this.Options = [this.Options, '--secret-identifier', varargin{:}];
        end

        function this = vault_name(this, varargin)
            % Azure key vault name, it not given it will be the cluster resource group name.
            this.Options = [this.Options, '--vault-name', varargin{:}];
        end

        function this = vault_resource_group(this, varargin)
            % Key vault resource group name, if not given it will be cluster resource group name.
            this.Options = [this.Options, '--vault-resource-group', varargin{:}];
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
            fprintf('%s\n', '    az sf application certificate add : Add a new certificate to the Virtual Machine Scale Sets that')
            fprintf('%s\n', '    make up the cluster to be used by hosted applications.')
            fprintf('%s\n', '        Command group ''sf'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --cluster-name -c   [Required] : Specify the name of the cluster, if not given it will be same')
            fprintf('%s\n', '                                     as resource group name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Specify the resource group name. You can configure the default')
            fprintf('%s\n', '                                     group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --certificate-file             : The existing certificate file path for the primary cluster')
            fprintf('%s\n', '                                     certificate.')
            fprintf('%s\n', '    --certificate-output-folder    : The folder of the new certificate file to be created.')
            fprintf('%s\n', '    --certificate-password         : The password of the certificate file.')
            fprintf('%s\n', '    --certificate-subject-name     : The subject name of the certificate to be created.')
            fprintf('%s\n', '    --secret-identifier            : The existing Azure key vault secret URL.')
            fprintf('%s\n', '    --vault-name                   : Azure key vault name, it not given it will be the cluster')
            fprintf('%s\n', '                                     resource group name.')
            fprintf('%s\n', '    --vault-resource-group         : Key vault resource group name, if not given it will be cluster')
            fprintf('%s\n', '                                     resource group name.')
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
            fprintf('%s\n', '    Add an application certificate.')
            fprintf('%s\n', '        az sf application certificate add -g group-name -c cluster1  --secret-identifier')
            fprintf('%s\n', '        ''https://{KeyVault}.vault.azure.net/secrets/{Secret}''')
            fprintf('%s\n', 'For more specific examples, use: az find "az sf application certificate add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
