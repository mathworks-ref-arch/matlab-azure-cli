classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az dms create : Create an instance of the Data Migration Service.
            this.BaseCmd = 'az dms create ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the Service.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sku_name(this, varargin)
            % The name of the CPU SKU on which the service's Virtual Machine will run. Check the name and the availability of SKUs in your area with "az dms list-skus".
            this.Options = [this.Options, '--sku-name', varargin{:}];
        end

        function this = subnet(this, varargin)
            % The Resource ID of the VNet's Subnet you will use to connect the source and target DBs. Use "az network vnet subnet show -h" for help to get your subnet's ID.
            this.Options = [this.Options, '--subnet', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % A space-delimited list of tags in "tag1[=value1]" format.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az dms create : Create an instance of the Data Migration Service.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l       [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --name -n           [Required] : The name of the Service.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sku-name          [Required] : The name of the CPU SKU on which the service''s Virtual Machine')
            fprintf('%s\n', '                                     will run. Check the name and the availability of SKUs in your')
            fprintf('%s\n', '                                     area with "az dms list-skus".')
            fprintf('%s\n', '    --subnet            [Required] : The Resource ID of the VNet''s Subnet you will use to connect')
            fprintf('%s\n', '                                     the source and target DBs. Use "az network vnet subnet show -h"')
            fprintf('%s\n', '                                     for help to get your subnet''s ID.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                         : A space-delimited list of tags in "tag1[=value1]" format.')
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
            fprintf('%s\n', '    Create an instance of DMS.')
            fprintf('%s\n', '        az dms create -l westus -n mydms -g myresourcegroup --sku-name Basic_2vCores --subnet /subsc')
            fprintf('%s\n', '        riptions/{vnetSubscriptionId}/resourceGroups/{vnetResourceGroup}/providers/Microsoft.Network')
            fprintf('%s\n', '        /virtualNetworks/{vnetName}/subnets/{subnetName} --tags tagName1=tagValue1 tagWithNoValue')
            fprintf('%s\n', 'For more specific examples, use: az find "az dms create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
