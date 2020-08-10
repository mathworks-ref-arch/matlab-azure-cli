classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az monitor diagnostic-settings delete : Deletes existing diagnostic settings for the specified
            % resource.
            this.BaseCmd = 'az monitor diagnostic-settings delete ';
        end
        function this = name(this, varargin)
            % The name of the diagnostic setting. Target Resource Arguments
            this.Options = [this.Options, '--name', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az monitor diagnostic-settings delete"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az monitor diagnostic-settings delete : Deletes existing diagnostic settings for the specified')
            fprintf('%s\n', '    resource.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n  [Required] : The name of the diagnostic setting.')
            fprintf('%s\n', 'Target Resource Arguments')
            fprintf('%s\n', '    --resource [Required] : Name or ID of the target resource.')
            fprintf('%s\n', '    --resource-group -g   : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                            configure --defaults group=<name>`.')
            fprintf('%s\n', '    --resource-namespace  : Target resource provider namespace.')
            fprintf('%s\n', '    --resource-parent     : Target resource parent path, if applicable.')
            fprintf('%s\n', '    --resource-type       : Target resource type. Can also accept namespace/type format (Ex:')
            fprintf('%s\n', '                            ''Microsoft.Compute/virtualMachines'').')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug               : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h             : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors    : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o           : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                            yamlc.  Default: json.')
            fprintf('%s\n', '    --query               : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                            examples.')
            fprintf('%s\n', '    --subscription        : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                            using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose             : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor diagnostic-settings delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
