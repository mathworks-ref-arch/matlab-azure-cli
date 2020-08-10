classdef clone < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = clone()
            % az monitor clone : Clone metrics alert rules from one resource to another resource.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az monitor clone ';
        end
        function this = source_resource(this, varargin)
            % Resource ID of the source resource.
            this.Options = [this.Options, '--source-resource', varargin{:}];
        end

        function this = target_resource(this, varargin)
            % Resource ID of the target resource.
            this.Options = [this.Options, '--target-resource', varargin{:}];
        end

        function this = always_clone(this, varargin)
            % If this argument is applied, all monitor settings would be cloned instead of expanding its scope.
            this.Options = [this.Options, '--always-clone', varargin{:}];
        end

        function this = types(this, varargin)
            % List of types of monitor settings which would be cloned.  Allowed values: metricsAlert.  Default: ['metricsAlert'].
            this.Options = [this.Options, '--types', varargin{:}];
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
            fprintf('%s\n', '    az monitor clone : Clone metrics alert rules from one resource to another resource.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --source-resource [Required] : Resource ID of the source resource.')
            fprintf('%s\n', '    --target-resource [Required] : Resource ID of the target resource.')
            fprintf('%s\n', '    --always-clone               : If this argument is applied, all monitor settings would be cloned')
            fprintf('%s\n', '                                   instead of expanding its scope.')
            fprintf('%s\n', '    --types -t                   : List of types of monitor settings which would be cloned.  Allowed')
            fprintf('%s\n', '                                   values: metricsAlert.  Default: [''metricsAlert''].')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                      : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                    : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors           : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                  : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                   yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                      : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                   information and examples.')
            fprintf('%s\n', '    --subscription               : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                   subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                    : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Clone the metric alert settings from one VM to another')
            fprintf('%s\n', '        az monitor clone --source-resource /subscriptions/{subscriptionID}/resourceGroups/Space1999/')
            fprintf('%s\n', '        providers/Microsoft.Compute/virtualMachines/vm1 --target-resource /subscriptions/{subscripti')
            fprintf('%s\n', '        onID}/resourceGroups/Space1999/providers/Microsoft.Compute/virtualMachines/vm2')
            fprintf('%s\n', 'For more specific examples, use: az find "az monitor clone"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class clone 
