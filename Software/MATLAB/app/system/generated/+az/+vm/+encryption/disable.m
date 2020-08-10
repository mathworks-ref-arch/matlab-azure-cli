classdef disable < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = disable()
            % az vm encryption disable : Disable disk encryption on the OS disk and/or data disks. Decrypt
            % mounted disks.
            % For Linux VMs, disabling encryption is only permitted on data volumes.
            % For Windows VMS, disabling encryption is permitted on both OS and data volumes.
            this.BaseCmd = 'az vm encryption disable ';
        end
        function this = force(this, varargin)
            % Continue by ignoring client side validation errors.
            this.Options = [this.Options, '--force', varargin{:}];
        end

        function this = volume_type(this, varargin)
            % Type of volume that the encryption operation is performed on.  Allowed values: ALL, DATA, OS.
            this.Options = [this.Options, '--volume-type', varargin{:}];
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
            fprintf('%s\n', '    az vm encryption disable : Disable disk encryption on the OS disk and/or data disks. Decrypt')
            fprintf('%s\n', '    mounted disks.')
            fprintf('%s\n', '        For Linux VMs, disabling encryption is only permitted on data volumes.')
            fprintf('%s\n', '        For Windows VMS, disabling encryption is permitted on both OS and data volumes.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --force             : Continue by ignoring client side validation errors.')
            fprintf('%s\n', '    --volume-type       : Type of volume that the encryption operation is performed on.  Allowed')
            fprintf('%s\n', '                          values: ALL, DATA, OS.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : The name of the Virtual Machine. You can configure the default using `az')
            fprintf('%s\n', '                          configure --defaults vm=<name>`.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
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
            fprintf('%s\n', '    Disable disk encryption on the OS disk and/or data disks. (autogenerated)')
            fprintf('%s\n', '        az vm encryption disable --name MyVirtualMachine --resource-group MyResourceGroup --volume-')
            fprintf('%s\n', '        type DATA')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm encryption disable"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class disable 
