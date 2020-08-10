classdef set < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = set()
            % az webapp config access-restriction set : Sets if SCM site is using the same restrictions as the
            % main site.
            % Command group 'webapp config access-restriction' is in preview. It may be
            % changed/removed in a future release.
            this.BaseCmd = 'az webapp config access-restriction set ';
        end
        function this = use_same_restrictions_for_scm_site(this, varargin)
            % Use same access restrictions for scm site. Allowed values: false, true.
            this.Options = [this.Options, '--use-same-restrictions-for-scm-site', varargin{:}];
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
            fprintf('%s\n', '    az webapp config access-restriction set : Sets if SCM site is using the same restrictions as the')
            fprintf('%s\n', '    main site.')
            fprintf('%s\n', '        Command group ''webapp config access-restriction'' is in preview. It may be')
            fprintf('%s\n', '        changed/removed in a future release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --use-same-restrictions-for-scm-site [Required] : Use same access restrictions for scm site.')
            fprintf('%s\n', '                                                      Allowed values: false, true.')
            fprintf('%s\n', '    --slot -s                                       : The name of the slot. Default to the')
            fprintf('%s\n', '                                                      productions slot if not specified.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                                           : One or more resource IDs (space-delimited). It')
            fprintf('%s\n', '                                                      should be a complete resource ID containing')
            fprintf('%s\n', '                                                      all information of ''Resource Id'' arguments.')
            fprintf('%s\n', '                                                      You should provide either --ids or other')
            fprintf('%s\n', '                                                      ''Resource Id'' arguments.')
            fprintf('%s\n', '    --name -n                                       : Name of the web app. You can configure the')
            fprintf('%s\n', '                                                      default using `az configure --defaults')
            fprintf('%s\n', '                                                      web=<name>`.')
            fprintf('%s\n', '    --resource-group -g                             : Name of resource group. You can configure the')
            fprintf('%s\n', '                                                      default group using `az configure --defaults')
            fprintf('%s\n', '                                                      group=<name>`.')
            fprintf('%s\n', '    --subscription                                  : Name or ID of subscription. You can configure')
            fprintf('%s\n', '                                                      the default subscription using `az account set')
            fprintf('%s\n', '                                                      -s NAME_OR_ID`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                         : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                      logs.')
            fprintf('%s\n', '    --help -h                                       : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                              : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                     : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                      none, table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                         : JMESPath query string. See')
            fprintf('%s\n', '                                                      http://jmespath.org/ for more information and')
            fprintf('%s\n', '                                                      examples.')
            fprintf('%s\n', '    --verbose                                       : Increase logging verbosity. Use --debug for')
            fprintf('%s\n', '                                                      full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Enable SCM site to use same access restrictions as main site.')
            fprintf('%s\n', '        az webapp config access-restriction set -g ResourceGroup -n AppName --use-same-restrictions-')
            fprintf('%s\n', '        for-scm-site true')
            fprintf('%s\n', 'For more specific examples, use: az find "az webapp config access-restriction set"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class set 
