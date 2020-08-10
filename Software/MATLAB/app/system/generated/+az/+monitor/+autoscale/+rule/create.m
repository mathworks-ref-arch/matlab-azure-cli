classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor autoscale rule create : Add a new autoscale rule.
            % For more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-
            % diagnostics/monitoring-understanding-autoscale-settings.
            this.BaseCmd = 'az monitor autoscale rule create ';
        end
        function this = autoscale_name(this, varargin)
            % Name of the autoscale settings.
            this.Options = [this.Options, '--autoscale-name', varargin{:}];
        end

        function this = condition(this, varargin)
            % The condition which triggers the scaling action. Usage:  --condition ["NAMESPACE"] METRIC {==,!=,>,>=,<,<=} THRESHOLD {avg,min,max,total,count} PERIOD [where DIMENSION {==,!=} VALUE [or VALUE ...] [and   DIMENSION {==,!=} VALUE [or VALUE ...] ...]] Dimensions can be queried by adding the 'where' keyword and multiple dimensions can be queried by combining them with the 'and' keyword. Values for METRIC and appropriate THRESHOLD values can be obtained from the `az monitor metric` command. Format of PERIOD is "##h##m##s".
            this.Options = [this.Options, '--condition', varargin{:}];
        end

        function this = scale(this, varargin)
            % The direction and amount to scale. Usage:          --scale {to,in,out} VAL[%] Fixed Count:    --scale to 5 In by Count:    --scale in 2 Out by Percent: --scale out 10%.
            this.Options = [this.Options, '--scale', varargin{:}];
        end

        function this = cooldown(this, varargin)
            % The number of minutes that must elapse before another scaling event can occur.  Default: 5.
            this.Options = [this.Options, '--cooldown', varargin{:}];
        end

        function this = profile_name(this, varargin)
            % Name of the autoscale profile.  Default: default.
            this.Options = [this.Options, '--profile-name', varargin{:}];
        end

        function this = timegrain(this, varargin)
            % The way metrics are polled across instances.  Default: avg 1m. The form of the timegrain is {avg,min,max,sum} VALUE. Values can be obtained from the `az monitor metric` command. Format of VALUE is "##h##m##s". Source Arguments
            this.Options = [this.Options, '--timegrain', varargin{:}];
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
            fprintf('%s\n', '    az monitor autoscale rule create : Add a new autoscale rule.')
            fprintf('%s\n', '        For more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-')
            fprintf('%s\n', '        diagnostics/monitoring-understanding-autoscale-settings.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --autoscale-name [Required] : Name of the autoscale settings.')
            fprintf('%s\n', '    --condition      [Required] : The condition which triggers the scaling action.')
            fprintf('%s\n', '        Usage:  --condition ["NAMESPACE"] METRIC {==,!=,>,>=,<,<=} THRESHOLD')
            fprintf('%s\n', '        {avg,min,max,total,count} PERIOD')
            fprintf('%s\n', '                            [where DIMENSION {==,!=} VALUE [or VALUE ...]')
            fprintf('%s\n', '                            [and   DIMENSION {==,!=} VALUE [or VALUE ...] ...]]')
            fprintf('%s\n', '        Dimensions can be queried by adding the ''where'' keyword and multiple dimensions can be')
            fprintf('%s\n', '        queried by combining them with the ''and'' keyword. Values for METRIC and appropriate')
            fprintf('%s\n', '        THRESHOLD values can be obtained from the `az monitor metric` command. Format of PERIOD is')
            fprintf('%s\n', '        "##h##m##s".')
            fprintf('%s\n', '    --scale          [Required] : The direction and amount to scale.')
            fprintf('%s\n', '        Usage:          --scale {to,in,out} VAL[%]')
            fprintf('%s\n', '        Fixed Count:    --scale to 5')
            fprintf('%s\n', '        In by Count:    --scale in 2')
            fprintf('%s\n', '        Out by Percent: --scale out 10%.')
            fprintf('%s\n', '    --cooldown                  : The number of minutes that must elapse before another scaling')
            fprintf('%s\n', '                                  event can occur.  Default: 5.')
            fprintf('%s\n', '    --profile-name              : Name of the autoscale profile.  Default: default.')
            fprintf('%s\n', '    --timegrain                 : The way metrics are polled across instances.  Default: avg 1m.')
            fprintf('%s\n', '        The form of the timegrain is {avg,min,max,sum} VALUE. Values can be obtained from the `az')
            fprintf('%s\n', '        monitor metric` command. Format of VALUE is "##h##m##s".')
            fprintf('%s\n', 'Source Arguments')
            fprintf('%s\n', '    --resource                  : Name or ID of the target resource.')
            fprintf('%s\n', '    --resource-group -g         : Name of resource group. You can configure the default group using')
            fprintf('%s\n', '                                  `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-namespace        : Target resource provider namespace.')
            fprintf('%s\n', '    --resource-parent           : Target resource parent path, if applicable.')
            fprintf('%s\n', '    --resource-type             : Target resource type. Can also accept namespace/type format (Ex:')
            fprintf('%s\n', '                                  ''Microsoft.Compute/virtualMachines'').')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                     : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                   : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors          : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                 : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                  yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                     : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                  information and examples.')
            fprintf('%s\n', '    --subscription              : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                  subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                   : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Scale to 5 instances when the CPU Percentage across instances is greater than 75 averaged over')
            fprintf('%s\n', '    10 minutes.')
            fprintf('%s\n', '        az monitor autoscale rule create -g {myrg} --autoscale-name {myvmss} \')
            fprintf('%s\n', '          --scale to 5 --condition "Percentage CPU > 75 avg 10m"')
            fprintf('%s\n', '    Scale up 2 instances when the CPU Percentage across instances is greater than 75 averaged over 5')
            fprintf('%s\n', '    minutes.')
            fprintf('%s\n', '        az monitor autoscale rule create -g {myrg} --autoscale-name {myvmss} \')
            fprintf('%s\n', '          --scale out 2 --condition "Percentage CPU > 75 avg 5m"')
            fprintf('%s\n', '    Scale down 50% when the CPU Percentage across instances is less than 25 averaged over 15')
            fprintf('%s\n', '    minutes.')
            fprintf('%s\n', '        az monitor autoscale rule create -g {myrg} --autoscale-name {myvmss} \')
            fprintf('%s\n', '          --scale in 50% --condition "Percentage CPU < 25 avg 15m"')
            fprintf('%s\n', '    Create autoscale settings via a guest vm metric enabled from diagnostic extensions. You can use')
            fprintf('%s\n', '    counterSpecifier field retrieved from ''az vmss diagnostics get-default-config'' in the')
            fprintf('%s\n', '    `--condition`.')
            fprintf('%s\n', '        az monitor autoscale rule create -g {myrg} --autoscale-name test --scale out 1 --condition')
            fprintf('%s\n', '        "/builtin/memory/percentavailablememory > 80 total 5m"')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor autoscale rule create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
