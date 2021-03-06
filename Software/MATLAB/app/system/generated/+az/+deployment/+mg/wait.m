classdef wait < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = wait()
            % az deployment mg wait : Place the CLI in a waiting state until a deployment condition is met.
            this.BaseCmd = 'az deployment mg wait ';
        end
        function this = management_group_id(this, varargin)
            % The management group id.
            this.Options = [this.Options, '--management-group-id', varargin{:}];
        end

        function this = name(this, varargin)
            % The deployment name. Wait Condition Arguments
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = created(this, varargin)
            % Wait until created with 'provisioningState' at 'Succeeded'.
            this.Options = [this.Options, '--created', varargin{:}];
        end

        function this = custom(this, varargin)
            % Wait until the condition satisfies a custom JMESPath query. E.g. provisioningState!='InProgress', instanceView.statuses[?code=='PowerState/running'].
            this.Options = [this.Options, '--custom', varargin{:}];
        end

        function this = deleted(this, varargin)
            % Wait until deleted.
            this.Options = [this.Options, '--deleted', varargin{:}];
        end

        function this = exists(this, varargin)
            % Wait until the resource exists.
            this.Options = [this.Options, '--exists', varargin{:}];
        end

        function this = interval(this, varargin)
            % Polling interval in seconds.  Default: 30.
            this.Options = [this.Options, '--interval', varargin{:}];
        end

        function this = timeout(this, varargin)
            % Maximum wait in seconds.  Default: 3600.
            this.Options = [this.Options, '--timeout', varargin{:}];
        end

        function this = updated(this, varargin)
            % Wait until updated with provisioningState at 'Succeeded'.
            this.Options = [this.Options, '--updated', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az deployment mg wait"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az deployment mg wait : Place the CLI in a waiting state until a deployment condition is met.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --management-group-id -m [Required] : The management group id.')
            fprintf('%s\n', '    --name -n                [Required] : The deployment name.')
            fprintf('%s\n', 'Wait Condition Arguments')
            fprintf('%s\n', '    --created                           : Wait until created with ''provisioningState'' at')
            fprintf('%s\n', '                                          ''Succeeded''.')
            fprintf('%s\n', '    --custom                            : Wait until the condition satisfies a custom JMESPath')
            fprintf('%s\n', '                                          query. E.g. provisioningState!=''InProgress'',')
            fprintf('%s\n', '                                          instanceView.statuses[?code==''PowerState/running''].')
            fprintf('%s\n', '    --deleted                           : Wait until deleted.')
            fprintf('%s\n', '    --exists                            : Wait until the resource exists.')
            fprintf('%s\n', '    --interval                          : Polling interval in seconds.  Default: 30.')
            fprintf('%s\n', '    --timeout                           : Maximum wait in seconds.  Default: 3600.')
            fprintf('%s\n', '    --updated                           : Wait until updated with provisioningState at ''Succeeded''.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az deployment mg wait"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class wait 
