classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az eventgrid domain topic list : List available topics in a domain.
            this.BaseCmd = 'az eventgrid domain topic list ';
        end
        function this = domain_name(this, varargin)
            % Name of the domain.
            this.Options = [this.Options, '--domain-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = odata_query(this, varargin)
            % The OData query used for filtering the list results. Filtering is currently allowed on the Name property only. The supported operations include: CONTAINS, eq (for equal), ne (for not equal), AND, OR and NOT.
            this.Options = [this.Options, '--odata-query', varargin{:}];
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
            fprintf('%s\n', '    az eventgrid domain topic list : List available topics in a domain.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --domain-name       [Required] : Name of the domain.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --odata-query                  : The OData query used for filtering the list results. Filtering')
            fprintf('%s\n', '                                     is currently allowed on the Name property only. The supported')
            fprintf('%s\n', '                                     operations include: CONTAINS, eq (for equal), ne (for not')
            fprintf('%s\n', '                                     equal), AND, OR and NOT.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List all topics in a domain.')
            fprintf('%s\n', '        az eventgrid domain topic list -g rg1 --domain-name domain1')
            fprintf('%s\n', '    List all domain topics in a domain whose name contains the pattern "XYZ"')
            fprintf('%s\n', '        az eventgrid domain topic list -g rg1 --domain-name domain1 --odata-query "Contains(name,')
            fprintf('%s\n', '        ''XYZ'')"')
            fprintf('%s\n', '    List all domain topics in a domain except the domain topic with name "name1"')
            fprintf('%s\n', '        az eventgrid domain topic list -g rg1 --domain-name domain1 --odata-query "NOT (name eq')
            fprintf('%s\n', '        ''name1'')"')
            fprintf('%s\n', 'For more specific examples, use: az find "az eventgrid domain topic list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
