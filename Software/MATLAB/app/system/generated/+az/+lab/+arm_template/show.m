classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az lab arm-template show : Get the details of an ARM template in a lab.
            % Command group 'lab' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az lab arm-template show ';
        end
        function this = artifact_source_name(this, varargin)
            % Name of the artifact source.
            this.Options = [this.Options, '--artifact-source-name', varargin{:}];
        end

        function this = lab_name(this, varargin)
            % Name of the lab.
            this.Options = [this.Options, '--lab-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Azure Resource Manager template.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of lab's resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = export_parameters(this, varargin)
            % Whether or not to export parameters template.
            this.Options = [this.Options, '--export-parameters', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az lab arm-template show"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az lab arm-template show : Get the details of an ARM template in a lab.')
            fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --artifact-source-name [Required] : Name of the artifact source.')
            fprintf('%s\n', '    --lab-name             [Required] : Name of the lab.')
            fprintf('%s\n', '    --name -n              [Required] : Name of the Azure Resource Manager template.')
            fprintf('%s\n', '    --resource-group -g    [Required] : Name of lab''s resource group.')
            fprintf('%s\n', '    --export-parameters               : Whether or not to export parameters template.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az lab arm-template show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
