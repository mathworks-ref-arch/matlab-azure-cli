classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az image create : Create a custom Virtual Machine Image from managed disks or snapshots.
            this.BaseCmd = 'az image create ';
        end
        function this = name(this, varargin)
            % New image name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = source(this, varargin)
            % OS disk source from the same region, including a virtual machine ID or name, OS disk blob URI, managed OS disk ID or name, or OS snapshot ID or name.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = data_disk_caching(this, varargin)
            % Storage caching type for the image's data disk.  Allowed values: None, ReadOnly, ReadWrite.
            this.Options = [this.Options, '--data-disk-caching', varargin{:}];
        end

        function this = data_disk_sources(this, varargin)
            % Space-separated list of data disk sources, including unmanaged blob URI, managed disk ID or name, or snapshot ID or name.
            this.Options = [this.Options, '--data-disk-sources', varargin{:}];
        end

        function this = hyper_v_generation(this, varargin)
            % The hypervisor generation of the Virtual Machine created from the image.  Allowed values: V1, V2.  Default: V1.
            this.Options = [this.Options, '--hyper-v-generation', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = os_disk_caching(this, varargin)
            % Storage caching type for the image's OS disk.  Allowed values: None, ReadOnly, ReadWrite.
            this.Options = [this.Options, '--os-disk-caching', varargin{:}];
        end

        function this = os_type(this, varargin)
            % Allowed values: Linux, Windows.
            this.Options = [this.Options, '--os-type', varargin{:}];
        end

        function this = storage_sku(this, varargin)
            % The SKU of the storage account with which to create the VM image. Unused if source VM is specified.  Allowed values: Premium_LRS, StandardSSD_LRS, Standard_LRS, UltraSSD_LRS.
            this.Options = [this.Options, '--storage-sku', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = zone_resilient(this, varargin)
            % Specifies whether an image is zone resilient or not. Default is false. Zone resilient images can be created only in regions that provide Zone Redundant Storage.  Allowed values: false, true.
            this.Options = [this.Options, '--zone-resilient', varargin{:}];
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
            fprintf('%s\n', '    az image create : Create a custom Virtual Machine Image from managed disks or snapshots.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : New image name.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --source            [Required] : OS disk source from the same region, including a virtual')
            fprintf('%s\n', '                                     machine ID or name, OS disk blob URI, managed OS disk ID or')
            fprintf('%s\n', '                                     name, or OS snapshot ID or name.')
            fprintf('%s\n', '    --data-disk-caching            : Storage caching type for the image''s data disk.  Allowed')
            fprintf('%s\n', '                                     values: None, ReadOnly, ReadWrite.')
            fprintf('%s\n', '    --data-disk-sources            : Space-separated list of data disk sources, including unmanaged')
            fprintf('%s\n', '                                     blob URI, managed disk ID or name, or snapshot ID or name.')
            fprintf('%s\n', '    --hyper-v-generation           : The hypervisor generation of the Virtual Machine created from')
            fprintf('%s\n', '                                     the image.  Allowed values: V1, V2.  Default: V1.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --os-disk-caching              : Storage caching type for the image''s OS disk.  Allowed values:')
            fprintf('%s\n', '                                     None, ReadOnly, ReadWrite.')
            fprintf('%s\n', '    --os-type                      : Allowed values: Linux, Windows.')
            fprintf('%s\n', '    --storage-sku                  : The SKU of the storage account with which to create the VM')
            fprintf('%s\n', '                                     image. Unused if source VM is specified.  Allowed values:')
            fprintf('%s\n', '                                     Premium_LRS, StandardSSD_LRS, Standard_LRS, UltraSSD_LRS.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --zone-resilient               : Specifies whether an image is zone resilient or not. Default is')
            fprintf('%s\n', '                                     false. Zone resilient images can be created only in regions')
            fprintf('%s\n', '                                     that provide Zone Redundant Storage.  Allowed values: false,')
            fprintf('%s\n', '                                     true.')
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
            fprintf('%s\n', '    Create an image from an existing disk.')
            fprintf('%s\n', '        az image create -g MyResourceGroup -n image1 --os-type Linux \')
            fprintf('%s\n', '            --source /subscriptions/db5eb68e-73e2-4fa8-b18a-0123456789999/resourceGroups/rg1/provide')
            fprintf('%s\n', '        rs/Microsoft.Compute/snapshots/s1')
            fprintf('%s\n', '    Create an image by capturing an existing generalized virtual machine in the same resource group.')
            fprintf('%s\n', '        az image create -g MyResourceGroup -n image1 --source MyVm1')
            fprintf('%s\n', 'For more specific examples, use: az find "az image create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
