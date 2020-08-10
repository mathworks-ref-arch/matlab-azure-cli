classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az security regulatory-compliance-assessments show : Shows supported regulatory compliance
            % details and state for selected assessment.
            % Command group 'security' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az security regulatory-compliance-assessments show ';
        end
        function this = control_name(this, varargin)
            % The compliance control name.
            this.Options = [this.Options, '--control-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the resource to be fetched.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = standard_name(this, varargin)
            % The compliance standard name.
            this.Options = [this.Options, '--standard-name', varargin{:}];
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
            fprintf('%s\n', '    az security regulatory-compliance-assessments show : Shows supported regulatory compliance')
            fprintf('%s\n', '    details and state for selected assessment.')
            fprintf('%s\n', '        Command group ''security'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --control-name  [Required] : The compliance control name.')
            fprintf('%s\n', '    --name -n       [Required] : Name of the resource to be fetched.')
            fprintf('%s\n', '    --standard-name [Required] : The compliance standard name.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                    : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                  : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors         : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                 yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                    : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                 information and examples.')
            fprintf('%s\n', '    --subscription             : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                 subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                  : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Get selected regulatory compliance control details and state.')
            fprintf('%s\n', '        az security regulatory-compliance-assessments show --standard-name ''Azure-CIS-1.1.0''')
            fprintf('%s\n', '        --control-name ''1.1'' -n ''94290b00-4d0c-d7b4-7cea-064a9554e681''')
            fprintf('%s\n', 'For more specific examples, use: az find "az security regulatory-compliance-assessments')
            fprintf('%s\n', 'show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
