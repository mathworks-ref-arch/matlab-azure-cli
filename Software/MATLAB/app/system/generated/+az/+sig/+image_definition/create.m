classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az sig image-definition create : Create a gallery image definition.
            this.BaseCmd = 'az sig image-definition create ';
        end
        function this = gallery_image_definition(this, varargin)
            % Gallery image definition.
            this.Options = [this.Options, '--gallery-image-definition', varargin{:}];
        end

        function this = gallery_name(this, varargin)
            % Gallery name.
            this.Options = [this.Options, '--gallery-name', varargin{:}];
        end

        function this = offer(this, varargin)
            % Image offer.
            this.Options = [this.Options, '--offer', varargin{:}];
        end

        function this = os_type(this, varargin)
            % The type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. Allowed values: Linux, Windows.
            this.Options = [this.Options, '--os-type', varargin{:}];
        end

        function this = publisher(this, varargin)
            % Image publisher.
            this.Options = [this.Options, '--publisher', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sku(this, varargin)
            % Image sku.
            this.Options = [this.Options, '--sku', varargin{:}];
        end

        function this = description(this, varargin)
            % The description of the gallery image definition.
            this.Options = [this.Options, '--description', varargin{:}];
        end

        function this = disallowed_disk_types(this, varargin)
            % Disk types which would not work with the image, e.g., Standard_LRS.
            this.Options = [this.Options, '--disallowed-disk-types', varargin{:}];
        end

        function this = end_of_life_date(this, varargin)
            % The end of life date, e.g. '2020-12-31'.
            this.Options = [this.Options, '--end-of-life-date', varargin{:}];
        end

        function this = eula(this, varargin)
            % The Eula agreement for the gallery image.
            this.Options = [this.Options, '--eula', varargin{:}];
        end

        function this = hyper_v_generation(this, varargin)
            % The hypervisor generation of the Virtual Machine. Applicable to OS disks only.  Allowed values: V1, V2. Default: V1.
            this.Options = [this.Options, '--hyper-v-generation', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = os_state(this, varargin)
            % This property allows the user to specify whether the virtual machines created under this image are 'Generalized' or 'Specialized'.  Allowed values: Generalized, Specialized.  Default: Generalized.
            this.Options = [this.Options, '--os-state', varargin{:}];
        end

        function this = privacy_statement_uri(this, varargin)
            % The privacy statement uri.
            this.Options = [this.Options, '--privacy-statement-uri', varargin{:}];
        end

        function this = release_note_uri(this, varargin)
            % The release note uri.
            this.Options = [this.Options, '--release-note-uri', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Purchase plan Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = plan_name(this, varargin)
            % Plan name.
            this.Options = [this.Options, '--plan-name', varargin{:}];
        end

        function this = plan_product(this, varargin)
            % Plan product.
            this.Options = [this.Options, '--plan-product', varargin{:}];
        end

        function this = plan_publisher(this, varargin)
            % Plan publisher. Recommendation Arguments
            this.Options = [this.Options, '--plan-publisher', varargin{:}];
        end

        function this = maximum_cpu_core(this, varargin)
            % Maximum cpu cores.
            this.Options = [this.Options, '--maximum-cpu-core', varargin{:}];
        end

        function this = maximum_memory(this, varargin)
            % Maximum memory in MB.
            this.Options = [this.Options, '--maximum-memory', varargin{:}];
        end

        function this = minimum_cpu_core(this, varargin)
            % Minimum cpu cores.
            this.Options = [this.Options, '--minimum-cpu-core', varargin{:}];
        end

        function this = minimum_memory(this, varargin)
            % Minimum memory in MB.
            this.Options = [this.Options, '--minimum-memory', varargin{:}];
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
            fprintf('%s\n', '    az sig image-definition create : Create a gallery image definition.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --gallery-image-definition -i [Required] : Gallery image definition.')
            fprintf('%s\n', '    --gallery-name -r             [Required] : Gallery name.')
            fprintf('%s\n', '    --offer -f                    [Required] : Image offer.')
            fprintf('%s\n', '    --os-type                     [Required] : The type of the OS that is included in the disk if')
            fprintf('%s\n', '                                               creating a VM from user-image or a specialized VHD.')
            fprintf('%s\n', '                                               Allowed values: Linux, Windows.')
            fprintf('%s\n', '    --publisher -p                [Required] : Image publisher.')
            fprintf('%s\n', '    --resource-group -g           [Required] : Name of resource group. You can configure the default')
            fprintf('%s\n', '                                               group using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sku -s                      [Required] : Image sku.')
            fprintf('%s\n', '    --description                            : The description of the gallery image definition.')
            fprintf('%s\n', '    --disallowed-disk-types                  : Disk types which would not work with the image, e.g.,')
            fprintf('%s\n', '                                               Standard_LRS.')
            fprintf('%s\n', '    --end-of-life-date                       : The end of life date, e.g. ''2020-12-31''.')
            fprintf('%s\n', '    --eula                                   : The Eula agreement for the gallery image.')
            fprintf('%s\n', '    --hyper-v-generation                     : The hypervisor generation of the Virtual Machine.')
            fprintf('%s\n', '                                               Applicable to OS disks only.  Allowed values: V1, V2.')
            fprintf('%s\n', '                                               Default: V1.')
            fprintf('%s\n', '    --location -l                            : Location. Values from: `az account list-locations`.')
            fprintf('%s\n', '                                               You can configure the default location using `az')
            fprintf('%s\n', '                                               configure --defaults location=<location>`.')
            fprintf('%s\n', '    --os-state                               : This property allows the user to specify whether the')
            fprintf('%s\n', '                                               virtual machines created under this image are')
            fprintf('%s\n', '                                               ''Generalized'' or ''Specialized''.  Allowed values:')
            fprintf('%s\n', '                                               Generalized, Specialized.  Default: Generalized.')
            fprintf('%s\n', '    --privacy-statement-uri                  : The privacy statement uri.')
            fprintf('%s\n', '    --release-note-uri                       : The release note uri.')
            fprintf('%s\n', '    --tags                                   : Space-separated tags: key[=value] [key[=value] ...].')
            fprintf('%s\n', '                                               Use '''' to clear existing tags.')
            fprintf('%s\n', 'Purchase plan Arguments')
            fprintf('%s\n', '    --plan-name                              : Plan name.')
            fprintf('%s\n', '    --plan-product                           : Plan product.')
            fprintf('%s\n', '    --plan-publisher                         : Plan publisher.')
            fprintf('%s\n', 'Recommendation Arguments')
            fprintf('%s\n', '    --maximum-cpu-core                       : Maximum cpu cores.')
            fprintf('%s\n', '    --maximum-memory                         : Maximum memory in MB.')
            fprintf('%s\n', '    --minimum-cpu-core                       : Minimum cpu cores.')
            fprintf('%s\n', '    --minimum-memory                         : Minimum memory in MB.')
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
            fprintf('%s\n', '    Create a linux image defintion')
            fprintf('%s\n', '        az sig image-definition create -g MyResourceGroup --gallery-name MyGallery --gallery-image-')
            fprintf('%s\n', '        definition MyImage --publisher GreatPublisher --offer GreatOffer --sku GreatSku --os-type')
            fprintf('%s\n', '        linux')
            fprintf('%s\n', 'For more specific examples, use: az find "az sig image-definition create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
