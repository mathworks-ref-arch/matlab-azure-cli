classdef delete < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = delete()
            % az tag delete : Delete tags on a specific resource.
            % The az tag delete command with an id deletes the entire set of tags on a resource, resource
            % group or subscription.
            this.BaseCmd = 'az tag delete ';
        end
        function this = name(this, varargin)
            % The name of the tag to be deleted.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_id(this, varargin)
            % The resource identifier for the entity being tagged. A resource, a resource group or a subscription may be tagged.
            this.Options = [this.Options, '--resource-id', varargin{:}];
        end

        function this = yes(this, varargin)
            % Do not prompt for confirmation.
            this.Options = [this.Options, '--yes', varargin{:}];
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
            % Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc. Default: json.
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
            fprintf('%s\n', '    az tag delete : Delete tags on a specific resource.')
            fprintf('%s\n', '        The az tag delete command with an id deletes the entire set of tags on a resource, resource')
            fprintf('%s\n', '        group or subscription.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n          : The name of the tag to be deleted.')
            fprintf('%s\n', '    --resource-id      : The resource identifier for the entity being tagged. A resource, a resource')
            fprintf('%s\n', '                         group or a subscription may be tagged.')
            fprintf('%s\n', '    --yes -y           : Do not prompt for confirmation.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug            : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h          : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o        : Output format.  Allowed values: json, jsonc, none, table, tsv, yaml, yamlc.')
            fprintf('%s\n', '                         Default: json.')
            fprintf('%s\n', '    --query            : JMESPath query string. See http://jmespath.org/ for more information and')
            fprintf('%s\n', '                         examples.')
            fprintf('%s\n', '    --subscription     : Name or ID of subscription. You can configure the default subscription')
            fprintf('%s\n', '                         using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose          : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Delete a tag from the subscription.')
            fprintf('%s\n', '        az tag delete --name MyTag')
            fprintf('%s\n', '    Delete the entire set of tags on a subscription.')
            fprintf('%s\n', '        az tag delete --resource-id /subscriptions/{sub-id}')
            fprintf('%s\n', '    Delete the entire set of tags on a resource group.')
            fprintf('%s\n', '        az tag delete --resource-id /subscriptions/{sub-id}/resourcegroups/{rg}')
            fprintf('%s\n', '    Delete the entire set of tags on a resource.')
            fprintf('%s\n', '        az tag delete --resource-id /subscriptions/{sub-')
            fprintf('%s\n', '        id}/resourcegroups/{rg}/providers/Microsoft.Compute/virtualMachines/{vmName}')
            fprintf('%s\n', 'For more specific examples, use: az find "az tag delete"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class delete 
