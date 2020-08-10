classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az lab custom-image create : Create a custom image in a DevTest Lab.
            % Command group 'lab' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az lab custom-image create ';
        end
        function this = lab_name(this, varargin)
            % Name of the Lab.
            this.Options = [this.Options, '--lab-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the image.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = os_state(this, varargin)
            % The current state of the virtual machine. For Windows virtual machines: NonSysprepped, SysprepRequested, SysprepApplied For Linux virtual machines: NonDeprovisioned, DeprovisionRequested, DeprovisionApplied.
            this.Options = [this.Options, '--os-state', varargin{:}];
        end

        function this = os_type(this, varargin)
            % Type of the OS on which the custom image is based. Allowed values are: Windows, Linux.
            this.Options = [this.Options, '--os-type', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = source_vm_id(this, varargin)
            % The resource ID of a virtual machine in the provided lab.
            this.Options = [this.Options, '--source-vm-id', varargin{:}];
        end

        function this = author(this, varargin)
            % The author of the custom image.
            this.Options = [this.Options, '--author', varargin{:}];
        end

        function this = description(this, varargin)
            % A detailed description for the custom image.
            this.Options = [this.Options, '--description', varargin{:}];
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
            fprintf('%s\n', '    az lab custom-image create : Create a custom image in a DevTest Lab.')
            fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --lab-name          [Required] : Name of the Lab.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the image.')
            fprintf('%s\n', '    --os-state          [Required] : The current state of the virtual machine.')
            fprintf('%s\n', '        For Windows virtual machines: NonSysprepped, SysprepRequested, SysprepApplied For Linux')
            fprintf('%s\n', '        virtual machines: NonDeprovisioned, DeprovisionRequested, DeprovisionApplied.')
            fprintf('%s\n', '    --os-type           [Required] : Type of the OS on which the custom image is based. Allowed')
            fprintf('%s\n', '                                     values are: Windows, Linux.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --source-vm-id      [Required] : The resource ID of a virtual machine in the provided lab.')
            fprintf('%s\n', '    --author                       : The author of the custom image.')
            fprintf('%s\n', '    --description                  : A detailed description for the custom image.')
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
            fprintf('%s\n', '    Create a custom image in the lab from a running Windows virtual machine without applying')
            fprintf('%s\n', '    sysprep.')
            fprintf('%s\n', '        az lab custom-image create --lab-name {LabName} -g {ResourceGroup} --name {VMName} \')
            fprintf('%s\n', '            --os-type Windows --os-state NonSysprepped \')
            fprintf('%s\n', '            --source-vm-id "/subscriptions/{SubID}/resourcegroups/{ResourceGroup}/microsoft.devtestl')
            fprintf('%s\n', '        ab/labs/{LabName}/virtualmachines/{VMName}"')
            fprintf('%s\n', 'For more specific examples, use: az find "az lab custom-image create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
