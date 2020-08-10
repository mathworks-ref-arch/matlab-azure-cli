classdef regenerate < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = regenerate()
            % az eventgrid partner namespace key regenerate : Regenerate a shared access key of a partner
            % namespace.
            % Command group 'eventgrid partner namespace' is in preview. It may be changed/removed in
            % a future release.
            this.BaseCmd = 'az eventgrid partner namespace key regenerate ';
        end
        function this = key_name(this, varargin)
            % Key name to regenerate (key1 or key2).
            this.Options = [this.Options, '--key-name', varargin{:}];
        end

        function this = partner_namespace_name(this, varargin)
            % Name of the partner namespace.
            this.Options = [this.Options, '--partner-namespace-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az eventgrid partner namespace key regenerate"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az eventgrid partner namespace key regenerate : Regenerate a shared access key of a partner')
            fprintf('%s\n', '    namespace.')
            fprintf('%s\n', '        Command group ''eventgrid partner namespace'' is in preview. It may be changed/removed in')
            fprintf('%s\n', '        a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --key-name               [Required] : Key name to regenerate (key1 or key2).')
            fprintf('%s\n', '    --partner-namespace-name [Required] : Name of the partner namespace.')
            fprintf('%s\n', '    --resource-group -g      [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                          group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                             : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                           : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                  : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                         : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                          tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                             : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                          information and examples.')
            fprintf('%s\n', '    --subscription                      : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                          subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                           : Increase logging verbosity. Use --debug for full debug')
            fprintf('%s\n', '                                          logs.')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid partner namespace key regenerate"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class regenerate 
