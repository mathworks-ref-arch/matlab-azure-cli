classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az vm image list : List the VM/VMSS images available in the Azure Marketplace.
            this.BaseCmd = 'az vm image list ';
        end
        function this = all(this, varargin)
            % Retrieve image list from live Azure service rather using an offline image list.
            this.Options = [this.Options, '--all', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = offer(this, varargin)
            % Image offer name, partial name is accepted.
            this.Options = [this.Options, '--offer', varargin{:}];
        end

        function this = publisher(this, varargin)
            % Image publisher name, partial name is accepted.
            this.Options = [this.Options, '--publisher', varargin{:}];
        end

        function this = sku(this, varargin)
            % Image sku name, partial name is accepted.
            this.Options = [this.Options, '--sku', varargin{:}];
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
            fprintf('%s\n', '    az vm image list : List the VM/VMSS images available in the Azure Marketplace.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --all              : Retrieve image list from live Azure service rather using an offline image')
            fprintf('%s\n', '                         list.')
            fprintf('%s\n', '    --location -l      : Location. Values from: `az account list-locations`. You can configure the')
            fprintf('%s\n', '                         default location using `az configure --defaults location=<location>`.')
            fprintf('%s\n', '    --offer -f         : Image offer name, partial name is accepted.')
            fprintf('%s\n', '    --publisher -p     : Image publisher name, partial name is accepted.')
            fprintf('%s\n', '    --sku -s           : Image sku name, partial name is accepted.')
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
            fprintf('%s\n', '    List all available images.')
            fprintf('%s\n', '        az vm image list --all')
            fprintf('%s\n', '    List all offline cached CentOS images.')
            fprintf('%s\n', '        az vm image list -f CentOS')
            fprintf('%s\n', '    List all CentOS images.')
            fprintf('%s\n', '        az vm image list -f CentOS --all')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm image list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
