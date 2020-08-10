classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az vm image show : Get the details for a VM image available in the Azure Marketplace.
            this.BaseCmd = 'az vm image show ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = offer(this, varargin)
            % Image offer.
            this.Options = [this.Options, '--offer', varargin{:}];
        end

        function this = publisher(this, varargin)
            % Image publisher.
            this.Options = [this.Options, '--publisher', varargin{:}];
        end

        function this = sku(this, varargin)
            % Image sku.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = urn(this, varargin)
            % URN, in format of 'publisher:offer:sku:version'. If specified, other argument values can be omitted.
            this.Options = [this.Options, '--urn', varargin{:}];
        end

        function this = version(this, varargin)
            % Image sku's version.
            this.Options = [this.Options, '--version', varargin{:}];
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
            fprintf('%s\n', '    az vm image show : Get the details for a VM image available in the Azure Marketplace.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l      : Location. Values from: `az account list-locations`. You can configure the')
            fprintf('%s\n', '                         default location using `az configure --defaults location=<location>`.')
            fprintf('%s\n', '    --offer -f         : Image offer.')
            fprintf('%s\n', '    --publisher -p     : Image publisher.')
            fprintf('%s\n', '    --sku -s           : Image sku.')
            fprintf('%s\n', '    --urn              : URN, in format of ''publisher:offer:sku:version''. If specified, other')
            fprintf('%s\n', '                         argument values can be omitted.')
            fprintf('%s\n', '    --version          : Image sku''s version.')
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
            fprintf('%s\n', '    Show information for the latest available CentOS image from OpenLogic.')
            fprintf('%s\n', '        latest=$(az vm image list -p OpenLogic -s 7.3 --all --query \')
            fprintf('%s\n', '            "[?offer==''CentOS''].version" -o tsv | sort -u | tail -n 1)')
            fprintf('%s\n', '        az vm image show -l westus -f CentOS -p OpenLogic --sku 7.3 --version {latest}')
            fprintf('%s\n', '    Get the details for a VM image available in the Azure Marketplace. (autogenerated)')
            fprintf('%s\n', '        az vm image show --location westus --urn publisher:offer:sku:version')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm image show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
