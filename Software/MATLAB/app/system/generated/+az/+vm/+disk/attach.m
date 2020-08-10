classdef attach < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = attach()
            % az vm disk attach : Attach a managed persistent disk to a VM.
            % This allows for the preservation of data, even if the VM is reprovisioned due to maintenance
            % or resizing.
            this.BaseCmd = 'az vm disk attach ';
        end
        function this = vm_name(this, varargin)
            % The name of the Virtual Machine. You can configure the default using `az configure --defaults vm=<name>`.
            this.Options = [this.Options, '--vm-name', varargin{:}];
        end

        function this = caching(this, varargin)
            % Disk caching policy.  Allowed values: None, ReadOnly, ReadWrite.
            this.Options = [this.Options, '--caching', varargin{:}];
        end

        function this = enable_write_accelerator(this, varargin)
            % Enable write accelerator.
            this.Options = [this.Options, '--enable-write-accelerator', varargin{:}];
        end

        function this = lun(this, varargin)
            % 0-based logical unit number (LUN). Max value depends on the Virtual Machine size.
            this.Options = [this.Options, '--lun', varargin{:}];
        end

        function this = new(this, varargin)
            % Create a new disk.
            this.Options = [this.Options, '--new', varargin{:}];
        end

        function this = size_gb(this, varargin)
            % Size in GB. Max size: 4095 GB (certain preview disks can be larger).  Default: 1023.
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

        function this = name(this, varargin)
            % The name or ID of the managed disk.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az vm disk attach : Attach a managed persistent disk to a VM.')
            fprintf('%s\n', '        This allows for the preservation of data, even if the VM is reprovisioned due to maintenance')
            fprintf('%s\n', '        or resizing.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --vm-name       [Required] : The name of the Virtual Machine. You can configure the default')
            fprintf('%s\n', '                                 using `az configure --defaults vm=<name>`.')
            fprintf('%s\n', '    --caching                  : Disk caching policy.  Allowed values: None, ReadOnly, ReadWrite.')
            fprintf('%s\n', '    --enable-write-accelerator : Enable write accelerator.')
            fprintf('%s\n', '    --lun                      : 0-based logical unit number (LUN). Max value depends on the Virtual')
            fprintf('%s\n', '                                 Machine size.')
            fprintf('%s\n', '    --new                      : Create a new disk.')
            fprintf('%s\n', '    --size-gb -z               : Size in GB. Max size: 4095 GB (certain preview disks can be')
            fprintf('%s\n', '                                 larger).  Default: 1023.')
            fprintf('%s\n', '    --sku                      : Underlying storage SKU.  Allowed values: Premium_LRS,')
            fprintf('%s\n', '                                 StandardSSD_LRS, Standard_LRS, UltraSSD_LRS.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                      : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                 resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                 You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                  : The name or ID of the managed disk.')
            fprintf('%s\n', '    --resource-group -g        : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                 `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Attach a new default sized (1023 GB) managed data disk to a VM.')
            fprintf('%s\n', '        az vm disk attach -g MyResourceGroup --vm-name MyVm --name disk_name --new')
            fprintf('%s\n', '    Attach a managed persistent disk to a VM. (autogenerated)')
            fprintf('%s\n', '        az vm disk attach --disk $diskId --new --resource-group MyResourceGroup --size-gb 128 --sku')
            fprintf('%s\n', '        Standard_LRS --vm-name MyVm')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm disk attach"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class attach 
