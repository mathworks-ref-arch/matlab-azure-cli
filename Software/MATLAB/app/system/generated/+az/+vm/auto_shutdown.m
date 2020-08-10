classdef auto_shutdown < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = auto_shutdown()
            % az vm auto-shutdown : Manage auto-shutdown for VM.
            this.BaseCmd = 'az vm auto-shutdown ';
        end
        function this = email(this, varargin)
            % The email recipient to send notifications to (can be a list of semi-colon separated email addresses).
            this.Options = [this.Options, '--email', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = off(this, varargin)
            % Turn off auto-shutdown for VM. Configuration will be cleared.
            this.Options = [this.Options, '--off', varargin{:}];
        end

        function this = time(this, varargin)
            % The UTC time of day the schedule will occur every day. Format: hhmm. Example: 1730.
            this.Options = [this.Options, '--time', varargin{:}];
        end

        function this = webhook(this, varargin)
            % The webhook URL to which the notification will be sent.
            this.Options = [this.Options, '--webhook', varargin{:}];
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
            fprintf('%s\n', '    az vm auto-shutdown : Manage auto-shutdown for VM.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --email             : The email recipient to send notifications to (can be a list of semi-colon')
            fprintf('%s\n', '                          separated email addresses).')
            fprintf('%s\n', '    --location -l       : Location. Values from: `az account list-locations`. You can configure the')
            fprintf('%s\n', '                          default location using `az configure --defaults location=<location>`.')
            fprintf('%s\n', '    --off               : Turn off auto-shutdown for VM. Configuration will be cleared.')
            fprintf('%s\n', '    --time              : The UTC time of day the schedule will occur every day. Format: hhmm.')
            fprintf('%s\n', '                          Example: 1730.')
            fprintf('%s\n', '    --webhook           : The webhook URL to which the notification will be sent.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n           : The name of the Virtual Machine. You can configure the default using `az')
            fprintf('%s\n', '                          configure --defaults vm=<name>`.')
            fprintf('%s\n', '    --resource-group -g : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                          configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription      : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                          using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o         : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                          yamlc.  Default: json.')
            fprintf('%s\n', '    --query             : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                          examples.')
            fprintf('%s\n', '    --verbose           : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create auto-shutdown schedule for a VM.')
            fprintf('%s\n', '        az vm auto-shutdown -g MyResourceGroup -n MyVm --time 1730 --email "foo@bar.com" --webhook')
            fprintf('%s\n', '        "https://example.com/"')
            fprintf('%s\n', '    Delete auto-shutdown schedule for a VM.')
            fprintf('%s\n', '        az vm auto-shutdown -g MyResourceGroup -n MyVm --off')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm auto-shutdown"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class auto_shutdown 
