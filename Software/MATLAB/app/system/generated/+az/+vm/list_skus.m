classdef list_skus < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list_skus()
            % az vm list-skus : Get details for compute-related resource SKUs.
            % This command incorporates subscription level restriction, offering the most accurate
            % information.
            this.BaseCmd = 'az vm list-skus ';
        end
        function this = all(this, varargin)
            % Show all information including vm sizes not available under the current subscription.  Allowed values: false, true.
            this.Options = [this.Options, '--all', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % Resource types e.g. "availabilitySets", "snapshots", "disks", etc.
            this.Options = [this.Options, '--resource-type', varargin{:}];
        end

        function this = size_(this, varargin)
            % Size name, partial name is accepted.
            this.Options = [this.Options, '--size', varargin{:}];
        end

        function this = zone(this, varargin)
            % Show skus supporting availability zones.  Allowed values: false, true.
            this.Options = [this.Options, '--zone', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
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
            fprintf('%s\n', '    az vm list-skus : Get details for compute-related resource SKUs.')
            fprintf('%s\n', '        This command incorporates subscription level restriction, offering the most accurate')
            fprintf('%s\n', '        information.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --all              : Show all information including vm sizes not available under the current')
            fprintf('%s\n', '                         subscription.  Allowed values: false, true.')
            fprintf('%s\n', '    --location -l      : Location. Values from: `az account list-locations`. You can configure the')
            fprintf('%s\n', '                         default location using `az configure --defaults location=<location>`.')
            fprintf('%s\n', '    --resource-type -r : Resource types e.g. "availabilitySets", "snapshots", "disks", etc.')
            fprintf('%s\n', '    --size -s          : Size name, partial name is accepted.')
            fprintf('%s\n', '    --zone -z          : Show skus supporting availability zones.  Allowed values: false, true.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    List all SKUs in the West US region.')
            fprintf('%s\n', '        az vm list-skus -l westus')
            fprintf('%s\n', '    List all available vm sizes in the East US2 region which support availability zone.')
            fprintf('%s\n', '        az vm list-skus -l eastus2 --zone')
            fprintf('%s\n', '    List all available vm sizes in the East US2 region which support availability zone with name')
            fprintf('%s\n', '    like "standard_ds1...".')
            fprintf('%s\n', '        az vm list-skus -l eastus2 --zone --size standard_ds1')
            fprintf('%s\n', '    List availability set related sku information in The West US region.')
            fprintf('%s\n', '        az vm list-skus -l westus --resource-type availabilitySets')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm list-skus"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list_skus 
