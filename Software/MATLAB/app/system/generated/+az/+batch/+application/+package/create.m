classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az batch application package create : Create a Batch application package record and activate it.
            this.BaseCmd = 'az batch application package create ';
        end
        function this = application_name(this, varargin)
            % The name of the application.
            this.Options = [this.Options, '--application-name', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the Batch account.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = package_file(this, varargin)
            % The path of the application package in zip format.
            this.Options = [this.Options, '--package-file', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of the resource group.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = version_name(this, varargin)
            % The version name of the application.
            this.Options = [this.Options, '--version-name', varargin{:}];
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az batch application package create"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az batch application package create : Create a Batch application package record and activate it.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --application-name  [Required] : The name of the application.')
            fprintf('%s\n', '    --name -n           [Required] : Name of the Batch account.')
            fprintf('%s\n', '    --package-file      [Required] : The path of the application package in zip format.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of the resource group.')
            fprintf('%s\n', '    --version-name      [Required] : The version name of the application.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az batch application package create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
