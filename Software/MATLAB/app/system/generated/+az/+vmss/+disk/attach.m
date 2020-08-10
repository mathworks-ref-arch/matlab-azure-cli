classdef attach < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = attach()
            % az vmss disk attach : Attach managed data disks to a scale set or its instances.
            this.BaseCmd = 'az vmss disk attach ';
        end
        function this = caching(this, varargin)
            % Disk caching policy.  Allowed values: None, ReadOnly, ReadWrite.
            this.Options = [this.Options, '--caching', varargin{:}];
        end

        function this = disk(this, varargin)
            % Existing disk name or ID to attach or detach from VM instances.
            this.Options = [this.Options, '--disk', varargin{:}];
        end

        function this = lun(this, varargin)
            % 0-based logical unit number (LUN). Max value depends on the Virtual Machine instance size.
            this.Options = [this.Options, '--lun', varargin{:}];
        end

        function this = size_gb(this, varargin)
            % Size in GB. Max size: 4095 GB (certain preview disks can be larger).
            this.Options = [this.Options, '--size-gb', varargin{:}];
        end

        function this = sku(this, varargin)
            % Underlying storage SKU.  Allowed values: Premium_LRS, StandardSSD_LRS, Standard_LRS, UltraSSD_LRS.
            this.Options = [this.Options, '--sku', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = instance_id(this, varargin)
            % Scale set VM instance id.
            this.Options = [this.Options, '--instance-id', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = vmss_name(this, varargin)
            % Scale set name. You can configure the default using `az configure --defaults vmss=<name>`.
            this.Options = [this.Options, '--vmss-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az vmss disk attach : Attach managed data disks to a scale set or its instances.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --caching           : Disk caching policy.  Allowed values: None, ReadOnly, ReadWrite.')
            fprintf('%s\n', '    --disk              : Existing disk name or ID to attach or detach from VM instances.')
            fprintf('%s\n', '    --lun               : 0-based logical unit number (LUN). Max value depends on the Virtual')
            fprintf('%s\n', '                          Machine instance size.')
            fprintf('%s\n', '    --size-gb -z        : Size in GB. Max size: 4095 GB (certain preview disks can be larger).')
            fprintf('%s\n', '    --sku               : Underlying storage SKU.  Allowed values: Premium_LRS, StandardSSD_LRS,')
            fprintf('%s\n', '                          Standard_LRS, UltraSSD_LRS.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --instance-id       : Scale set VM instance id.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vmss-name         : Scale set name. You can configure the default using `az configure')
            fprintf('%s\n', '                          --defaults vmss=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Attach managed data disks to a scale set or its instances. (autogenerated)')
            fprintf('%s\n', '        az vmss disk attach --disk {disk} --instance-id 0 --resource-group MyResourceGroup')
            fprintf('%s\n', '    Attach managed data disks of a given size to a scale set or its instances. (autogenerated)')
            fprintf('%s\n', '        az vmss disk attach --vmss-name MyVmss --resource-group MyResourceGroup --size-gb 50')
            fprintf('%s\n', 'For more specific examples, use: az find "az vmss disk attach"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class attach 
