classdef claim < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = claim()
            % az lab vm claim : Claim a virtual machine from the Lab.
            % Command group 'lab' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az lab vm claim ';
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

        function this = lab_name(this, varargin)
            % Name of the lab.
            this.Options = [this.Options, '--lab-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the virtual machine to claim.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of lab's resource group.
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
            fprintf('%s\n', '    az lab vm claim : Claim a virtual machine from the Lab.')
            fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids               : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                          resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                          should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --lab-name          : Name of the lab.')
            fprintf('%s\n', '    --name -n           : Name of the virtual machine to claim.')
            fprintf('%s\n', '    --resource-group -g : Name of lab''s resource group.')
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
            fprintf('%s\n', '    Claim any available virtual machine in the lab.')
            fprintf('%s\n', '        az lab vm claim -g {ResourceGroup} --lab-name {LabName}')
            fprintf('%s\n', '    Claim a specific virtual machine in the lab.')
            fprintf('%s\n', '        az lab vm claim -g {ResourceGroup} --lab-name {LabName} --name {VMName}')
            fprintf('%s\n', '    Claim multiple virtual machines in the lab by IDs.')
            fprintf('%s\n', '        az lab vm claim --ids \')
            fprintf('%s\n', '            /subscriptions/{SubID}/resourcegroups/{ResourceGroup}/providers/microsoft.devtestlab/lab')
            fprintf('%s\n', '        s/{LabName}/virtualmachines/{VMName1} \')
            fprintf('%s\n', '            /subscriptions/{SubID}/resourcegroups/{ResourceGroup}/providers/microsoft.devtestlab/lab')
            fprintf('%s\n', '        s/{LabName}/virtualmachines/{VMName2}')
            fprintf('%s\n', 'For more specific examples, use: az find "az lab vm claim"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class claim 
