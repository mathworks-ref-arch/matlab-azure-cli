classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az lab vm list : List the VMs in an Azure DevTest Lab.
            % Command group 'lab' is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az lab vm list ';
        end
        function this = lab_name(this, varargin)
            % Name of the lab.
            this.Options = [this.Options, '--lab-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = all(this, varargin)
            % List all virtual machines in the lab. Cannot be used with `--filters`.
            this.Options = [this.Options, '--all', varargin{:}];
        end

        function this = claimable(this, varargin)
            % List only claimable virtual machines in the lab. Cannot be used with `--filters`.
            this.Options = [this.Options, '--claimable', varargin{:}];
        end

        function this = expand(this, varargin)
            % The expand query.
            this.Options = [this.Options, '--expand', varargin{:}];
        end

        function this = object_id(this, varargin)
            % Object ID of the owner to list VMs for.
            this.Options = [this.Options, '--object-id', varargin{:}];
        end

        function this = order_by(this, varargin)
            % The ordering expression for the results using OData notation.
            this.Options = [this.Options, '--order-by', varargin{:}];
        end

        function this = top(this, varargin)
            % The maximum number of resources to return. Filter Arguments
            this.Options = [this.Options, '--top', varargin{:}];
        end

        function this = environment(this, varargin)
            % Name or ID of the environment to list virtual machines in. Cannot be used with `--filters`.
            this.Options = [this.Options, '--environment', varargin{:}];
        end

        function this = filters(this, varargin)
            % The filter to apply.
            this.Options = [this.Options, '--filters', varargin{:}];
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
            fprintf('%s\n', '    az lab vm list : List the VMs in an Azure DevTest Lab.')
            fprintf('%s\n', '        Command group ''lab'' is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --lab-name          [Required] : Name of the lab.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --all                          : List all virtual machines in the lab. Cannot be used with')
            fprintf('%s\n', '                                     `--filters`.')
            fprintf('%s\n', '    --claimable                    : List only claimable virtual machines in the lab. Cannot be used')
            fprintf('%s\n', '                                     with `--filters`.')
            fprintf('%s\n', '    --expand                       : The expand query.')
            fprintf('%s\n', '    --object-id                    : Object ID of the owner to list VMs for.')
            fprintf('%s\n', '    --order-by                     : The ordering expression for the results using OData notation.')
            fprintf('%s\n', '    --top                          : The maximum number of resources to return.')
            fprintf('%s\n', 'Filter Arguments')
            fprintf('%s\n', '    --environment                  : Name or ID of the environment to list virtual machines in.')
            fprintf('%s\n', '                                     Cannot be used with `--filters`.')
            fprintf('%s\n', '    --filters                      : The filter to apply.')
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
            fprintf('%s\n', '    List the VMs in an Azure DevTest Lab. (autogenerated)')
            fprintf('%s\n', '        az lab vm list --lab-name MyLab --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az lab vm list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
