classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor autoscale create : Create new autoscale settings.
            % For more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-
            % diagnostics/monitoring-understanding-autoscale-settings.
            this.BaseCmd = 'az monitor autoscale create ';
        end
        function this = disabled(this, varargin)
            % Create the autoscale settings in a disabled state.  Allowed values: false, true.
            this.Options = [this.Options, '--disabled', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the autoscale settings.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Instance Limit Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = count(this, varargin)
            % The numer of instances to use. If used with --min/max-count, the default number of instances to use.
            this.Options = [this.Options, '--count', varargin{:}];
        end

        function this = max_count(this, varargin)
            % The maximum number of instances.
            this.Options = [this.Options, '--max-count', varargin{:}];
        end

        function this = min_count(this, varargin)
            % The minimum number of instances. Notification Arguments
            this.Options = [this.Options, '--min-count', varargin{:}];
        end

        function this = action(this, varargin)
            % Add an action to fire when a scaling event occurs. Usage:   --action TYPE KEY [ARG ...] Email:   --action email bob@contoso.com ann@contoso.com Webhook: --action webhook https://www.contoso.com/alert apiKey=value Webhook: --action webhook https://www.contoso.com/alert?apiKey=value Multiple actions can be specified by using more than one `--action` argument.
            this.Options = [this.Options, '--action', varargin{:}];
        end

        function this = email_administrator(this, varargin)
            % Send email to subscription administrator on scaling.  Allowed values: false, true.
            this.Options = [this.Options, '--email-administrator', varargin{:}];
        end

        function this = email_coadministrators(this, varargin)
            % Send email to subscription co-administrators on scaling.  Allowed values: false, true. Target Resource Arguments
            this.Options = [this.Options, '--email-coadministrators', varargin{:}];
        end

        function this = resource(this, varargin)
            % Name or ID of the target resource.
            this.Options = [this.Options, '--resource', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = resource_namespace(this, varargin)
            % Target resource provider namespace.
            this.Options = [this.Options, '--resource-namespace', varargin{:}];
        end

        function this = resource_parent(this, varargin)
            % Target resource parent path, if applicable.
            this.Options = [this.Options, '--resource-parent', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % Target resource type. Can also accept namespace/type format (Ex: 'Microsoft.Compute/virtualMachines').
            this.Options = [this.Options, '--resource-type', varargin{:}];
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
            fprintf('%s\n', '    az monitor autoscale create : Create new autoscale settings.')
            fprintf('%s\n', '        For more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-')
            fprintf('%s\n', '        diagnostics/monitoring-understanding-autoscale-settings.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --disabled               : Create the autoscale settings in a disabled state.  Allowed values:')
            fprintf('%s\n', '                               false, true.')
            fprintf('%s\n', '    --location -l            : Location. Values from: `az account list-locations`. You can configure')
            fprintf('%s\n', '                               the default location using `az configure --defaults')
            fprintf('%s\n', '                               location=<location>`.')
            fprintf('%s\n', '    --name -n                : Name of the autoscale settings.')
            fprintf('%s\n', '    --tags                   : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to clear')
            fprintf('%s\n', '                               existing tags.')
            fprintf('%s\n', 'Instance Limit Arguments')
            fprintf('%s\n', '    --count       [Required] : The numer of instances to use. If used with --min/max-count, the')
            fprintf('%s\n', '                               default number of instances to use.')
            fprintf('%s\n', '    --max-count              : The maximum number of instances.')
            fprintf('%s\n', '    --min-count              : The minimum number of instances.')
            fprintf('%s\n', 'Notification Arguments')
            fprintf('%s\n', '    --action -a              : Add an action to fire when a scaling event occurs.')
            fprintf('%s\n', '        Usage:   --action TYPE KEY [ARG ...]')
            fprintf('%s\n', '        Email:   --action email bob@contoso.com ann@contoso.com')
            fprintf('%s\n', '        Webhook: --action webhook https://www.contoso.com/alert apiKey=value')
            fprintf('%s\n', '        Webhook: --action webhook https://www.contoso.com/alert?apiKey=value')
            fprintf('%s\n', '        Multiple actions can be specified by using more than one `--action` argument.')
            fprintf('%s\n', '    --email-administrator    : Send email to subscription administrator on scaling.  Allowed values:')
            fprintf('%s\n', '                               false, true.')
            fprintf('%s\n', '    --email-coadministrators : Send email to subscription co-administrators on scaling.  Allowed')
            fprintf('%s\n', '                               values: false, true.')
            fprintf('%s\n', 'Target Resource Arguments')
            fprintf('%s\n', '    --resource    [Required] : Name or ID of the target resource.')
            fprintf('%s\n', '    --resource-group -g      : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                               configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-namespace     : Target resource provider namespace.')
            fprintf('%s\n', '    --resource-parent        : Target resource parent path, if applicable.')
            fprintf('%s\n', '    --resource-type          : Target resource type. Can also accept namespace/type format (Ex:')
            fprintf('%s\n', '                               ''Microsoft.Compute/virtualMachines'').')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create autoscale settings to scale between 2 and 5 instances (3 as default). Email the')
            fprintf('%s\n', '    administrator when scaling occurs.')
            fprintf('%s\n', '        az monitor autoscale create -g {myrg} --resource {resource-id} --min-count 2 --max-count 5 \')
            fprintf('%s\n', '          --count 3 --email-administrator')
            fprintf('%s\n', '        az monitor autoscale rule create -g {myrg} --autoscale-name {resource-name} --scale out 1 \')
            fprintf('%s\n', '          --condition "Percentage CPU > 75 avg 5m"')
            fprintf('%s\n', '        az monitor autoscale rule create -g {myrg} --autoscale-name {resource-name} --scale in 1 \')
            fprintf('%s\n', '          --condition "Percentage CPU < 25 avg 5m"')
            fprintf('%s\n', '    Create autoscale settings for exactly 4 instances.')
            fprintf('%s\n', '        az monitor autoscale create -g {myrg} --resource {resource-id} --count 4')
            fprintf('%s\n', '    Create new autoscale settings. (autogenerated)')
            fprintf('%s\n', '        az monitor autoscale create --count 3 --max-count 5 --min-count 2 --name MyAutoscaleSettings')
            fprintf('%s\n', '        --resource myScaleSet --resource-group MyResourceGroup --resource-type')
            fprintf('%s\n', '        Microsoft.Compute/virtualMachineScaleSets')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor autoscale create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
