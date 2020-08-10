classdef list_versions < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list_versions()
            % az vm extension image list-versions : List the versions for available extensions.
            this.BaseCmd = 'az vm extension image list-versions ';
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

        function this = filter(this, varargin)
            % The filter to apply on the operation.
            this.Options = [this.Options, '--filter', varargin{:}];
        end

        function this = orderby(this, varargin)
            % The $orderby odata query option.
            this.Options = [this.Options, '--orderby', varargin{:}];
        end

        function this = top(this, varargin)
            % The $top odata query option.
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
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az vm extension image list-versions : List the versions for available extensions.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --location -l  [Required] : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                location=<location>`.')
            fprintf('%s\n', '    --name -n      [Required] : Name of the extension.')
            fprintf('%s\n', '    --publisher -p [Required] : Image publisher name.')
            fprintf('%s\n', '    --filter                  : The filter to apply on the operation.')
            fprintf('%s\n', '    --orderby                 : The $orderby odata query option.')
            fprintf('%s\n', '    --top                     : The $top odata query option.')
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
            fprintf('%s\n', '    Find the available versions for the Docker extension.')
            fprintf('%s\n', '        az vm extension image list-versions --publisher Microsoft.Azure.Extensions \')
            fprintf('%s\n', '            -l westus -n DockerExtension -otable')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm extension image list-versions"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list_versions 
