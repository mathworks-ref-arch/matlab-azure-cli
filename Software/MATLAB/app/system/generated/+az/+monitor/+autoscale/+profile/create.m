classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az monitor autoscale profile create : Create a fixed or recurring autoscale profile.
            % For more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-
            % diagnostics/monitoring-understanding-autoscale-settings.
            this.BaseCmd = 'az monitor autoscale profile create ';
        end
        function this = autoscale_name(this, varargin)
            % Name of the autoscale settings.
            this.Options = [this.Options, '--autoscale-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the autoscale profile.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = copy_rules(this, varargin)
            % Name of an existing schedule from which to copy the scaling rules for the new schedule. Instance Limit Arguments
            this.Options = [this.Options, '--copy-rules', varargin{:}];
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
            % The minimum number of instances. Schedule Arguments
            this.Options = [this.Options, '--min-count', varargin{:}];
        end

        function this = timezone(this, varargin)
            % Timezone name.  Values from: az monitor autoscale profile list- timezones.
            this.Options = [this.Options, '--timezone', varargin{:}];
        end

        function this = end(this, varargin)
            % When the autoscale profile ends. Format depends on the type of profile. Fixed:  --end yyyy-mm-dd [hh:mm:ss] Weekly: [--end hh:mm].
            this.Options = [this.Options, '--end', varargin{:}];
        end

        function this = recurrence(this, varargin)
            % When the profile recurs. If omitted, a fixed (non-recurring) profile is created. Usage:     --recurrence {week} [ARG ARG ...] Weekly:    --recurrence week Sat Sun.
            this.Options = [this.Options, '--recurrence', varargin{:}];
        end

        function this = start(this, varargin)
            % When the autoscale profile begins. Format depends on the type of profile. Fixed:  --start yyyy-mm-dd [hh:mm:ss] Weekly: [--start hh:mm].
            this.Options = [this.Options, '--start', varargin{:}];
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
            fprintf('%s\n', '    az monitor autoscale profile create : Create a fixed or recurring autoscale profile.')
            fprintf('%s\n', '        For more information on autoscaling, visit: https://docs.microsoft.com/azure/monitoring-and-')
            fprintf('%s\n', '        diagnostics/monitoring-understanding-autoscale-settings.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --autoscale-name    [Required] : Name of the autoscale settings.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the autoscale profile.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --copy-rules                   : Name of an existing schedule from which to copy the scaling')
            fprintf('%s\n', '                                     rules for the new schedule.')
            fprintf('%s\n', 'Instance Limit Arguments')
            fprintf('%s\n', '    --count             [Required] : The numer of instances to use. If used with --min/max-count,')
            fprintf('%s\n', '                                     the default number of instances to use.')
            fprintf('%s\n', '    --max-count                    : The maximum number of instances.')
            fprintf('%s\n', '    --min-count                    : The minimum number of instances.')
            fprintf('%s\n', 'Schedule Arguments')
            fprintf('%s\n', '    --timezone          [Required] : Timezone name.  Values from: az monitor autoscale profile list-')
            fprintf('%s\n', '                                     timezones.')
            fprintf('%s\n', '    --end                          : When the autoscale profile ends. Format depends on the type of')
            fprintf('%s\n', '                                     profile.')
            fprintf('%s\n', '        Fixed:  --end yyyy-mm-dd [hh:mm:ss]')
            fprintf('%s\n', '        Weekly: [--end hh:mm].')
            fprintf('%s\n', '    --recurrence -r                : When the profile recurs. If omitted, a fixed (non-recurring)')
            fprintf('%s\n', '                                     profile is created.')
            fprintf('%s\n', '        Usage:     --recurrence {week} [ARG ARG ...]')
            fprintf('%s\n', '        Weekly:    --recurrence week Sat Sun.')
            fprintf('%s\n', '    --start                        : When the autoscale profile begins. Format depends on the type')
            fprintf('%s\n', '                                     of profile.')
            fprintf('%s\n', '        Fixed:  --start yyyy-mm-dd [hh:mm:ss]')
            fprintf('%s\n', '        Weekly: [--start hh:mm].')
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
            fprintf('%s\n', '    Create a fixed date profile, inheriting the default scaling rules but changing the capacity.')
            fprintf('%s\n', '        az monitor autoscale create -g {myrg} --resource {resource-id} --min-count 2 --count 3 \')
            fprintf('%s\n', '          --max-count 5')
            fprintf('%s\n', '        az monitor autoscale rule create -g {myrg} --autoscale-name {name} --scale out 1 \')
            fprintf('%s\n', '          --condition "Percentage CPU > 75 avg 5m"')
            fprintf('%s\n', '        az monitor autoscale rule create -g {myrg} --autoscale-name {name} --scale in 1 \')
            fprintf('%s\n', '          --condition "Percentage CPU < 25 avg 5m"')
            fprintf('%s\n', '        az monitor autoscale profile create -g {myrg} --autoscale-name {name} -n Christmas \')
            fprintf('%s\n', '          --copy-rules default --min-count 3 --count 6 --max-count 10 --start 2018-12-24 \')
            fprintf('%s\n', '          --end 2018-12-26 --timezone "Pacific Standard Time"')
            fprintf('%s\n', '    Create a recurring weekend profile, inheriting the default scaling rules but changing the')
            fprintf('%s\n', '    capacity.')
            fprintf('%s\n', '        az monitor autoscale create -g {myrg} --resource {resource-id} --min-count 2 --count 3 \')
            fprintf('%s\n', '          --max-count 5')
            fprintf('%s\n', '        az monitor autoscale rule create -g {myrg} --autoscale-name {name} --scale out 1 \')
            fprintf('%s\n', '          --condition "Percentage CPU > 75 avg 5m"')
            fprintf('%s\n', '        az monitor autoscale rule create -g {myrg} --autoscale-name {name} --scale in 1 \')
            fprintf('%s\n', '          --condition "Percentage CPU < 25 avg 5m"')
            fprintf('%s\n', '        az monitor autoscale profile create -g {myrg} --autoscale-name {name} -n weeekend \')
            fprintf('%s\n', '          --copy-rules default --min-count 1 --count 2 --max-count 2 \')
            fprintf('%s\n', '          --recurrence week sat sun --timezone "Pacific Standard Time"')
            fprintf('%s\n', '    Create a fixed or recurring autoscale profile. (autogenerated)')
            fprintf('%s\n', '        az monitor autoscale profile create --autoscale-name MyAutoscale --copy-rules default')
            fprintf('%s\n', '        --count 2 --end 2018-12-26 --max-count 10 --min-count 1 --name Christmas --recurrence week')
            fprintf('%s\n', '        sat sun --resource-group MyResourceGroup --start 2018-12-24 --timezone "Pacific Standard')
            fprintf('%s\n', '        Time"')
            fprintf('%s\n', '    Create a fixed or recurring autoscale profile. (autogenerated)')
            fprintf('%s\n', '        az monitor autoscale profile create --autoscale-name MyAutoscale --count 2 --max-count 10')
            fprintf('%s\n', '        --min-count 1 --name Christmas --recurrence week sat sun --resource-group MyResourceGroup')
            fprintf('%s\n', '        --start 2018-12-24 --subscription MySubscription --timezone "Pacific Standard Time"')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor autoscale profile create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
