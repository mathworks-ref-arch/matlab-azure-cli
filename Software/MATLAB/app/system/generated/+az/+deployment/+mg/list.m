classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az deployment mg list : List deployments at management group.
            this.BaseCmd = 'az deployment mg list ';
        end
        function this = management_group_id(this, varargin)
            % The management group id.
            this.Options = [this.Options, '--management-group-id', varargin{:}];
        end

        function this = filter(this, varargin)
            % Filter expression using OData notation. You can use --filter "provisioningState eq '{state}'" to filter provisioningState. To get more information, please visit https://docs.microsoft.com/en-us/rest/api/resources/deploy ments/listatsubscriptionscope#uri-parameters. Argument '--filter' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--filter', varargin{:}];
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
            fprintf('%s\n', '    az deployment mg list : List deployments at management group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --management-group-id -m [Required] : The management group id.')
            fprintf('%s\n', '    --filter                  [Preview] : Filter expression using OData notation. You can')
            fprintf('%s\n', '                                          use --filter "provisioningState eq ''{state}''" to filter')
            fprintf('%s\n', '                                          provisioningState. To get more information, please visit')
            fprintf('%s\n', '                                          https://docs.microsoft.com/en-us/rest/api/resources/deploy')
            fprintf('%s\n', '                                          ments/listatsubscriptionscope#uri-parameters.')
            fprintf('%s\n', '        Argument ''--filter'' is in preview. It may be changed/removed in a future release.')
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
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List deployments at management group.')
            fprintf('%s\n', '        az deployment mg list -m testmg')
            fprintf('%s\n', 'For more specific examples, use: az find "az deployment mg list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 