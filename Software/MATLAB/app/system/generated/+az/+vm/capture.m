classdef capture < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = capture()
            % az vm capture : Capture information for a stopped VM.
            % For an end-to-end tutorial, see https://docs.microsoft.com/azure/virtual-machines/virtual-
            % machines-linux-capture-image.
            this.BaseCmd = 'az vm capture ';
        end
        function this = vhd_name_prefix(this, varargin)
            % The VHD name prefix specify for the VM disks.
            this.Options = [this.Options, '--vhd-name-prefix', varargin{:}];
        end

        function this = overwrite(this, varargin)
            % Overwrite the existing disk file.  Default: 1.
            this.Options = [this.Options, '--overwrite', varargin{:}];
        end

        function this = storage_container(this, varargin)
            % The storage account container name in which to save the disks. Default: vhds.
            this.Options = [this.Options, '--storage-container', varargin{:}];
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
            % The name of the Virtual Machine. You can configure the default using `az configure --defaults vm=<name>`.
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
            fprintf('%s\n', '    az vm capture : Capture information for a stopped VM.')
            fprintf('%s\n', '        For an end-to-end tutorial, see https://docs.microsoft.com/azure/virtual-machines/virtual-')
            fprintf('%s\n', '        machines-linux-capture-image.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --vhd-name-prefix [Required] : The VHD name prefix specify for the VM disks.')
            fprintf('%s\n', '    --overwrite                  : Overwrite the existing disk file.  Default: 1.')
            fprintf('%s\n', '    --storage-container          : The storage account container name in which to save the disks.')
            fprintf('%s\n', '                                   Default: vhds.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                        : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                   complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                   arguments. You should provide either --ids or other ''Resource Id''')
            fprintf('%s\n', '                                   arguments.')
            fprintf('%s\n', '    --name -n                    : The name of the Virtual Machine. You can configure the default')
            fprintf('%s\n', '                                   using `az configure --defaults vm=<name>`.')
            fprintf('%s\n', '    --resource-group -g          : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                   `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Deallocate, generalize, and capture a stopped virtual machine.')
            fprintf('%s\n', '        az vm deallocate -g MyResourceGroup -n MyVm')
            fprintf('%s\n', '        az vm generalize -g MyResourceGroup -n MyVm')
            fprintf('%s\n', '        az vm capture -g MyResourceGroup -n MyVm --vhd-name-prefix MyPrefix')
            fprintf('%s\n', '    Deallocate, generalize, and capture multiple stopped virtual machines.')
            fprintf('%s\n', '        vms_ids=$(az vm list -g MyResourceGroup --query "[].id" -o tsv)')
            fprintf('%s\n', '        az vm deallocate --ids {vms_ids}')
            fprintf('%s\n', '        az vm generalize --ids {vms_ids}')
            fprintf('%s\n', '        az vm capture --ids {vms_ids} --vhd-name-prefix MyPrefix')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm capture"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class capture 
