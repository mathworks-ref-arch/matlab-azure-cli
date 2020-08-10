classdef list < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = list()
            % az vm extension image list : List the information on available extensions.
            this.BaseCmd = 'az vm extension image list ';
        end
        function this = latest(this, varargin)
            % Show the latest version only.
            this.Options = [this.Options, '--latest', varargin{:}];
        end

        function this = location(this, varargin)
            % Image location.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = name(this, varargin)
            % Image name.
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
            fprintf('%s\n', '    az vm extension image list : List the information on available extensions.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --latest           : Show the latest version only.')
            fprintf('%s\n', '    --location -l      : Image location.')
            fprintf('%s\n', '    --name -n          : Image name.')
            fprintf('%s\n', '    --publisher -p     : Image publisher name.')
            fprintf('%s\n', '    --version          : Extension version.')
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
            fprintf('%s\n', '    List the unique publishers for extensions.')
            fprintf('%s\n', '        az vm extension image list --query "[].publisher" -o tsv | sort -u')
            fprintf('%s\n', '    Find extensions with "Docker" in the name.')
            fprintf('%s\n', '        az vm extension image list --query "[].name" -o tsv | sort -u | grep Docker')
            fprintf('%s\n', '    List extension names where the publisher name starts with "Microsoft.Azure.App".')
            fprintf('%s\n', '        az vm extension image list --query \')
            fprintf('%s\n', '            "[?starts_with(publisher, ''Microsoft.Azure.App'')].publisher" \')
            fprintf('%s\n', '            -o tsv | sort -u | xargs -I{} az vm extension image list-names --publisher {} -l westus')
            fprintf('%s\n', 'For more specific examples, use: az find "az vm extension image list"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class list 
