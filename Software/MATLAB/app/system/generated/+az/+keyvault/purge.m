classdef purge < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = purge()
            % az keyvault purge : Permanently deletes the specified vault.
            % Aka Purges the deleted Azure key vault.
            this.BaseCmd = 'az keyvault purge ';
        end
        function this = name(this, varargin)
            % Name of the deleted vault.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = location(this, varargin)
            % Location of the deleted vault.
            this.Options = [this.Options, '--location', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az keyvault purge"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az keyvault purge : Permanently deletes the specified vault.')
            fprintf('%s\n', '        Aka Purges the deleted Azure key vault.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n [Required] : Name of the deleted vault.')
            fprintf('%s\n', '    --location -l        : Location of the deleted vault.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug              : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h            : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors   : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o          : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                           yamlc.  Default: json.')
            fprintf('%s\n', '    --query              : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                           examples.')
            fprintf('%s\n', '    --subscription       : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                           using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose            : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az keyvault purge"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class purge 
