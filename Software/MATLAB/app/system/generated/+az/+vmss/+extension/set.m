classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az vmss extension set : Add an extension to a VMSS or update an existing extension.
            % Get extension details from `az vmss extension image list`.
            this.BaseCmd = 'az vmss extension set ';
        end
        function this = name(this, varargin)
            % Name of the extension.  Values from: az vm extension image list.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = publisher(this, varargin)
            % The name of the extension publisher.
            this.Options = [this.Options, '--publisher', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = vmss_name(this, varargin)
            % Scale set name. You can configure the default using `az configure --defaults vmss=<name>`.
            this.Options = [this.Options, '--vmss-name', varargin{:}];
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
            % If set, the extension service will not automatically pick or upgrade to the latest minor version, even if the extension is redeployed.  Allowed values: false, true.
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

        function this = provision_after_extensions(this, varargin)
            % Space-separated list of extension names after which this extension should be provisioned. These extensions must already be set on the vm.
            this.Options = [this.Options, '--provision-after-extensions', varargin{:}];
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
            fprintf('%s\n', '    az vmss extension set : Add an extension to a VMSS or update an existing extension.')
            fprintf('%s\n', '        Get extension details from `az vmss extension image list`.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the extension.  Values from: az vm extension image')
            fprintf('%s\n', '                                     list.')
            fprintf('%s\n', '    --publisher         [Required] : The name of the extension publisher.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --vmss-name         [Required] : Scale set name. You can configure the default using `az')
            fprintf('%s\n', '                                     configure --defaults vmss=<name>`.')
            fprintf('%s\n', '    --extension-instance-name      : Name of extension instance, which can be customized. Default:')
            fprintf('%s\n', '                                     name of the extension.')
            fprintf('%s\n', '    --force-update                 : Force to update even if the extension configuration has not')
            fprintf('%s\n', '                                     changed.')
            fprintf('%s\n', '    --no-auto-upgrade              : If set, the extension service will not automatically pick or')
            fprintf('%s\n', '                                     upgrade to the latest minor version, even if the extension is')
            fprintf('%s\n', '                                     redeployed.  Allowed values: false, true.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --protected-settings           : Protected settings in JSON format for sensitive information')
            fprintf('%s\n', '                                     like credentials. A JSON file path is also accepted.')
            fprintf('%s\n', '    --provision-after-extensions   : Space-separated list of extension names after which this')
            fprintf('%s\n', '                                     extension should be provisioned. These extensions must already')
            fprintf('%s\n', '                                     be set on the vm.')
            fprintf('%s\n', '    --settings                     : Extension settings in JSON format. A JSON file path is also')
            fprintf('%s\n', '                                     accepted.')
            fprintf('%s\n', '    --version                      : The version of the extension. To pin extension version to this')
            fprintf('%s\n', '                                     value, please specify --no-auto-upgrade.')
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
            fprintf('%s\n', '    Set an extension which depends on two previously set extensions. That is, When a VMSS instance')
            fprintf('%s\n', '    is created or reimaged, the customScript extension will be provisioned only after all extensions')
            fprintf('%s\n', '    that it depends on have been provisioned. The extension need not depend on the other extensions')
            fprintf('%s\n', '    for pre-requisite configurations.')
            fprintf('%s\n', '        az vmss extension set --vmss-name my-vmss --name customScript --resource-group my-group \')
            fprintf('%s\n', '            --version 2.0 --publisher Microsoft.Azure.Extensions \')
            fprintf('%s\n', '            --provision-after-extensions NetworkWatcherAgentLinux VMAccessForLinux  \')
            fprintf('%s\n', '            --settings ''{"commandToExecute": "echo testing"}''')
            fprintf('%s\n', 'For more specific examples, use: az find "az vmss extension set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
