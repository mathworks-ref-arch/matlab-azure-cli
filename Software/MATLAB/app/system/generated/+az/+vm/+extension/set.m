classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az vm extension set : Set extensions for a VM.
            % Get extension details from `az vm extension image list`.
            this.BaseCmd = 'az vm extension set ';
        end
        function this = name(this, varargin)
            % Name of the extension.  Values from: az vm extension image list.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = publisher(this, varargin)
            % The name of the extension publisher.
            this.Options = [this.Options, '--publisher', varargin{:}];
        end

        function this = extension_instance_name(this, varargin)
            % Name of extension instance, which can be customized. Default: name of the extension.
            this.Options = [this.Options, '--extension-instance-name', varargin{:}];
        end

        function this = force_update(this, varargin)
            % Force to update even if the extension configuration has not changed.
            this.Options = [this.Options, '--force-update', varargin{:}];
        end

        function this = no_auto_upgrade(this, varargin)
            % If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed. Allowed values: false, true.
            this.Options = [this.Options, '--no-auto-upgrade', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = protected_settings(this, varargin)
            % Protected settings in JSON format for sensitive information like credentials. A JSON file path is also accepted.
            this.Options = [this.Options, '--protected-settings', varargin{:}];
        end

        function this = settings(this, varargin)
            % Extension settings in JSON format. A JSON file path is also accepted.
            this.Options = [this.Options, '--settings', varargin{:}];
        end

        function this = version(this, varargin)
            % The version of the extension. To pin extension version to this value, please specify --no-auto-upgrade.
            this.Options = [this.Options, '--version', varargin{:}];
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

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = vm_name(this, varargin)
            % The name of the Virtual Machine. You can configure the default using `az configure --defaults vm=<name>`.
            this.Options = [this.Options, '--vm-name', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az vm extension set : Set extensions for a VM.')
            fprintf('%s\n', '        Get extension details from `az vm extension image list`.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n      [Required] : Name of the extension.  Values from: az vm extension image list.')
            fprintf('%s\n', '    --publisher    [Required] : The name of the extension publisher.')
            fprintf('%s\n', '    --extension-instance-name : Name of extension instance, which can be customized. Default: name')
            fprintf('%s\n', '                                of the extension.')
            fprintf('%s\n', '    --force-update            : Force to update even if the extension configuration has not changed.')
            fprintf('%s\n', '    --no-auto-upgrade         : If set, the extension service will not automatically pick or upgrade')
            fprintf('%s\n', '                                to the latest minor version, even if the extension is redeployed.')
            fprintf('%s\n', '                                Allowed values: false, true.')
            fprintf('%s\n', '    --no-wait                 : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --protected-settings      : Protected settings in JSON format for sensitive information like')
            fprintf('%s\n', '                                credentials. A JSON file path is also accepted.')
            fprintf('%s\n', '    --settings                : Extension settings in JSON format. A JSON file path is also')
            fprintf('%s\n', '                                accepted.')
            fprintf('%s\n', '    --version                 : The version of the extension. To pin extension version to this')
            fprintf('%s\n', '                                value, please specify --no-auto-upgrade.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                     : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                                resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --resource-group -g       : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --vm-name                 : The name of the Virtual Machine. You can configure the default using')
            fprintf('%s\n', '                                `az configure --defaults vm=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add a user account to a Linux VM.')
            fprintf('%s\n', '        az vm extension set -n VMAccessForLinux --publisher Microsoft.OSTCExtensions --version 1.4 \')
            fprintf('%s\n', '            --vm-name MyVm --resource-group MyResourceGroup \')
            fprintf('%s\n', '            --protected-settings ''{"username":"user1", "ssh_key":"ssh_rsa ..."}''')
            fprintf('%s\n', '    Add a customScript extension to VM(s) specified by --ids.')
            fprintf('%s\n', '        az vm extension set -n customScript --publisher Microsoft.Azure.Extensions --ids {vm_id}')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm extension set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
