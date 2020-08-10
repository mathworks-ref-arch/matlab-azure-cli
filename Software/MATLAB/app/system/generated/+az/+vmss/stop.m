classdef stop < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = stop()
            % az vmss stop : Power off (stop) VMs within a VMSS.
            % The VMs will continue to be billed. To avoid this, you can deallocate VM instances within a
            % VMSS through "az vmss deallocate".
            this.BaseCmd = 'az vmss stop ';
        end
        function this = name(this, varargin)
            % Scale set name. You can configure the default using `az configure --defaults vmss=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = instance_ids(this, varargin)
            % Space-separated list of IDs (ex: 1 2 3 ...) or * for all instances. If not provided, the action will be applied on the scaleset itself.
            this.Options = [this.Options, '--instance-ids', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = skip_shutdown(this, varargin)
            % Skip shutdown and power-off immediately.
            this.Options = [this.Options, '--skip-shutdown', varargin{:}];
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
            fprintf('%s\n', '    az vmss stop : Power off (stop) VMs within a VMSS.')
            fprintf('%s\n', '        The VMs will continue to be billed. To avoid this, you can deallocate VM instances within a')
            fprintf('%s\n', '        VMSS through "az vmss deallocate".')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Scale set name. You can configure the default using `az')
            fprintf('%s\n', '                                     configure --defaults vmss=<name>`.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --instance-ids                 : Space-separated list of IDs (ex: 1 2 3 ...) or * for all')
            fprintf('%s\n', '                                     instances. If not provided, the action will be applied on the')
            fprintf('%s\n', '                                     scaleset itself.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --skip-shutdown                : Skip shutdown and power-off immediately.')
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
            fprintf('%s\n', '    Power off VMs within a VMSS without shutting down.')
            fprintf('%s\n', '        az vmss stop --name MyScaleSet --resource-group MyResourceGroup --skip-shutdown')
            fprintf('%s\n', '    Power off (stop) VMs within a VMSS. (autogenerated)')
            fprintf('%s\n', '        az vmss stop --instance-ids 1 --name MyScaleSet --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az vmss stop"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class stop 
