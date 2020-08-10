classdef show < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = show()
            % az vm extension image show : Display information for an extension.
            this.BaseCmd = 'az vm extension image show ';
        end
        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the extension.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = publisher(this, varargin)
            % Image publisher name.
            this.Options = [this.Options, '--publisher', varargin{:}];
        end

        function this = version(this, varargin)
            % Extension version.
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
            fprintf('%s\n', '    az vm extension image show : Display information for an extension.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l  [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                location=<location>`.')
            fprintf('%s\n', '    --name -n      [Required] : Name of the extension.')
            fprintf('%s\n', '    --publisher -p [Required] : Image publisher name.')
            fprintf('%s\n', '    --version      [Required] : Extension version.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                   : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                 : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors        : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o               : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                                yamlc.  Default: json.')
            fprintf('%s\n', '    --query                   : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                                and examples.')
            fprintf('%s\n', '    --subscription            : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                 : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Show the CustomScript extension version 2.0.2.')
            fprintf('%s\n', '        az vm extension image show -l westus -n CustomScript \')
            fprintf('%s\n', '          --publisher Microsoft.Azure.Extensions --version 2.0.2')
            fprintf('%s\n', '    Show the latest version of the Docker extension.')
            fprintf('%s\n', '        publisher=Microsoft.Azure.Extensions')
            fprintf('%s\n', '        extension=DockerExtension')
            fprintf('%s\n', '        location=westus')
            fprintf('%s\n', '        latest=$(az vm extension image list-versions \')
            fprintf('%s\n', '          --publisher {publisher} -l {location} -n {extension} \')
            fprintf('%s\n', '          --query "[].name" -o tsv | sort | tail -n 1)')
            fprintf('%s\n', '        az vm extension image show -l {location} \')
            fprintf('%s\n', '          --publisher {publisher} -n {extension} --version {latest}')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm extension image show"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class show 
