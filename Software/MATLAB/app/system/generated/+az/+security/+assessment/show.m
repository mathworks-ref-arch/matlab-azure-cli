classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az security assessment show : Shows a security assessment.
            % Command group 'security' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az security assessment show ';
        end
        function this = name(this, varargin)
            % Name of the resource to be fetched.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = assessed_resource_id(this, varargin)
            % The target resource for this assessment.
            this.Options = [this.Options, '--assessed-resource-id', varargin{:}];
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
            fprintf('%s\n', '    az security assessment show : Shows a security assessment.')
            fprintf('%s\n', '        Command group ''security'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n   [Required] : Name of the resource to be fetched.')
            fprintf('%s\n', '    --assessed-resource-id : The target resource for this assessment.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --subscription         : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                             using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Get a security assessment.')
            fprintf('%s\n', '        az security assessment show -n ''4fb6c0a0-1137-42c7-a1c7-4bd37c91de8d''')
            fprintf('%s\n', 'For more specific examples, use: az find "az security assessment show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
