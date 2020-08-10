classdef invoke < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = invoke()
            % az vmss run-command invoke : Execute a specific run command on a Virtual Machine Scale Set
            % instance.
            % `az vmss run-command show` returns helpful information on each run-command. Discover Run
            % command-id's via `az vmss run-command list`.
            this.BaseCmd = 'az vmss run-command invoke ';
        end
        function this = command_id(this, varargin)
            % The command id.  Values from: az vmss run-command list.
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

        function this = instance_id(this, varargin)
            % Scale set VM instance id.
            this.Options = [this.Options, '--instance-id', varargin{:}];
        end

        function this = name(this, varargin)
            % Scale set name. You can configure the default using `az configure --defaults vmss=<name>`.
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
            fprintf('%s\n', '    az vmss run-command invoke : Execute a specific run command on a Virtual Machine Scale Set')
            fprintf('%s\n', '    instance.')
            fprintf('%s\n', '        `az vmss run-command show` returns helpful information on each run-command. Discover Run')
            fprintf('%s\n', '        command-id''s via `az vmss run-command list`.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --command-id [Required] : The command id.  Values from: az vmss run-command list.')
            fprintf('%s\n', '    --parameters            : Space-separated parameters in the format of ''[name=]value''.')
            fprintf('%s\n', '    --scripts               : Space-separated script lines. Use @{file} to load script from a file.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --instance-id           : Scale set VM instance id.')
            fprintf('%s\n', '    --name -n               : Scale set name. You can configure the default using `az configure')
            fprintf('%s\n', '                              --defaults vmss=<name>`.')
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
            fprintf('%s\n', '    Install nginx on a VMSS instance.')
            fprintf('%s\n', '        az vmss run-command invoke -g MyResourceGroup -n MyVMSS --command-id RunShellScript \')
            fprintf('%s\n', '        --instance-id 0 --scripts "sudo apt-get update && sudo apt-get install -y nginx"')
            fprintf('%s\n', '    Invoke a run-command with parameters on a VMSS instance.')
            fprintf('%s\n', '        az vmss run-command invoke -g MyResourceGroup -n MyVMSS --command-id RunShellScript \')
            fprintf('%s\n', '        --instance-id 4 --scripts ''echo $1 $2'' --parameters hello world')
            fprintf('%s\n', '    Invoke command on all VMSS instances using the VMSS instance resource IDs. Note: "@-" expands to')
            fprintf('%s\n', '    stdin.')
            fprintf('%s\n', '        az vmss list-instances -n MyVMSS -g my-rg --query "[].id" --output tsv | \')
            fprintf('%s\n', '        az vmss run-command invoke --scripts ''echo $1 $2'' --parameters hello world  \')
            fprintf('%s\n', '            --command-id RunShellScript --ids @-')
            fprintf('%s\n', '    Run powershell script on a windows VMSS instance with parameters. Script supplied inline. Be')
            fprintf('%s\n', '    wary of single-quoting in CMD.exe.')
            fprintf('%s\n', '        az vmss run-command invoke  --command-id RunPowerShellScript --name win-vm -g my-resource-')
            fprintf('%s\n', '        group \')
            fprintf('%s\n', '            --scripts ''param([string]$arg1,[string]$arg2)'' \')
            fprintf('%s\n', '            ''Write-Host This is a sample script with parameters $arg1 and $arg2'' \')
            fprintf('%s\n', '            --parameters ''arg1=somefoo'' ''arg2=somebar'' --instance-id 2')
            fprintf('%s\n', '    Run powershell script on a windows VMSS instance with parameters. Script supplied from file.')
            fprintf('%s\n', '        # script.ps1')
            fprintf('%s\n', '        #   param(')
            fprintf('%s\n', '        #       [string]$arg1,')
            fprintf('%s\n', '        #       [string]$arg2')
            fprintf('%s\n', '        #   )')
            fprintf('%s\n', '        #   Write-Host This is a sample script with parameters $arg1 and $arg2')
            fprintf('%s\n', '        az vmss run-command invoke  --command-id RunPowerShellScript --name win-vm -g my-resource-')
            fprintf('%s\n', '        group \')
            fprintf('%s\n', '            --scripts @script.ps1 --parameters "arg1=somefoo" "arg2=somebar" --instance-id 5')
            fprintf('%s\n', 'For more specific examples, use: az find "az vmss run-command invoke"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class invoke 
