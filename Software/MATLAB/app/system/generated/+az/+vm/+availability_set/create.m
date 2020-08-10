classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az vm availability-set create : Create an Azure Availability Set.
            % For more information, see https://docs.microsoft.com/azure/virtual-machines/virtual-
            % machines-linux-manage-availability.
            this.BaseCmd = 'az vm availability-set create ';
        end
        function this = name(this, varargin)
            % Name of the availability set.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = platform_fault_domain_count(this, varargin)
            % Fault Domain count.  Default: 2.
            this.Options = [this.Options, '--platform-fault-domain-count', varargin{:}];
        end

        function this = platform_update_domain_count(this, varargin)
            % Update Domain count. If unspecified, the server will pick the most optimal number like 5.
            this.Options = [this.Options, '--platform-update-domain-count', varargin{:}];
        end

        function this = ppg(this, varargin)
            % The name or ID of the proximity placement group the availability set should be associated with.
            this.Options = [this.Options, '--ppg', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = unmanaged(this, varargin)
            % Contained VMs should use unmanaged disks.
            this.Options = [this.Options, '--unmanaged', varargin{:}];
        end

        function this = validate(this, varargin)
            % Generate and validate the ARM template without creating any resources.
            this.Options = [this.Options, '--validate', varargin{:}];
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
            fprintf('%s\n', '    az vm availability-set create : Create an Azure Availability Set.')
            fprintf('%s\n', '        For more information, see https://docs.microsoft.com/azure/virtual-machines/virtual-')
            fprintf('%s\n', '        machines-linux-manage-availability.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : Name of the availability set.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --platform-fault-domain-count  : Fault Domain count.  Default: 2.')
            fprintf('%s\n', '    --platform-update-domain-count : Update Domain count. If unspecified, the server will pick the')
            fprintf('%s\n', '                                     most optimal number like 5.')
            fprintf('%s\n', '    --ppg                          : The name or ID of the proximity placement group the')
            fprintf('%s\n', '                                     availability set should be associated with.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', '    --unmanaged                    : Contained VMs should use unmanaged disks.')
            fprintf('%s\n', '    --validate                     : Generate and validate the ARM template without creating any')
            fprintf('%s\n', '                                     resources.')
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
            fprintf('%s\n', '    Create an availability set.')
            fprintf('%s\n', '        az vm availability-set create -n MyAvSet -g MyResourceGroup --platform-fault-domain-count 2')
            fprintf('%s\n', '        --platform-update-domain-count 2')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm availability-set create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
