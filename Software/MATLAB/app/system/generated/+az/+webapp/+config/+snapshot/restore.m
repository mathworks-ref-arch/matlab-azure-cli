classdef restore < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = restore()
            % az webapp config snapshot restore : Restore a web app snapshot.
            this.BaseCmd = 'az webapp config snapshot restore ';
        end
        function this = time(this, varargin)
            % Timestamp of the snapshot to restore.
            this.Options = [this.Options, '--time', varargin{:}];
        end

        function this = restore_content_only(this, varargin)
            % Restore the web app files without restoring the settings.
            this.Options = [this.Options, '--restore-content-only', varargin{:}];
        end

        function this = slot(this, varargin)
            % The name of the slot.
            this.Options = [this.Options, '--slot', varargin{:}];
        end

        function this = source_name(this, varargin)
            % Name of the web app to retrieve snapshot from.
            this.Options = [this.Options, '--source-name', varargin{:}];
        end

        function this = source_resource_group(this, varargin)
            % Name of the resource group to retrieve snapshot from.
            this.Options = [this.Options, '--source-resource-group', varargin{:}];
        end

        function this = source_slot(this, varargin)
            % Name of the web app slot to retrieve snapshot from.
            this.Options = [this.Options, '--source-slot', varargin{:}];
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
            fprintf('%s\n', '    az webapp config snapshot restore : Restore a web app snapshot.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --time       [Required] : Timestamp of the snapshot to restore.')
            fprintf('%s\n', '    --restore-content-only  : Restore the web app files without restoring the settings.')
            fprintf('%s\n', '    --slot -s               : The name of the slot.')
            fprintf('%s\n', '    --source-name           : Name of the web app to retrieve snapshot from.')
            fprintf('%s\n', '    --source-resource-group : Name of the resource group to retrieve snapshot from.')
            fprintf('%s\n', '    --source-slot           : Name of the web app slot to retrieve snapshot from.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n               : Name of the web app. You can configure the default using `az configure')
            fprintf('%s\n', '                              --defaults web=<name>`.')
            fprintf('%s\n', '    --resource-group -g     : Name of resource group. You can configure the default group using `az')
            fprintf('%s\n', '                              configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription          : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                              using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                 : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h               : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors      : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o             : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                              yamlc.  Default: json.')
            fprintf('%s\n', '    --query                 : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                              and examples.')
            fprintf('%s\n', '    --verbose               : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Restore web app files from a snapshot. Overwrites the web app''s current files and settings.')
            fprintf('%s\n', '        az webapp config snapshot restore -g MyResourceGroup -n MySite --time')
            fprintf('%s\n', '        2018-12-11T23:34:16.8388367')
            fprintf('%s\n', '    Restore a snapshot of web app SourceApp to web app TargetApp. Use --restore-content-only to not')
            fprintf('%s\n', '    restore app settings. Overwrites TargetApp''s files.')
            fprintf('%s\n', '        az webapp config snapshot restore -g TargetResourceGroup -n TargetApp --source-name')
            fprintf('%s\n', '        SourceApp --source-resource-group OriginalResourceGroup --time 2018-12-11T23:34:16.8388367')
            fprintf('%s\n', '        --restore-content-only')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp config snapshot restore"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class restore 
