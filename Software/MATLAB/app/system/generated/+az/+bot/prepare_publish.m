classdef prepare_publish < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = prepare_publish()
            % az bot prepare-publish : (Maintenance mode) Add scripts to your local source code directory to
            % be able to publish back using `az bot publish` for v3 SDK bots.
            % This command is in preview. It may be changed/removed in a future release.
            this.BaseCmd = 'az bot prepare-publish ';
        end
        function this = name(this, varargin)
            % The resource name of the bot. Bot name must be between 4 and 42 characters in length. Bot name can only have the following characters -, a - z, A - Z, 0 - 9, and _.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = proj_file_path(this, varargin)
            % Path to the start up project file name. (E.g. "./EchoBotWithCounter.csproj") Required only for C#.
            this.Options = [this.Options, '--proj-file-path', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sln_name(this, varargin)
            % Name of the start up solution file name. Required only for C#.
            this.Options = [this.Options, '--sln-name', varargin{:}];
        end

        function this = code_dir(this, varargin)
            % The directory to download deployment scripts to. Web/Function bot Specific Arguments
            this.Options = [this.Options, '--code-dir', varargin{:}];
        end

        function this = version(this, varargin)
            % The Microsoft Bot Builder SDK version to be used in the bot template that will be created.  Allowed values: v3, v4. Default: v3.
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
            % Increase logging verbosity. Use --debug for full debug logs. For more specific examples, use: az find "az bot prepare-publish"
            this.Options = [this.Options, '--verbose', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az bot prepare-publish : (Maintenance mode) Add scripts to your local source code directory to')
            fprintf('%s\n', '    be able to publish back using `az bot publish` for v3 SDK bots.')
            fprintf('%s\n', '        This command is in preview. It may be changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The resource name of the bot. Bot name must be between 4 and 42')
            fprintf('%s\n', '                                     characters in length. Bot name can only have the following')
            fprintf('%s\n', '                                     characters -, a - z, A - Z, 0 - 9, and _.')
            fprintf('%s\n', '    --proj-file-path    [Required] : Path to the start up project file name. (E.g.')
            fprintf('%s\n', '                                     "./EchoBotWithCounter.csproj") Required only for C#.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sln-name          [Required] : Name of the start up solution file name. Required only for C#.')
            fprintf('%s\n', '    --code-dir                     : The directory to download deployment scripts to.')
            fprintf('%s\n', 'Web/Function bot Specific Arguments')
            fprintf('%s\n', '    --version -v                   : The Microsoft Bot Builder SDK version to be used in the bot')
            fprintf('%s\n', '                                     template that will be created.  Allowed values: v3, v4.')
            fprintf('%s\n', '                                     Default: v3.')
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
            fprintf('%s\n', 'For more specific examples, use: az find "az bot prepare-publish"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class prepare_publish 
