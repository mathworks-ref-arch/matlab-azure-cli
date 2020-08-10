classdef copy < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = copy()
            % az monitor autoscale rule copy : Copy autoscale rules from one profile to another.
            this.BaseCmd = 'az monitor autoscale rule copy ';
        end
        function this = autoscale_name(this, varargin)
            % Name of the autoscale settings.
            this.Options = [this.Options, '--autoscale-name', varargin{:}];
        end

        function this = dest_schedule(this, varargin)
            % Name of the profile to copy rules to.
            this.Options = [this.Options, '--dest-schedule', varargin{:}];
        end

        function this = index(this, varargin)
            % Space-separated list of rule indices to copy, or '*' to copy all rules.
            this.Options = [this.Options, '--index', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = source_schedule(this, varargin)
            % Name of the profile to copy rules from.  Default: default.
            this.Options = [this.Options, '--source-schedule', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az monitor autoscale rule copy"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az monitor autoscale rule copy : Copy autoscale rules from one profile to another.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --autoscale-name    [Required] : Name of the autoscale settings.')
            fprintf('%s\n', '    --dest-schedule     [Required] : Name of the profile to copy rules to.')
            fprintf('%s\n', '    --index             [Required] : Space-separated list of rule indices to copy, or ''*'' to copy')
            fprintf('%s\n', '                                     all rules.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --source-schedule              : Name of the profile to copy rules from.  Default: default.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor autoscale rule copy"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class copy 
