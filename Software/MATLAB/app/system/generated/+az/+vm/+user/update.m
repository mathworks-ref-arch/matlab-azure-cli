classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az vm user update : Update a user account.
            % This command uses VMAccessForLinux 1.5 for Linux operating system and VMAccessAgent 2.4 for
            % Window operating system.
            this.BaseCmd = 'az vm user update ';
        end
        function this = username(this, varargin)
            % The user name.
            this.Options = [this.Options, '--username', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = password(this, varargin)
            % The user password.
            this.Options = [this.Options, '--password', varargin{:}];
        end

        function this = ssh_key_value(this, varargin)
            % SSH public key file value or public key file path. This command appends the new public key text to the ~/.ssh/authorized_keys file for the admin user on the VM. This does not replace or remove any existing SSH keys.
            this.Options = [this.Options, '--ssh-key-value', varargin{:}];
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
            fprintf('%s\n', '    az vm user update : Update a user account.')
            fprintf('%s\n', '        This command uses VMAccessForLinux 1.5 for Linux operating system and VMAccessAgent 2.4 for')
            fprintf('%s\n', '        Window operating system.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --username -u [Required] : The user name.')
            fprintf('%s\n', '    --no-wait                : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --password -p            : The user password.')
            fprintf('%s\n', '    --ssh-key-value          : SSH public key file value or public key file path. This command')
            fprintf('%s\n', '                               appends the new public key text to the ~/.ssh/authorized_keys file')
            fprintf('%s\n', '                               for the admin user on the VM. This does not replace or remove any')
            fprintf('%s\n', '                               existing SSH keys.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                    : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                               resource ID containing all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                               You should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                : The name of the Virtual Machine. You can configure the default using')
            fprintf('%s\n', '                               `az configure --defaults vm=<name>`.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Update a Windows user account. If username does not exist, a new user will be created.')
            fprintf('%s\n', '        az vm user update -u username -p password -n MyVm -g MyResourceGroup')
            fprintf('%s\n', '    Update a Linux user account. ("$(< filename)" syntax is not supported on Command Prompt or')
            fprintf('%s\n', '    PowerShell.)')
            fprintf('%s\n', '        az vm user update -u username --ssh-key-value "$(< ~/.ssh/id_rsa.pub)" -n MyVm -g')
            fprintf('%s\n', '        MyResourceGroup')
            fprintf('%s\n', '    Update a user on all VMs in a resource group. ("$(< filename)" syntax is not supported on')
            fprintf('%s\n', '    Command Prompt or PowerShell.)')
            fprintf('%s\n', '        az vm user update -u username --ssh-key-value "$(< ~/.ssh/id_rsa.pub)" --ids $(az vm list -g')
            fprintf('%s\n', '        MyResourceGroup --query "[].id" -o tsv)')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm user update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
