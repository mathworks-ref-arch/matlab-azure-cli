classdef restore < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = restore()
            % az webapp deleted restore : Restore a deleted web app.
            % Restores the files and settings of a deleted web app to the specified web app.
            % Command group 'webapp deleted' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az webapp deleted restore ';
        end
        function this = deleted_id(this, varargin)
            % Resource ID of the deleted web app.
            this.Options = [this.Options, '--deleted-id', varargin{:}];
        end

        function this = restore_content_only(this, varargin)
            % Restore only deleted files without web app settings.
            this.Options = [this.Options, '--restore-content-only', varargin{:}];
        end

        function this = slot(this, varargin)
            % Slot to restore the deleted content to.
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
            % Name of the web app to restore the deleted content to.
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
            fprintf('%s\n', '    az webapp deleted restore : Restore a deleted web app.')
            fprintf('%s\n', '        Restores the files and settings of a deleted web app to the specified web app.')
            fprintf('%s\n', '        Command group ''webapp deleted'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --deleted-id [Required] : Resource ID of the deleted web app.')
            fprintf('%s\n', '    --restore-content-only  : Restore only deleted files without web app settings.')
            fprintf('%s\n', '    --slot -s               : Slot to restore the deleted content to.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                   : One or more resource IDs (space-delimited). It should be a complete')
            fprintf('%s\n', '                              resource ID containing all information of ''Resource Id'' arguments. You')
            fprintf('%s\n', '                              should provide either --ids or other ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n               : Name of the web app to restore the deleted content to.')
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
            fprintf('%s\n', '    Restore a deleted app to the Staging slot of MySite.')
            fprintf('%s\n', '        az webapp deleted restore -g MyResourceGroup -n MySite -s Staging --deleted-id /subscription')
            fprintf('%s\n', '        s/00000000-0000-0000-0000-000000000000/providers/Microsoft.Web/locations/location/deletedSit')
            fprintf('%s\n', '        es/1234')
            fprintf('%s\n', '    Restore a deleted app to the app MySite. Do not restore the deleted app''s settings.')
            fprintf('%s\n', '        az webapp deleted restore -g MyResourceGroup -n MySite --deleted-id /subscriptions/00000000-')
            fprintf('%s\n', '        0000-0000-0000-000000000000/providers/Microsoft.Web/locations/location/deletedSites/1234')
            fprintf('%s\n', '        --restore-content-only')
            fprintf('%s\n', '    Restore a deleted web app. (autogenerated)')
            fprintf('%s\n', '        az webapp deleted restore --deleted-id /subscriptions/00000000-0000-0000-0000-000000000000/p')
            fprintf('%s\n', '        roviders/Microsoft.Web/deletedSites/1234 --name MySite --resource-group MyResourceGroup')
            fprintf('%s\n', '        --subscription MySubscription')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp deleted restore"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class restore 
