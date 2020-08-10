classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az policy remediation create : Create a resource policy remediation.
            this.BaseCmd = 'az policy remediation create ';
        end
        function this = name(this, varargin)
            % Name of the remediation.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = policy_assignment(this, varargin)
            % Name or resource ID of the policy assignment.
            this.Options = [this.Options, '--policy-assignment', varargin{:}];
        end

        function this = definition_reference_id(this, varargin)
            % Policy definition reference ID inside the policy set definition. Only required when the policy assignment is assigning a policy set definition.
            this.Options = [this.Options, '--definition-reference-id', varargin{:}];
        end

        function this = location_filters(this, varargin)
            % Space separated list of resource locations that should be remediated (Ex: centralus westeurope).
            this.Options = [this.Options, '--location-filters', varargin{:}];
        end

        function this = resource_discovery_mode(this, varargin)
            % The way resources to remediate are discovered. Defaults to ExistingNonCompliant if not specified.  Allowed values: ExistingNonCompliant, ReEvaluateCompliance.
            this.Options = [this.Options, '--resource-discovery-mode', varargin{:}];
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

        function this = namespace(this, varargin)
            % Provider namespace (Ex: Microsoft.Provider).
            this.Options = [this.Options, '--namespace', varargin{:}];
        end

        function this = parent(this, varargin)
            % The parent path (Ex: resourceTypeA/nameA/resourceTypeB/nameB).
            this.Options = [this.Options, '--parent', varargin{:}];
        end

        function this = resource(this, varargin)
            % Resource ID or resource name. If a name is given, please provide the resource group and other relevant resource id arguments.
            this.Options = [this.Options, '--resource', varargin{:}];
        end

        function this = resource_type(this, varargin)
            % Resource type (Ex: resourceTypeC).
            this.Options = [this.Options, '--resource-type', varargin{:}];
        end

        function this = management_group(this, varargin)
            % Name of management group.
            this.Options = [this.Options, '--management-group', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az policy remediation create : Create a resource policy remediation.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n              [Required] : Name of the remediation.')
            fprintf('%s\n', '    --policy-assignment -a [Required] : Name or resource ID of the policy assignment.')
            fprintf('%s\n', '    --definition-reference-id         : Policy definition reference ID inside the policy set')
            fprintf('%s\n', '                                        definition. Only required when the policy assignment is')
            fprintf('%s\n', '                                        assigning a policy set definition.')
            fprintf('%s\n', '    --location-filters                : Space separated list of resource locations that should be')
            fprintf('%s\n', '                                        remediated (Ex: centralus westeurope).')
            fprintf('%s\n', '    --resource-discovery-mode         : The way resources to remediate are discovered. Defaults to')
            fprintf('%s\n', '                                        ExistingNonCompliant if not specified.  Allowed values:')
            fprintf('%s\n', '                                        ExistingNonCompliant, ReEvaluateCompliance.')
            fprintf('%s\n', 'Resource ID Arguments')
            fprintf('%s\n', '    --namespace                       : Provider namespace (Ex: Microsoft.Provider).')
            fprintf('%s\n', '    --parent                          : The parent path (Ex:')
            fprintf('%s\n', '                                        resourceTypeA/nameA/resourceTypeB/nameB).')
            fprintf('%s\n', '    --resource                        : Resource ID or resource name. If a name is given, please')
            fprintf('%s\n', '                                        provide the resource group and other relevant resource id')
            fprintf('%s\n', '                                        arguments.')
            fprintf('%s\n', '    --resource-type                   : Resource type (Ex: resourceTypeC).')
            fprintf('%s\n', 'Scope Arguments')
            fprintf('%s\n', '    --management-group -m             : Name of management group.')
            fprintf('%s\n', '    --resource-group -g               : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                        using `az configure --defaults group=<name>`.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                           : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                         : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors                : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                       : Output format.  Allowed values: json, jsonc, none, table,')
            fprintf('%s\n', '                                        tsv, yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                           : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                        information and examples.')
            fprintf('%s\n', '    --subscription                    : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                        subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                         : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create a remediation at resource group scope for a policy assignment')
            fprintf('%s\n', '        az policy remediation create -g myRg -n myRemediation --policy-assignment')
            fprintf('%s\n', '        eeb18edc813c42d0ad5a9eab')
            fprintf('%s\n', '    Create a remediation at resource group scope for a policy assignment using the policy assignment')
            fprintf('%s\n', '    resource ID')
            fprintf('%s\n', '        az policy remediation create -g myRg -n myRemediation --policy-assignment "/subscriptions/ff')
            fprintf('%s\n', '        f10b27-fff3-fff5-fff8-fffbe01e86a5/providers/Microsoft.Authorization/policyAssignments/myPa"')
            fprintf('%s\n', '    Create a remediation at subscription scope for a policy set assignment')
            fprintf('%s\n', '        az policy remediation create -n myRemediation --policy-assignment eeb18edc813c42d0ad5a9eab')
            fprintf('%s\n', '        --definition-reference-id auditVMPolicyReference')
            fprintf('%s\n', '    Create a remediation at management group scope for specific resource locations')
            fprintf('%s\n', '        az policy remediation create -m myMg -n myRemediation --policy-assignment')
            fprintf('%s\n', '        eeb18edc813c42d0ad5a9eab --location-filters eastus westeurope')
            fprintf('%s\n', '    Create a remediation for a specific resource using the resource ID')
            fprintf('%s\n', '        az policy remediation create --resource "/subscriptions/fff10b27-fff3-fff5-fff8-fffbe01e86a5')
            fprintf('%s\n', '        /resourceGroups/myRg/providers/Microsoft.Compute/virtualMachines/myVm" -n myRemediation')
            fprintf('%s\n', '        --policy-assignment eeb18edc813c42d0ad5a9eab')
            fprintf('%s\n', '    Create a remediation that will re-evaluate compliance before remediating')
            fprintf('%s\n', '        az policy remediation create -g myRg -n myRemediation --policy-assignment')
            fprintf('%s\n', '        eeb18edc813c42d0ad5a9eab --resource-discovery-mode ReEvaluateCompliance')
            fprintf('%s\n', 'For more specific examples, use: az find "az policy remediation create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
