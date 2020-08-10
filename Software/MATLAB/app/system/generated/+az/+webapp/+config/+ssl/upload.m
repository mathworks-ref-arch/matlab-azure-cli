classdef upload < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = upload()
            % az webapp config ssl upload : Upload an SSL certificate to a web app.
            this.BaseCmd = 'az webapp config ssl upload ';
        end
        function this = certificate_file(this, varargin)
            % The filepath for the .pfx file.
            this.Options = [this.Options, '--certificate-file', varargin{:}];
        end

        function this = certificate_password(this, varargin)
            % The ssl cert password.
            this.Options = [this.Options, '--certificate-password', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot. Default to the productions slot if not specified.
            this.Options = [this.Options, '--slot', varargin{:}];
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

        function this = ids(this, varargin)
            % One or more resource IDs (space-delimited). It should be a complete resource ID containing all information of 'Resource Id' arguments. You should provide either --ids or other 'Resource Id' arguments.
            this.Options = [this.Options, '--ids', varargin{:}];
        end

        function this = name(this, varargin)
            % Name of the web app. You can configure the default using `az configure --defaults web=<name>`.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`.
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az webapp config ssl upload : Upload an SSL certificate to a web app.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --certificate-file     [Required] : The filepath for the .pfx file.')
            fprintf('%s\n', '    --certificate-password [Required] : The ssl cert password.')
            fprintf('%s\n', '    --slot -s                         : The name of the slot. Default to the productions slot if not')
            fprintf('%s\n', '                                        specified.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                             : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                        complete resource ID containing all information of ''Resource')
            fprintf('%s\n', '                                        Id'' arguments. You should provide either --ids or other')
            fprintf('%s\n', '                                        ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                         : Name of the web app. You can configure the default using `az')
            fprintf('%s\n', '                                        configure --defaults web=<name>`.')
            fprintf('%s\n', '    --resource-group -g               : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                        using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Upload an SSL certificate to a web app. (autogenerated)')
            fprintf('%s\n', '        az webapp config ssl upload --certificate-file {certificate-file} --certificate-password')
            fprintf('%s\n', '        {certificate-password} --name MyWebapp     --resource-group MyResourceGroup')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp config ssl upload"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class upload 
