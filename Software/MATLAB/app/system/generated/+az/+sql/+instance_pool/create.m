classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sql instance-pool create : Create an instance pool.
            % Command group 'sql instance-pool' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az sql instance-pool create ';
        end
        function this = license_type(this, varargin)
            % The license type to apply for this instance pool.  Allowed values: BasePrice, LicenseIncluded.
            this.Options = [this.Options, '--license-type', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Instance Pool Name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subnet(this, varargin)
            % Name or ID of the subnet that allows access to an Instance Pool. If subnet name is provided, --vnet-name must be provided.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = vnet_name(this, varargin)
            % The virtual network name. Performance Level (components) Arguments
            this.Options = [this.Options, '--vnet-name', varargin{:}];
        end

        function this = capacity(this, varargin)
            % Capacity of the instance pool in vcores.
            this.Options = [this.Options, '--capacity', varargin{:}];
        end

        function this = edition(this, varargin)
            % The edition component of the sku. Allowed value: GeneralPurpose.
            this.Options = [this.Options, '--edition', varargin{:}];
        end

        function this = family(this, varargin)
            % The compute generation component of the sku. Allowed value: Gen5.
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
            fprintf('%s\n', '    az sql instance-pool create : Create an instance pool.')
            fprintf('%s\n', '        Command group ''sql instance-pool'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --license-type      [Required] : The license type to apply for this instance pool.  Allowed')
            fprintf('%s\n', '                                     values: BasePrice, LicenseIncluded.')
            fprintf('%s\n', '    --location -l       [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --name -n           [Required] : Instance Pool Name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subnet            [Required] : Name or ID of the subnet that allows access to an Instance')
            fprintf('%s\n', '                                     Pool. If subnet name is provided, --vnet-name must be provided.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --vnet-name                    : The virtual network name.')
            fprintf('%s\n', 'Performance Level (components) Arguments')
            fprintf('%s\n', '    --capacity -c       [Required] : Capacity of the instance pool in vcores.')
            fprintf('%s\n', '    --edition --tier -e [Required] : The edition component of the sku. Allowed value:')
            fprintf('%s\n', '                                     GeneralPurpose.')
            fprintf('%s\n', '    --family -f         [Required] : The compute generation component of the sku. Allowed value:')
            fprintf('%s\n', '                                     Gen5.')
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
            fprintf('%s\n', '    Example to create an instance pool (include --no-wait in the end to get an asynchronous')
            fprintf('%s\n', '    experience)')
            fprintf('%s\n', '        az sql instance-pool create -g resource_group_name -n instance_pool_name -l location')
            fprintf('%s\n', '        --subnet /subscriptions/{SubID}/resourceGroups/{ResourceGroup}/providers/Microsoft.Network/v')
            fprintf('%s\n', '        irtualNetworks/{VNETName}/subnets/{SubnetName} --license-type LicenseIncluded --capacity 8')
            fprintf('%s\n', '        -e GeneralPurpose -f Gen5 --no-wait')
            fprintf('%s\n', '    Example to create an instance pool with subnet name and vnet-name')
            fprintf('%s\n', '        az sql instance-pool create --license-type LicenseIncluded -l northcentralus -n')
            fprintf('%s\n', '        myinstancepool -c 8 -e GeneralPurpose -f Gen5 -g billingPools --subnet mysubnetname --vnet-')
            fprintf('%s\n', '        name myvnetname')
            fprintf('%s\n', 'For more specific examples, use: az find "az sql instance-pool create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
