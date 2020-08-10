classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az extension add : Add an extension.
            this.BaseCmd = 'az extension add ';
        end
        function this = name(this, varargin)
            % Name of extension.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = source(this, varargin)
            % Filepath or URL to an extension.
            this.Options = [this.Options, '--source', varargin{:}];
        end

        function this = system(this, varargin)
            % Use a system directory for the extension. Default path is azure-cli-extensions folder under the CLI running python environment lib path, configurable by environment variable AZURE_EXTENSION_SYS_DIR. On Windows, you may need to open your shell as Administrator to run with the right permission.
            this.Options = [this.Options, '--system', varargin{:}];
        end

        function this = version(this, varargin)
            % The specific version of an extension.  Default: latest.
            this.Options = [this.Options, '--version', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation. Experimental Pip Arguments
            this.Options = [this.Options, '--yes', varargin{:}];
        end

        function this = pip_extra_index_urls(this, varargin)
            % Space-separated list of extra URLs of package indexes to use. This should point to a repository compliant with PEP 503 (the simple repository API) or a local directory laid out in the same format.
            this.Options = [this.Options, '--pip-extra-index-urls', varargin{:}];
        end

        function this = pip_proxy(this, varargin)
            % Proxy for pip to use for extension dependencies in the form of [user:passwd@]proxy.server:port.
            this.Options = [this.Options, '--pip-proxy', varargin{:}];
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

        function this = verbose(this, varargin)
            % Increase logging verbosity. Use --debug for full debug logs.
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az extension add : Add an extension.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n              : Name of extension.')
            fprintf('%s\n', '    --source -s            : Filepath or URL to an extension.')
            fprintf('%s\n', '    --system               : Use a system directory for the extension.')
            fprintf('%s\n', '        Default path is azure-cli-extensions folder under the CLI running python environment lib')
            fprintf('%s\n', '        path, configurable by environment variable AZURE_EXTENSION_SYS_DIR. On Windows, you may need')
            fprintf('%s\n', '        to open your shell as Administrator to run with the right permission.')
            fprintf('%s\n', '    --version              : The specific version of an extension.  Default: latest.')
            fprintf('%s\n', '    --yes -y               : Do not prompt for confirmation.')
            fprintf('%s\n', 'Experimental Pip Arguments')
            fprintf('%s\n', '    --pip-extra-index-urls : Space-separated list of extra URLs of package indexes to use. This')
            fprintf('%s\n', '                             should point to a repository compliant with PEP 503 (the simple')
            fprintf('%s\n', '                             repository API) or a local directory laid out in the same format.')
            fprintf('%s\n', '    --pip-proxy            : Proxy for pip to use for extension dependencies in the form of')
            fprintf('%s\n', '                             [user:passwd@]proxy.server:port.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h              : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors     : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o            : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                             yamlc.  Default: json.')
            fprintf('%s\n', '    --query                : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                             and examples.')
            fprintf('%s\n', '    --verbose              : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add extension by name')
            fprintf('%s\n', '        az extension add --name anextension')
            fprintf('%s\n', '    Add extension from URL')
            fprintf('%s\n', '        az extension add --source https://contoso.com/anextension-0.0.1-py2.py3-none-any.whl')
            fprintf('%s\n', '    Add extension from local disk')
            fprintf('%s\n', '        az extension add --source ~/anextension-0.0.1-py2.py3-none-any.whl')
            fprintf('%s\n', '    Add extension from local disk and use pip proxy for dependencies')
            fprintf('%s\n', '        az extension add --source ~/anextension-0.0.1-py2.py3-none-any.whl --pip-proxy')
            fprintf('%s\n', '        https://user:pass@proxy.server:8080')
            fprintf('%s\n', '    Add extension to system directory')
            fprintf('%s\n', '        az extension add --name anextension --system')
            fprintf('%s\n', 'For more specific examples, use: az find "az extension add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
