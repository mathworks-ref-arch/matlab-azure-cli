classdef install_cli < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = install_cli()
            % az acr helm install-cli : Download and install Helm command-line tool.
            % This command is implicitly deprecated because command group 'acr helm' is deprecated
            % and will be removed in a future release. Use 'helm v3' instead.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az acr helm install-cli ';
        end
        function this = client_version(this, varargin)
            % The target Helm CLI version. (Attention: Currently, Helm 3 does not work with "az acr helm" commands).  Default: 2.16.3.
            this.Options = [this.Options, '--client-version', varargin{:}];
        end

        function this = install_location(this, varargin)
            % Path at which to install Helm CLI (Existing one at the same path will be overwritten).  Default: /usr/local/bin/helm.
            this.Options = [this.Options, '--install-location', varargin{:}];
        end

        function this = yes(this, varargin)
            % Agree to the license of Helm, and do not prompt for confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            fprintf('%s\n', '    az acr helm install-cli : Download and install Helm command-line tool.')
            fprintf('%s\n', '        This command is implicitly deprecated because command group ''acr helm'' is deprecated')
            fprintf('%s\n', '        and will be removed in a future release. Use ''helm v3'' instead.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --client-version   : The target Helm CLI version. (Attention: Currently, Helm 3 does not work')
            fprintf('%s\n', '                         with "az acr helm" commands).  Default: 2.16.3.')
            fprintf('%s\n', '    --install-location : Path at which to install Helm CLI (Existing one at the same path will be')
            fprintf('%s\n', '                         overwritten).  Default: /usr/local/bin/helm.')
            fprintf('%s\n', '    --yes -y           : Agree to the license of Helm, and do not prompt for confirmation.')
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
            fprintf('%s\n', '    Install the default version of Helm CLI to the default location')
            fprintf('%s\n', '        az acr helm install-cli')
            fprintf('%s\n', '    Install a specified version of Helm CLI to the default location')
            fprintf('%s\n', '        az acr helm install-cli --client-version x.x.x')
            fprintf('%s\n', '    Install the default version of Helm CLI to a specified location')
            fprintf('%s\n', '        az acr helm install-cli --install-location /folder/filename')
            fprintf('%s\n', '    Install a specified version of Helm CLI to a specified location')
            fprintf('%s\n', '        az acr helm install-cli --client-version x.x.x --install-location /folder/filename')
            fprintf('%s\n', 'For more specific examples, use: az find "az acr helm install-cli"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class install_cli 
