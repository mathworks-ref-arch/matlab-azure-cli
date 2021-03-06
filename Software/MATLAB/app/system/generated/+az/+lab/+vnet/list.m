classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az lab vnet list : List virtual networks in a given lab.
            % Command group 'lab' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az lab vnet list ';
        end
        function this = lab_name(this, varargin)
            % The name of the lab.
            this.Options = [this.Options, '--lab-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = expand(this, varargin)
            % Specify the $expand query. Example: 'properties($expand=externalSubnets)'.
            this.Options = [this.Options, '--expand', varargin{:}];
        end

        function this = filter(this, varargin)
            % The filter to apply to the operation. Example: '$filter=contains(name,'myName').
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = orderby(this, varargin)
            % The ordering expression for the results, using OData notation. Example: '$orderby=name desc'.
            this.Options = [this.Options, '--orderby', varargin{:}];
        end

        function this = top(this, varargin)
            % The maximum number of resources to return from the operation. Example: '$top=10'.
            this.Options = [this.Options, '--top', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az lab vnet list"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az lab vnet list : List virtual networks in a given lab.')
            fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --lab-name          [Required] : The name of the lab.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --expand                       : Specify the $expand query. Example:')
            fprintf('%s\n', '                                     ''properties($expand=externalSubnets)''.')
            fprintf('%s\n', '    --filter                       : The filter to apply to the operation. Example:')
            fprintf('%s\n', '                                     ''$filter=contains(name,''myName'').')
            fprintf('%s\n', '    --orderby                      : The ordering expression for the results, using OData notation.')
            fprintf('%s\n', '                                     Example: ''$orderby=name desc''.')
            fprintf('%s\n', '    --top                          : The maximum number of resources to return from the operation.')
            fprintf('%s\n', '                                     Example: ''$top=10''.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az lab vnet list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
