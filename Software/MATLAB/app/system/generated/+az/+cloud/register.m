classdef register < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = register()
            % az cloud register : Register a cloud.
            % When registering a cloud, specify only the resource manager endpoint for the autodetection
            % of other endpoints.
            this.BaseCmd = 'az cloud register ';
        end
        function this = name(this, varargin)
            % Name of a registered cloud.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = cloud_config(this, varargin)
            % JSON encoded cloud configuration. Use @{file} to load from a file.
            this.Options = [this.Options, '--cloud-config', varargin{:}];
        end

        function this = endpoint_active_directory(this, varargin)
            % The Active Directory login endpoint.
            this.Options = [this.Options, '--endpoint-active-directory', varargin{:}];
        end

        function this = endpoint_active_directory_data_lake_resource_id(this, varargin)
            % The Active Directory resource ID for data lake services.
            this.Options = [this.Options, '--endpoint-active-directory-data-lake-resource-id', varargin{:}];
        end

        function this = endpoint_active_directory_graph_resource_id(this, varargin)
            % The Active Directory resource ID.
            this.Options = [this.Options, '--endpoint-active-directory-graph-resource-id', varargin{:}];
        end

        function this = endpoint_active_directory_resource_id(this, varargin)
            % The resource ID to obtain AD tokens for.
            this.Options = [this.Options, '--endpoint-active-directory-resource-id', varargin{:}];
        end

        function this = endpoint_gallery(this, varargin)
            % The template gallery endpoint.
            this.Options = [this.Options, '--endpoint-gallery', varargin{:}];
        end

        function this = endpoint_management(this, varargin)
            % The management service endpoint.
            this.Options = [this.Options, '--endpoint-management', varargin{:}];
        end

        function this = endpoint_resource_manager(this, varargin)
            % The resource management endpoint.
            this.Options = [this.Options, '--endpoint-resource-manager', varargin{:}];
        end

        function this = endpoint_sql_management(this, varargin)
            % The sql server management endpoint.
            this.Options = [this.Options, '--endpoint-sql-management', varargin{:}];
        end

        function this = endpoint_vm_image_alias_doc(this, varargin)
            % The uri of the document which caches commonly used virtual machine images.
            this.Options = [this.Options, '--endpoint-vm-image-alias-doc', varargin{:}];
        end

        function this = profile(this, varargin)
            % Profile to use for this cloud. Allowed values: 2017-03-09-profile, 2018-03-01-hybrid, 2019-03-01-hybrid, latest.
            this.Options = [this.Options, '--profile', varargin{:}];
        end

        function this = suffix_acr_login_server_endpoint(this, varargin)
            % The Azure Container Registry login server suffix.
            this.Options = [this.Options, '--suffix-acr-login-server-endpoint', varargin{:}];
        end

        function this = suffix_azure_datalake_analytics_catalog_and_job_endpoint(this, varargin)
            % The Data Lake analytics job and catalog service dns suffix.
            this.Options = [this.Options, '--suffix-azure-datalake-analytics-catalog-and-job-endpoint', varargin{:}];
        end

        function this = suffix_azure_datalake_store_file_system_endpoint(this, varargin)
            % The Data Lake store filesystem service dns suffix.
            this.Options = [this.Options, '--suffix-azure-datalake-store-file-system-endpoint', varargin{:}];
        end

        function this = suffix_keyvault_dns(this, varargin)
            % The Key Vault service dns suffix.
            this.Options = [this.Options, '--suffix-keyvault-dns', varargin{:}];
        end

        function this = suffix_sql_server_hostname(this, varargin)
            % The dns suffix for sql servers.
            this.Options = [this.Options, '--suffix-sql-server-hostname', varargin{:}];
        end

        function this = suffix_storage_endpoint(this, varargin)
            % The endpoint suffix for storage accounts.
            this.Options = [this.Options, '--suffix-storage-endpoint', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az cloud register"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az cloud register : Register a cloud.')
            fprintf('%s\n', '        When registering a cloud, specify only the resource manager endpoint for the autodetection')
            fprintf('%s\n', '        of other endpoints.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n                                       [Required] : Name of a registered cloud.')
            fprintf('%s\n', '    --cloud-config                                             : JSON encoded cloud configuration.')
            fprintf('%s\n', '                                                                 Use @{file} to load from a file.')
            fprintf('%s\n', '    --endpoint-active-directory                                : The Active Directory login')
            fprintf('%s\n', '                                                                 endpoint.')
            fprintf('%s\n', '    --endpoint-active-directory-data-lake-resource-id          : The Active Directory resource ID')
            fprintf('%s\n', '                                                                 for data lake services.')
            fprintf('%s\n', '    --endpoint-active-directory-graph-resource-id              : The Active Directory resource ID.')
            fprintf('%s\n', '    --endpoint-active-directory-resource-id                    : The resource ID to obtain AD tokens')
            fprintf('%s\n', '                                                                 for.')
            fprintf('%s\n', '    --endpoint-gallery                                         : The template gallery endpoint.')
            fprintf('%s\n', '    --endpoint-management                                      : The management service endpoint.')
            fprintf('%s\n', '    --endpoint-resource-manager                                : The resource management endpoint.')
            fprintf('%s\n', '    --endpoint-sql-management                                  : The sql server management endpoint.')
            fprintf('%s\n', '    --endpoint-vm-image-alias-doc                              : The uri of the document which')
            fprintf('%s\n', '                                                                 caches commonly used virtual')
            fprintf('%s\n', '                                                                 machine images.')
            fprintf('%s\n', '    --profile                                                  : Profile to use for this cloud.')
            fprintf('%s\n', '                                                                 Allowed values: 2017-03-09-profile,')
            fprintf('%s\n', '                                                                 2018-03-01-hybrid,')
            fprintf('%s\n', '                                                                 2019-03-01-hybrid, latest.')
            fprintf('%s\n', '    --suffix-acr-login-server-endpoint                         : The Azure Container Registry login')
            fprintf('%s\n', '                                                                 server suffix.')
            fprintf('%s\n', '    --suffix-azure-datalake-analytics-catalog-and-job-endpoint : The Data Lake analytics job and')
            fprintf('%s\n', '                                                                 catalog service dns suffix.')
            fprintf('%s\n', '    --suffix-azure-datalake-store-file-system-endpoint         : The Data Lake store filesystem')
            fprintf('%s\n', '                                                                 service dns suffix.')
            fprintf('%s\n', '    --suffix-keyvault-dns                                      : The Key Vault service dns suffix.')
            fprintf('%s\n', '    --suffix-sql-server-hostname                               : The dns suffix for sql servers.')
            fprintf('%s\n', '    --suffix-storage-endpoint                                  : The endpoint suffix for storage')
            fprintf('%s\n', '                                                                 accounts.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                                    : Increase logging verbosity to show')
            fprintf('%s\n', '                                                                 all debug logs.')
            fprintf('%s\n', '    --help -h                                                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                                         : Only show errors, suppressing')
            fprintf('%s\n', '                                                                 warnings.')
            fprintf('%s\n', '    --output -o                                                : Output format.  Allowed values:')
            fprintf('%s\n', '                                                                 json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                                    : JMESPath query string. See')
            fprintf('%s\n', '                                                                 http://jmespath.org/ for more')
            fprintf('%s\n', '                                                                 information and examples.')
            fprintf('%s\n', '    --verbose                                                  : Increase logging verbosity. Use')
            fprintf('%s\n', '                                                                 --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az cloud register"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class register 
