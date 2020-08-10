classdef update < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = update()
            % az sig image-version update : Update a share image version.
            this.BaseCmd = 'az sig image-version update ';
        end
        function this = gallery_image_definition(this, varargin)
            % Gallery image definition.
            this.Options = [this.Options, '--gallery-image-definition', varargin{:}];
        end

        function this = gallery_image_version(this, varargin)
            % Gallery image version in semantic version pattern. The allowed characters are digit and period. Digits must be within the range of a 32-bit integer, e.g. `<MajorVersion>.<MinorVersion>.<Patch>`.
            this.Options = [this.Options, '--gallery-image-version', varargin{:}];
        end

        function this = gallery_name(this, varargin)
            % Gallery name.
            this.Options = [this.Options, '--gallery-name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = replica_count(this, varargin)
            % The default number of replicas to be created per region. To set regional replication counts, use --target-regions.
            this.Options = [this.Options, '--replica-count', varargin{:}];
        end

        function this = target_regions(this, varargin)
            % Space-separated list of regions and their replica counts. Use `<region>[=<replica count>][=<storage account type>]` to optionally set the replica count and/or storage account type for each region. If a replica count is not specified, the default replica count will be used. If a storage account type is not specified, the default storage account type will be used.
            this.Options = [this.Options, '--target-regions', varargin{:}];
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

        function this = add(this, varargin)
            % Add an object to a list of objects by specifying a path and key value pairs.  Example: --add property.listProperty <key=value, string or JSON string>.
            this.Options = [this.Options, '--add', varargin{:}];
        end

        function this = force_string(this, varargin)
            % When using 'set' or 'add', preserve string literals instead of attempting to convert to JSON.
            this.Options = [this.Options, '--force-string', varargin{:}];
        end

        function this = remove(this, varargin)
            % Remove a property or an element from a list. Example: --remove property.list <indexToRemove> OR --remove propertyToRemove.
            this.Options = [this.Options, '--remove', varargin{:}];
        end

        function this = set(this, varargin)
            % Update an object by specifying a property path and value to set.  Example: --set property1.property2=<value>.
            this.Options = [this.Options, '--set', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az sig image-version update : Update a share image version.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gallery-image-definition -i [Required] : Gallery image definition.')
            fprintf('%s\n', '    --gallery-image-version -e    [Required] : Gallery image version in semantic version pattern.')
            fprintf('%s\n', '                                               The allowed characters are digit and period. Digits')
            fprintf('%s\n', '                                               must be within the range of a 32-bit integer, e.g.')
            fprintf('%s\n', '                                               `<MajorVersion>.<MinorVersion>.<Patch>`.')
            fprintf('%s\n', '    --gallery-name -r             [Required] : Gallery name.')
            fprintf('%s\n', '    --resource-group -g           [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                               group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --no-wait                                : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --replica-count                          : The default number of replicas to be created per')
            fprintf('%s\n', '                                               region. To set regional replication counts, use')
            fprintf('%s\n', '                                               --target-regions.')
            fprintf('%s\n', '    --target-regions                         : Space-separated list of regions and their replica')
            fprintf('%s\n', '                                               counts. Use `<region>[=<replica count>][=<storage')
            fprintf('%s\n', '                                               account type>]` to optionally set the replica count')
            fprintf('%s\n', '                                               and/or storage account type for each region. If a')
            fprintf('%s\n', '                                               replica count is not specified, the default replica')
            fprintf('%s\n', '                                               count will be used. If a storage account type is not')
            fprintf('%s\n', '                                               specified, the default storage account type will be')
            fprintf('%s\n', '                                               used.')
            fprintf('%s\n', 'Generic Update Arguments')
            fprintf('%s\n', '    --add                                    : Add an object to a list of objects by specifying a')
            fprintf('%s\n', '                                               path and key value pairs.  Example: --add')
            fprintf('%s\n', '                                               property.listProperty <key=value, string or JSON')
            fprintf('%s\n', '                                               string>.')
            fprintf('%s\n', '    --force-string                           : When using ''set'' or ''add'', preserve string literals')
            fprintf('%s\n', '                                               instead of attempting to convert to JSON.')
            fprintf('%s\n', '    --remove                                 : Remove a property or an element from a list.')
            fprintf('%s\n', '                                               Example: --remove property.list <indexToRemove> OR')
            fprintf('%s\n', '                                               --remove propertyToRemove.')
            fprintf('%s\n', '    --set                                    : Update an object by specifying a property path and')
            fprintf('%s\n', '                                               value to set.  Example: --set')
            fprintf('%s\n', '                                               property1.property2=<value>.')
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
            fprintf('%s\n', '    Replicate to a new set of regions')
            fprintf('%s\n', '        az sig image-version update -g MyResourceGroup --gallery-name MyGallery --gallery-image-')
            fprintf('%s\n', '        definition MyImage --gallery-image-version 1.0.0 --target-regions westcentralus=2 eastus2')
            fprintf('%s\n', '    Replicate to one more region')
            fprintf('%s\n', '        az sig image-version update -g MyResourceGroup --gallery-name MyGallery --gallery-image-')
            fprintf('%s\n', '        definition MyImage --gallery-image-version 1.0.0 --add publishingProfile.targetRegions')
            fprintf('%s\n', '        name=westcentralus')
            fprintf('%s\n', '    Update --exclude-from-latest. If it is set to true, people deploying VMs with version omitted')
            fprintf('%s\n', '    will not use this version.')
            fprintf('%s\n', '        az sig image-version update -g MyResourceGroup --gallery-name MyGallery --gallery-image-')
            fprintf('%s\n', '        definition MyImage --gallery-image-version 1.0.0 --set')
            fprintf('%s\n', '        publishingProfile.excludeFromLatest=true')
            fprintf('%s\n', 'For more specific examples, use: az find "az sig image-version update"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class update 
