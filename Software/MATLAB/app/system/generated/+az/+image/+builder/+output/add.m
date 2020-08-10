classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az image builder output add : Add an image builder output distributor to an image builder
            % template.
            % Must be used with --defer. The output distributor can be a managed image, a gallery image,
            % or as a VHD blob.
            this.BaseCmd = 'az image builder output add ';
        end
        function this = artifact_tags(this, varargin)
            % Tags that will be applied to the output artifact once it has been created by the distributor. space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags.
            this.Options = [this.Options, '--artifact-tags', varargin{:}];
        end

        function this = defer(this, varargin)
            % Temporarily store the object in the local cache instead of sending to Azure. Use `az cache` commands to view/clear.
            this.Options = [this.Options, '--defer', varargin{:}];
        end

        function this = output_name(this, varargin)
            % Name of the image builder run output. Defaults to the name of the managed image or sig image definition. Managed Image Arguments
            this.Options = [this.Options, '--output-name', varargin{:}];
        end

        function this = managed_image(this, varargin)
            % Name or ID of the customized managed image to be created.
            this.Options = [this.Options, '--managed-image', varargin{:}];
        end

        function this = managed_image_location(this, varargin)
            % Location where the customized image will be created. Defaults to resource group's location.
            this.Options = [this.Options, '--managed-image-location', varargin{:}];
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
            % The name of the image template.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = subscription(this, varargin)
            % Name or ID of subscription. You can configure the default subscription using `az account set -s NAME_OR_ID`. Shared Image Gallery Arguments
            this.Options = [this.Options, '--subscription', varargin{:}];
        end

        function this = gallery_image_definition(this, varargin)
            % Name or ID of the existing SIG image definition to create the customized image version with.
            this.Options = [this.Options, '--gallery-image-definition', varargin{:}];
        end

        function this = gallery_name(this, varargin)
            % Shared image gallery name, if image definition name and not ID was provided.
            this.Options = [this.Options, '--gallery-name', varargin{:}];
        end

        function this = gallery_replication_regions(this, varargin)
            % Space-separated list of regions to replicate the image version into. Defaults to resource group's location. VHD Arguments
            this.Options = [this.Options, '--gallery-replication-regions', varargin{:}];
        end

        function this = is_vhd(this, varargin)
            % The output is a VHD distributor.
            this.Options = [this.Options, '--is-vhd', varargin{:}];
        end

    end
    methods (Static = true)
        function help(~)

            fprintf('%s\n', 'Command')
            fprintf('%s\n', '    az image builder output add : Add an image builder output distributor to an image builder')
            fprintf('%s\n', '    template.')
            fprintf('%s\n', '        Must be used with --defer. The output distributor can be a managed image, a gallery image,')
            fprintf('%s\n', '        or as a VHD blob.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --artifact-tags               : Tags that will be applied to the output artifact once it has')
            fprintf('%s\n', '                                    been created by the distributor. space-separated tags:')
            fprintf('%s\n', '                                    key[=value] [key[=value] ...]. Use '''' to clear existing tags.')
            fprintf('%s\n', '    --defer                       : Temporarily store the object in the local cache instead of')
            fprintf('%s\n', '                                    sending to Azure. Use `az cache` commands to view/clear.')
            fprintf('%s\n', '    --output-name                 : Name of the image builder run output. Defaults to the name of')
            fprintf('%s\n', '                                    the managed image or sig image definition.')
            fprintf('%s\n', 'Managed Image Arguments')
            fprintf('%s\n', '    --managed-image               : Name or ID of the customized managed image to be created.')
            fprintf('%s\n', '    --managed-image-location      : Location where the customized image will be created. Defaults to')
            fprintf('%s\n', '                                    resource group''s location.')
            fprintf('%s\n', 'Resource Id Arguments')
            fprintf('%s\n', '    --ids                         : One or more resource IDs (space-delimited). It should be a')
            fprintf('%s\n', '                                    complete resource ID containing all information of ''Resource Id''')
            fprintf('%s\n', '                                    arguments. You should provide either --ids or other ''Resource')
            fprintf('%s\n', '                                    Id'' arguments.')
            fprintf('%s\n', '    --name -n                     : The name of the image template.')
            fprintf('%s\n', '    --resource-group -g           : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                    using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --subscription                : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                    subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', 'Shared Image Gallery Arguments')
            fprintf('%s\n', '    --gallery-image-definition    : Name or ID of the existing SIG image definition to create the')
            fprintf('%s\n', '                                    customized image version with.')
            fprintf('%s\n', '    --gallery-name                : Shared image gallery name, if image definition name and not ID')
            fprintf('%s\n', '                                    was provided.')
            fprintf('%s\n', '    --gallery-replication-regions : Space-separated list of regions to replicate the image version')
            fprintf('%s\n', '                                    into. Defaults to resource group''s location.')
            fprintf('%s\n', 'VHD Arguments')
            fprintf('%s\n', '    --is-vhd                      : The output is a VHD distributor.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                       : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                     : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors            : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                   : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                    yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                       : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                    information and examples.')
            fprintf('%s\n', '    --verbose                     : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Add a managed image distributor to an image template in the cli object cache. Specify a run')
            fprintf('%s\n', '    output name.')
            fprintf('%s\n', '        az image builder output add -n mytemplate -g my-group \')
            fprintf('%s\n', '            --managed-image my_desired_image_name --output-name managed_image_run_01 --defer')
            fprintf('%s\n', '    Add a shared image gallery distributor to an image template in the cli object cache. Specify its')
            fprintf('%s\n', '    replication regions.')
            fprintf('%s\n', '        az image builder output add -n mytemplate -g my-group --gallery-name my_shared_gallery \')
            fprintf('%s\n', '            --gallery-replication-regions westus brazilsouth \')
            fprintf('%s\n', '            --gallery-image-definition linux_image_def --defer')
            fprintf('%s\n', '    Add a VHD distributor to an image template in the cli object cache.')
            fprintf('%s\n', '        az image builder output add -n mytemplate -g my-group \')
            fprintf('%s\n', '            --output-name my_vhd_image --is-vhd  --defer')
            fprintf('%s\n', 'For more specific examples, use: az find "az image builder output add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
