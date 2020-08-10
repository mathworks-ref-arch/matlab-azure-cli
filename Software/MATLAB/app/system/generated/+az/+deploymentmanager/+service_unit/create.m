classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az deploymentmanager service-unit create : Creates a service unit under the specified service
            % and service topology.
            % Command group 'deploymentmanager' is in preview. It may be changed/removed in a future
            % release.
            this.BaseCmd = 'az deploymentmanager service-unit create ';
        end
        function this = parameters_path(this, varargin)
            % The path to the ARM parameters file. Either the full SAS Uri or the relative path in the artifact source for this topology.
            this.Options = [this.Options, '--parameters-path', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = template_path(this, varargin)
            % The path to the ARM template file. Either the full SAS Uri or the relative path in the artifact source for this topology.
            this.Options = [this.Options, '--template-path', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`. Named Arguments
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = deployment_mode(this, varargin)
            % The type of depoyment mode to be used when deploying the service unit. Possible values: Incremental, Complete.  Allowed values: Complete, Incremental. Default: DeploymentMode.incremental.
            this.Options = [this.Options, '--deployment-mode', varargin{:}];
        end

        function this = name(this, varargin)
            % The name of the service unit.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = service_name(this, varargin)
            % The name of the service.
            this.Options = [this.Options, '--service-name', varargin{:}];
        end

        function this = service_topology_name(this, varargin)
            % The name of the service topology.
            this.Options = [this.Options, '--service-topology-name', varargin{:}];
        end

        function this = target_resource_group(this, varargin)
            % The resource group where the resources in the service unit should be deployed to.
            this.Options = [this.Options, '--target-resource-group', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--tags', varargin{:}];
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
            fprintf('%s\n', '    az deploymentmanager service-unit create : Creates a service unit under the specified service')
            fprintf('%s\n', '    and service topology.')
            fprintf('%s\n', '        Command group ''deploymentmanager'' is in preview. It may be changed/removed in a future')
            fprintf('%s\n', '        release.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --parameters-path             [Required] : The path to the ARM parameters file. Either the full')
            fprintf('%s\n', '                                               SAS Uri or the relative path in the artifact source')
            fprintf('%s\n', '                                               for this topology.')
            fprintf('%s\n', '    --resource-group -g           [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                               group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --template-path               [Required] : The path to the ARM template file. Either the full')
            fprintf('%s\n', '                                               SAS Uri or the relative path in the artifact source')
            fprintf('%s\n', '                                               for this topology.')
            fprintf('%s\n', '    --location -l                            : Location. Values from: `az account list-locations`.')
            fprintf('%s\n', '                                               You can configure the default location using `az')
            fprintf('%s\n', '                                               configure --defaults location=<location>`.')
            fprintf('%s\n', 'Named Arguments')
            fprintf('%s\n', '    --deployment-mode             [Required] : The type of depoyment mode to be used when deploying')
            fprintf('%s\n', '                                               the service unit. Possible values: Incremental,')
            fprintf('%s\n', '                                               Complete.  Allowed values: Complete, Incremental.')
            fprintf('%s\n', '                                               Default: DeploymentMode.incremental.')
            fprintf('%s\n', '    --name --service-unit-name -n [Required] : The name of the service unit.')
            fprintf('%s\n', '    --service-name                [Required] : The name of the service.')
            fprintf('%s\n', '    --service-topology-name       [Required] : The name of the service topology.')
            fprintf('%s\n', '    --target-resource-group       [Required] : The resource group where the resources in the service')
            fprintf('%s\n', '                                               unit should be deployed to.')
            fprintf('%s\n', '    --tags                                   : Space-separated tags: key[=value] [key[=value] ...].')
            fprintf('%s\n', '                                               Use '''' to clear existing tags.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                              : Output format.  Allowed values: json, jsonc, none,')
            fprintf('%s\n', '                                               table, tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                                  : JMESPath query string. See http://jmespath.org/ for')
            fprintf('%s\n', '                                               more information and examples.')
            fprintf('%s\n', '    --subscription                           : Name or ID of subscription. You can configure the')
            fprintf('%s\n', '                                               default subscription using `az account set -s')
            fprintf('%s\n', '                                               NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                                : Increase logging verbosity. Use --debug for full')
            fprintf('%s\n', '                                               debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a new service unit using relative paths into the artifact source.')
            fprintf('%s\n', '        Specify the service unit by its name, the service and service topology it is in. The')
            fprintf('%s\n', '        template and parameters files are defined as relative paths into the artifact source')
            fprintf('%s\n', '        location referenced in the specified service topology. The resources defined in this')
            fprintf('%s\n', '        template are to be deployed into the target resource group service1ResourceGroup with the')
            fprintf('%s\n', '        deployment mode set to ''Incremental''.')
            fprintf('%s\n', '        az deploymentmanager service-unit create -g rg1 -l location --service-topology-name')
            fprintf('%s\n', '        contosoServiceTopology --service-name contosoService1 -n ContosoService1Storage --target-')
            fprintf('%s\n', '        resource-group service1ResourceGroup --deployment-mode Incremental --template-path')
            fprintf('%s\n', '        "Templates/Service1.Storage.json" --parameters-path')
            fprintf('%s\n', '        "Parameters/Service1.Storage.Parameters.json"')
            fprintf('%s\n', '    Create a new service unit using SAS Uri for template and parameters.')
            fprintf('%s\n', '        Specify the service unit by its name, the service and service topology it is in. The')
            fprintf('%s\n', '        template and parameters files are defined as SAS Uri''s. The resources defined in this')
            fprintf('%s\n', '        template are to be deployed into the target resource group service1ResourceGroup with the')
            fprintf('%s\n', '        deployment mode set to ''Incremental''.')
            fprintf('%s\n', '        az deploymentmanager service-unit create -g rg1 -l location --service-topology-name')
            fprintf('%s\n', '        contosoServiceTopology --service-name contosoService1 -n ContosoService1Storage \')
            fprintf('%s\n', '            --target-resource-group service1ResourceGroup --deployment-mode Incremental \')
            fprintf('%s\n', '            --template-path "https://ContosoStorage.blob.core.windows.net/ContosoArtifacts/Templates')
            fprintf('%s\n', '        /Service2.Storage.json?sasParameters" \')
            fprintf('%s\n', '            --parameters-path "https://ContosoStorage.blob.core.windows.net/ContosoArtifacts/Paramet')
            fprintf('%s\n', '        ers/Service2Storage.Parameters.json?sasParameters"')
            fprintf('%s\n', 'For more specific examples, use: az find "az deploymentmanager service-unit create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
