classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az deployment group create : Start a deployment at resource group.
            this.BaseCmd = 'az deployment group create ';
        end
        function this = resource_group(this, varargin)
            % The resource group to create deployment at.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = aux_subs(this, varargin)
            % Auxiliary subscriptions which will be used during deployment across tenants. Option '--aux-subs' has been deprecated and will be removed in a future release. Use ' --aux-tenants' instead.
            this.Options = [this.Options, '--aux-subs', varargin{:}];
        end

        function this = aux_tenants(this, varargin)
            % Auxiliary tenants which will be used during deployment across tenants.
            this.Options = [this.Options, '--aux-tenants', varargin{:}];
        end

        function this = confirm_with_what_if(this, varargin)
            % Instruct the command to run deployment What-If before executing the deployment. It then prompts you to acknowledge resource changes before it continues. Argument '--confirm-with-what-if' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--confirm-with-what-if', varargin{:}];
        end

        function this = handle_extended_json_format(this, varargin)
            % Support to handle extended template content including multiline and comments in deployment. Option '--handle-extended-json-format/-j' has been deprecated and will be removed in a future release.
            this.Options = [this.Options, '--handle-extended-json-format', varargin{:}];
        end

        function this = mode(this, varargin)
            % The deployment mode.  Allowed values: Complete, Incremental.  Default: Incremental.
            this.Options = [this.Options, '--mode', varargin{:}];
        end

        function this = name(this, varargin)
            % The deployment name.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = no_prompt(this, varargin)
            % The option to disable the prompt of missing parameters for ARM template. When the value is true, the prompt requiring users to provide missing parameter will be ignored. The default value is false.  Allowed values: false, true.
            this.Options = [this.Options, '--no-prompt', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = parameters(this, varargin)
            % Supply deployment parameter values. Parameters may be supplied from a file using the `@{path}` syntax, a JSON string, or as <KEY=VALUE> pairs. Parameters are evaluated in order, so when a value is assigned twice, the latter value will be used. It is recommended that you supply your parameters file first, and then override selectively using KEY=VALUE syntax.
            this.Options = [this.Options, '--parameters', varargin{:}];
        end

        function this = rollback_on_error(this, varargin)
            % The name of a deployment to roll back to on error, or use as a flag to roll back to the last successful deployment.
            this.Options = [this.Options, '--rollback-on-error', varargin{:}];
        end

        function this = template_file(this, varargin)
            % The path to the template file.
            this.Options = [this.Options, '--template-file', varargin{:}];
        end

        function this = template_uri(this, varargin)
            % The URI to the template file.
            this.Options = [this.Options, '--template-uri', varargin{:}];
        end

        function this = what_if_exclude_change_types(this, varargin)
            % Space-separated list of resource change types to be excluded from What-If results. Applicable when --confirm-with-what-if is set.  Allowed values: Create, Delete, Deploy, Ignore, Modify, NoChange. Argument '--what-if-exclude-change-types' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--what-if-exclude-change-types', varargin{:}];
        end

        function this = what_if_result_format(this, varargin)
            % The format of What-If results. Applicable when `--confirm-with-what-if` is set. Allowed values: FullResourcePayloads, ResourceIdOnly.  Default: FullResourcePayloads. Argument '--what-if-result-format' is in preview. It may be changed/removed in a future release.
            this.Options = [this.Options, '--what-if-result-format', varargin{:}];
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
            fprintf('%s\n', '    az deployment group create : Start a deployment at resource group.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --resource-group -g                [Required] : The resource group to create deployment at.')
            fprintf('%s\n', '    --aux-subs                       [Deprecated] : Auxiliary subscriptions which will be')
            fprintf('%s\n', '                                                    used during deployment across tenants.')
            fprintf('%s\n', '        Option ''--aux-subs'' has been deprecated and will be removed in a future release. Use ''')
            fprintf('%s\n', '        --aux-tenants'' instead.')
            fprintf('%s\n', '    --aux-tenants                                 : Auxiliary tenants which will be used during')
            fprintf('%s\n', '                                                    deployment across tenants.')
            fprintf('%s\n', '    --confirm-with-what-if -c           [Preview] : Instruct the command to run deployment')
            fprintf('%s\n', '                                                    What-If before executing the deployment. It then')
            fprintf('%s\n', '                                                    prompts you to acknowledge resource changes')
            fprintf('%s\n', '                                                    before it continues.')
            fprintf('%s\n', '        Argument ''--confirm-with-what-if'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', '    --handle-extended-json-format -j [Deprecated] : Support to handle extended template')
            fprintf('%s\n', '                                                    content including multiline and comments in')
            fprintf('%s\n', '                                                    deployment.')
            fprintf('%s\n', '        Option ''--handle-extended-json-format/-j'' has been deprecated and will be removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --mode                                        : The deployment mode.  Allowed values: Complete,')
            fprintf('%s\n', '                                                    Incremental.  Default: Incremental.')
            fprintf('%s\n', '    --name -n                                     : The deployment name.')
            fprintf('%s\n', '    --no-prompt                                   : The option to disable the prompt of missing')
            fprintf('%s\n', '                                                    parameters for ARM template. When the value is')
            fprintf('%s\n', '                                                    true, the prompt requiring users to provide')
            fprintf('%s\n', '                                                    missing parameter will be ignored. The default')
            fprintf('%s\n', '                                                    value is false.  Allowed values: false, true.')
            fprintf('%s\n', '    --no-wait                                     : Do not wait for the long-running operation to')
            fprintf('%s\n', '                                                    finish.')
            fprintf('%s\n', '    --parameters -p                               : Supply deployment parameter values.')
            fprintf('%s\n', '        Parameters may be supplied from a file using the `@{path}` syntax, a JSON string, or as')
            fprintf('%s\n', '        <KEY=VALUE> pairs. Parameters are evaluated in order, so when a value is assigned twice, the')
            fprintf('%s\n', '        latter value will be used. It is recommended that you supply your parameters file first, and')
            fprintf('%s\n', '        then override selectively using KEY=VALUE syntax.')
            fprintf('%s\n', '    --rollback-on-error                           : The name of a deployment to roll back to on')
            fprintf('%s\n', '                                                    error, or use as a flag to roll back to the last')
            fprintf('%s\n', '                                                    successful deployment.')
            fprintf('%s\n', '    --template-file -f                            : The path to the template file.')
            fprintf('%s\n', '    --template-uri -u                             : The URI to the template file.')
            fprintf('%s\n', '    --what-if-exclude-change-types -x   [Preview] : Space-separated list of resource')
            fprintf('%s\n', '                                                    change types to be excluded from What-If')
            fprintf('%s\n', '                                                    results. Applicable when --confirm-with-what-if')
            fprintf('%s\n', '                                                    is set.  Allowed values: Create, Delete, Deploy,')
            fprintf('%s\n', '                                                    Ignore, Modify, NoChange.')
            fprintf('%s\n', '        Argument ''--what-if-exclude-change-types'' is in preview. It may be changed/removed in a')
            fprintf('%s\n', '        future release.')
            fprintf('%s\n', '    --what-if-result-format -r          [Preview] : The format of What-If results.')
            fprintf('%s\n', '                                                    Applicable when `--confirm-with-what-if` is set.')
            fprintf('%s\n', '                                                    Allowed values: FullResourcePayloads,')
            fprintf('%s\n', '                                                    ResourceIdOnly.  Default: FullResourcePayloads.')
            fprintf('%s\n', '        Argument ''--what-if-result-format'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                       : Increase logging verbosity to show all debug')
            fprintf('%s\n', '                                                    logs.')
            fprintf('%s\n', '    --help -h                                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                                   : Output format.  Allowed values: json, jsonc,')
            fprintf('%s\n', '                                                    none, table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                       : JMESPath query string. See http://jmespath.org/')
            fprintf('%s\n', '                                                    for more information and examples.')
            fprintf('%s\n', '    --subscription                                : Name or ID of subscription. You can configure')
            fprintf('%s\n', '                                                    the default subscription using `az account set')
            fprintf('%s\n', '                                                    -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                     : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                                    debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a deployment at resource group from a remote template file, using parameters from a local')
            fprintf('%s\n', '    JSON file.')
            fprintf('%s\n', '        az deployment group create --resource-group testrg --name rollout01 \')
            fprintf('%s\n', '            --template-uri https://myresource/azuredeploy.json --parameters @myparameters.json')
            fprintf('%s\n', '    Create a deployment at resource group from a local template file, using parameters from a JSON')
            fprintf('%s\n', '    string.')
            fprintf('%s\n', '        az deployment group create --resource-group testrg --name rollout01 \')
            fprintf('%s\n', '            --template-file azuredeploy.json  \')
            fprintf('%s\n', '            --parameters ''{ \"policyName\": { \"value\": \"policy2\" } }''')
            fprintf('%s\n', '    Create a deployment at resource group from a local template file, using parameters from an array')
            fprintf('%s\n', '    string.')
            fprintf('%s\n', '        az deployment group create --resource-group testgroup --template-file demotemplate.json')
            fprintf('%s\n', '        --parameters exampleString=''inline string'' exampleArray=''("value1", "value2")''')
            fprintf('%s\n', '    Create a deployment at resource group from a local template, using a parameter file, a remote')
            fprintf('%s\n', '    parameter file, and selectively overriding key/value pairs.')
            fprintf('%s\n', '        az deployment group create --resource-group testrg --name rollout01 \')
            fprintf('%s\n', '            --template-file azuredeploy.json  --parameters @params.json \')
            fprintf('%s\n', '            --parameters https://mysite/params.json --parameters MyValue=This MyArray=@array.json')
            fprintf('%s\n', 'For more specific examples, use: az find "az deployment group create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
