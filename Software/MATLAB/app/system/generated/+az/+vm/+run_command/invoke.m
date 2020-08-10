classdef invoke < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = invoke()
            % az vm run-command invoke : Execute a specific run command on a vm.
            % `az vm run-command show` returns helpful information on each run-command. Discover Run
            % command-id's via `az vmss run-command list`.
            this.BaseCmd = 'az vm run-command invoke ';
        end
        function this = command_id(this, varargin)
            % The command id.  Values from: az vm run-command list.
            this.Options = [this.Options, '--command-id', varargin{:}];
        end

        function this = parameters(this, varargin)
            % Space-separated parameters in the format of '[name=]value'.
            this.Options = [this.Options, '--parameters', varargin{:}];
        end

        function this = scripts(this, varargin)
            % Space-separated script lines. Use @{file} to load script from a file.
            this.Options = [this.Options, '--scripts', varargin{:}];
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
            fprintf('%s\n', '    az vm run-command invoke : Execute a specific run command on a vm.')
            fprintf('%s\n', '        `az vm run-command show` returns helpful information on each run-command. Discover Run')
            fprintf('%s\n', '        command-id''s via `az vmss run-command list`.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --command-id [Required] : The command id.  Values from: az vm run-command list.')
            fprintf('%s\n', '    --parameters            : Space-separated parameters in the format of ''[name=]value''.')
            fprintf('%s\n', '    --scripts               : Space-separated script lines. Use @{file} to load script from a file.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n               : The name of the Virtual Machine. You can configure the default using')
            fprintf('%s\n', '                              `az configure --defaults vm=<name>`.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Install nginx on a linux VM.')
            fprintf('%s\n', '        az vm run-command invoke -g MyResourceGroup -n MyVm --command-id RunShellScript --scripts')
            fprintf('%s\n', '        "sudo apt-get update && sudo apt-get install -y nginx"')
            fprintf('%s\n', '    Run shell command on a linux VM with parameters.')
            fprintf('%s\n', '        az vm run-command invoke -g MyResourceGroup -n MyVm --command-id RunShellScript --scripts')
            fprintf('%s\n', '        ''echo $1 $2'' --parameters hello world')
            fprintf('%s\n', '    Run powershell script on a windows VM with parameters. Script supplied inline. Be wary of')
            fprintf('%s\n', '    single-quoting in CMD.exe.')
            fprintf('%s\n', '        az vm run-command invoke  --command-id RunPowerShellScript --name win-vm -g my-resource-')
            fprintf('%s\n', '        group  \')
            fprintf('%s\n', '            --scripts ''param([string]$arg1,[string]$arg2)'' \')
            fprintf('%s\n', '            ''Write-Host This is a sample script with parameters $arg1 and $arg2'' \')
            fprintf('%s\n', '            --parameters ''arg1=somefoo'' ''arg2=somebar''')
            fprintf('%s\n', '    Run powershell script on a windows VM with parameters. Script supplied from file.')
            fprintf('%s\n', '        # script.ps1')
            fprintf('%s\n', '        #   param(')
            fprintf('%s\n', '        #       [string]$arg1,')
            fprintf('%s\n', '        #       [string]$arg2')
            fprintf('%s\n', '        #   )')
            fprintf('%s\n', '        #   Write-Host This is a sample script with parameters $arg1 and $arg2')
            fprintf('%s\n', '        az vm run-command invoke  --command-id RunPowerShellScript --name win-vm -g my-resource-')
            fprintf('%s\n', '        group \')
            fprintf('%s\n', '            --scripts @script.ps1 --parameters "arg1=somefoo" "arg2=somebar"')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm run-command invoke"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class invoke 
