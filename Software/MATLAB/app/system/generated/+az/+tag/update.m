classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az tag update : Selectively update the set of tags on a specific resource.
            % The az tag update command with an id selectively updates the set of tags on a resource,
            % resource group or subscription. This operation allows replacing, merging or selectively
            % deleting tags on the specified resource, resource group or subscription. The specified
            % entity can have a maximum of 50 tags at the end of the operation. The 'replace' option
            % replaces the entire set of existing tags with a new set. The 'merge' option allows adding
            % tags with new names and updating the values of tags with existing names. The 'delete' option
            % allows selectively deleting tags based on given names or name/value pairs.
            this.BaseCmd = 'az tag update ';
        end
        function this = operation(this, varargin)
            % The update operation. Options are Merge, Replace and Delete.  Allowed values: Delete, Merge, Replace.
            this.Options = [this.Options, '--operation', varargin{:}];
        end

        function this = resource_id(this, varargin)
            % The resource identifier for the entity being tagged. A resource, a resource group or a subscription may be tagged.
            this.Options = [this.Options, '--resource-id', varargin{:}];
        end

        function this = tags(this, varargin)
            % The tags to be updated on the resource.
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
            fprintf('%s\n', '    az tag update : Selectively update the set of tags on a specific resource.')
            fprintf('%s\n', '        The az tag update command with an id selectively updates the set of tags on a resource,')
            fprintf('%s\n', '        resource group or subscription. This operation allows replacing, merging or selectively')
            fprintf('%s\n', '        deleting tags on the specified resource, resource group or subscription. The specified')
            fprintf('%s\n', '        entity can have a maximum of 50 tags at the end of the operation. The ''replace'' option')
            fprintf('%s\n', '        replaces the entire set of existing tags with a new set. The ''merge'' option allows adding')
            fprintf('%s\n', '        tags with new names and updating the values of tags with existing names. The ''delete'' option')
            fprintf('%s\n', '        allows selectively deleting tags based on given names or name/value pairs.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --operation   [Required] : The update operation. Options are Merge, Replace and Delete.  Allowed')
            fprintf('%s\n', '                               values: Delete, Merge, Replace.')
            fprintf('%s\n', '    --resource-id [Required] : The resource identifier for the entity being tagged. A resource, a')
            fprintf('%s\n', '                               resource group or a subscription may be tagged.')
            fprintf('%s\n', '    --tags        [Required] : The tags to be updated on the resource.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                  : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors       : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o              : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml,')
            fprintf('%s\n', '                               yamlc.  Default: json.')
            fprintf('%s\n', '    --query                  : JMESPath query string. See http://jmespath.org/ for more information')
            fprintf('%s\n', '                               and examples.')
            fprintf('%s\n', '    --subscription           : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                               subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Selectively update the set of tags on a subscription with "merge" Operation.')
            fprintf('%s\n', '        az tag update --resource-id /subscriptions/{sub-id} --operation merge --tags key1=value1')
            fprintf('%s\n', '        key3=value3')
            fprintf('%s\n', '    Selectively update the set of tags on a resource group with "replace" Operation.')
            fprintf('%s\n', '        az tag update --resource-id /subscriptions/{sub-id}/resourcegroups/{rg} --operation replace')
            fprintf('%s\n', '        --tags key1=value1 key3=value3')
            fprintf('%s\n', '    Selectively update the set of tags on a resource with "delete" Operation.')
            fprintf('%s\n', '        az tag update --resource-id /subscriptions/{sub-')
            fprintf('%s\n', '        id}/resourcegroups/{rg}/providers/Microsoft.Compute/virtualMachines/{vmName} --operation')
            fprintf('%s\n', '        delete --tags key1=value1')
            fprintf('%s\n', 'For more specific examples, use: az find "az tag update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
