classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql mi create : Create a managed instance.
            this.BaseCmd = 'az sql mi create ';
        end
        function this = admin_password(this, varargin)
            % The administrator login password (required for managed instance creation).
            this.Options = [this.Options, '--admin-password', varargin{:}];
        end

        function this = admin_user(this, varargin)
            % Administrator username for the managed instance. Can only be specified when the managed instance is being created (and is required for creation).
            this.Options = [this.Options, '--admin-user', varargin{:}];
        end

        function this = name(this, varargin)
            % The managed instance name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of the subnet that allows access to an Azure Sql Managed Instance. If subnet name is provided, --vnet-name must be provided.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = assign_identity(this, varargin)
            % Generate and assign an Azure Active Directory Identity for this managed instance for use with key management services like Azure KeyVault.
            this.Options = [this.Options, '--assign-identity', varargin{:}];
        end

        function this = collation(this, varargin)
            % The collation of the managed instance.
            this.Options = [this.Options, '--collation', varargin{:}];
        end

        function this = license_type(this, varargin)
            % The license type to apply for this managed instance.  Allowed values: BasePrice, LicenseIncluded.
            this.Options = [this.Options, '--license-type', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = minimal_tls_version(this, varargin)
            % The minimal TLS version enforced by the managed instance for inbound connections.  Allowed values: 1.0, 1.1, 1.2, None. Argument '--minimal-tls-version' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--minimal-tls-version', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = proxy_override(this, varargin)
            % The connection type used for connecting to the instance. Allowed values: Default, Proxy, Redirect.
            this.Options = [this.Options, '--proxy-override', varargin{:}];
        end

        function this = public_data_endpoint_enabled(this, varargin)
            % Whether or not the public data endpoint is enabled for the instance.  Allowed values: false, true.
            this.Options = [this.Options, '--public-data-endpoint-enabled', varargin{:}];
        end

        function this = storage(this, varargin)
            % The storage size of the managed instance. Storage size must be specified in increments of 32 GB.
            this.Options = [this.Options, '--storage', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = timezone_id(this, varargin)
            % The time zone id for the instance to set. A list of time zone ids is exposed through the sys.time_zone_info (Transact-SQL) view.
            this.Options = [this.Options, '--timezone-id', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network name. Performance Level (components) Arguments
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = capacity(this, varargin)
            % The capacity of the managed instance in integer number of vcores.
            this.Options = [this.Options, '--capacity', varargin{:}];
        end

        function this = edition(this, varargin)
            % The edition component of the sku. Allowed values include: GeneralPurpose, BusinessCritical.
            this.Options = [this.Options, '--edition', varargin{:}];
        end

        function this = family(this, varargin)
            % The compute generation component of the sku. Allowed values include: Gen4, Gen5.
            this.Options = [this.Options, '--family', varargin{:}];
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
            fprintf('%s\n', '    az sql mi create : Create a managed instance.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --admin-password -p  [Required] : The administrator login password (required for managed')
            fprintf('%s\n', '                                      instance creation).')
            fprintf('%s\n', '    --admin-user -u      [Required] : Administrator username for the managed instance. Can only be')
            fprintf('%s\n', '                                      specified when the managed instance is being created (and is')
            fprintf('%s\n', '                                      required for creation).')
            fprintf('%s\n', '    --name -n            [Required] : The managed instance name.')
            fprintf('%s\n', '    --resource-group -g  [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                      using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subnet             [Required] : Name or ID of the subnet that allows access to an Azure Sql')
            fprintf('%s\n', '                                      Managed Instance. If subnet name is provided, --vnet-name must')
            fprintf('%s\n', '                                      be provided.')
            fprintf('%s\n', '    --assign-identity -i            : Generate and assign an Azure Active Directory Identity for')
            fprintf('%s\n', '                                      this managed instance for use with key management services')
            fprintf('%s\n', '                                      like Azure KeyVault.')
            fprintf('%s\n', '    --collation                     : The collation of the managed instance.')
            fprintf('%s\n', '    --license-type                  : The license type to apply for this managed instance.  Allowed')
            fprintf('%s\n', '                                      values: BasePrice, LicenseIncluded.')
            fprintf('%s\n', '    --location -l                   : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                      configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                      location=<location>`.')
            fprintf('%s\n', '    --minimal-tls-version [Preview] : The minimal TLS version enforced by the managed')
            fprintf('%s\n', '                                      instance for inbound connections.  Allowed values: 1.0, 1.1,')
            fprintf('%s\n', '                                      1.2, None.')
            fprintf('%s\n', '        Argument ''--minimal-tls-version'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --no-wait                       : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --proxy-override                : The connection type used for connecting to the instance.')
            fprintf('%s\n', '                                      Allowed values: Default, Proxy, Redirect.')
            fprintf('%s\n', '    --public-data-endpoint-enabled  : Whether or not the public data endpoint is enabled for the')
            fprintf('%s\n', '                                      instance.  Allowed values: false, true.')
            fprintf('%s\n', '    --storage                       : The storage size of the managed instance. Storage size must be')
            fprintf('%s\n', '                                      specified in increments of 32 GB.')
            fprintf('%s\n', '    --tags                          : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                      clear existing tags.')
            fprintf('%s\n', '    --timezone-id                   : The time zone id for the instance to set. A list of time zone')
            fprintf('%s\n', '                                      ids is exposed through the sys.time_zone_info (Transact-SQL)')
            fprintf('%s\n', '                                      view.')
            fprintf('%s\n', '    --vnet-name                     : The virtual network name.')
            fprintf('%s\n', 'Performance Level (components) Arguments')
            fprintf('%s\n', '    --capacity -c                   : The capacity of the managed instance in integer number of')
            fprintf('%s\n', '                                      vcores.')
            fprintf('%s\n', '    --edition --tier -e             : The edition component of the sku. Allowed values include:')
            fprintf('%s\n', '                                      GeneralPurpose, BusinessCritical.')
            fprintf('%s\n', '    --family -f                     : The compute generation component of the sku. Allowed values')
            fprintf('%s\n', '                                      include: Gen4, Gen5.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                         : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                     : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                      yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                         : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                      information and examples.')
            fprintf('%s\n', '    --subscription                  : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                      subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                       : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a managed instance with minimal set of parameters')
            fprintf('%s\n', '        az sql mi create -g mygroup -n myinstance -l mylocation -i -u myusername -p mypassword')
            fprintf('%s\n', '        --subnet /subscriptions/{SubID}/resourceGroups/{ResourceGroup}/providers/Microsoft.Network/v')
            fprintf('%s\n', '        irtualNetworks/{VNETName}/subnets/{SubnetName}')
            fprintf('%s\n', '    Create a managed instance with specified parameters and with identity')
            fprintf('%s\n', '        az sql mi create -g mygroup -n myinstance -l mylocation -i -u myusername -p mypassword')
            fprintf('%s\n', '        --license-type LicenseIncluded --subnet /subscriptions/{SubID}/resourceGroups/{ResourceGroup')
            fprintf('%s\n', '        }/providers/Microsoft.Network/virtualNetworks/{VNETName}/subnets/{SubnetName} --capacity 8')
            fprintf('%s\n', '        --storage 32GB --edition GeneralPurpose --family Gen5')
            fprintf('%s\n', '    Create managed instance with specified parameters and tags')
            fprintf('%s\n', '        az sql mi create -g mygroup -n myinstance -l mylocation -i -u myusername -p mypassword')
            fprintf('%s\n', '        --license-type LicenseIncluded --subnet /subscriptions/{SubID}/resourceGroups/{ResourceGroup')
            fprintf('%s\n', '        }/providers/Microsoft.Network/virtualNetworks/{VNETName}/subnets/{SubnetName} --capacity 8')
            fprintf('%s\n', '        --storage 32GB --edition GeneralPurpose --family Gen5 --tags tagName1=tagValue1')
            fprintf('%s\n', '        tagName2=tagValue2')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql mi create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
