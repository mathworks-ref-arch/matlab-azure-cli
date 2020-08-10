classdef create < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = create()
            % az image builder create : Create an image builder template.
            this.BaseCmd = 'az image builder create ';
        end
        function this = name(this, varargin)
            % The name of the image template.
            this.Options = [this.Options, '--name', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = build_timeout(this, varargin)
            % The Maximum duration to wait while building the image template, in minutes. Default is 60.
            this.Options = [this.Options, '--build-timeout', varargin{:}];
        end

        function this = defer(this, varargin)
            % Temporarily store the object in the local cache instead of sending to Azure. Use `az cache` commands to view/clear.
            this.Options = [this.Options, '--defer', varargin{:}];
        end

        function this = identity(this, varargin)
            % List of user assigned identities (name or ID, space delimited) of the image template.
            this.Options = [this.Options, '--identity', varargin{:}];
        end

        function this = image_template(this, varargin)
            % Local path or URL to an image template file. When using --image-template, all other parameters are ignored except -g and -n. Reference: https://docs.microsoft.com/en- us/azure/virtual-machines/linux/image-builder-json.
            this.Options = [this.Options, '--image-template', varargin{:}];
        end

        function this = location(this, varargin)
            % Location. Values from: `az account list-locations`. You can configure the default location using `az configure --defaults location=<location>`.
            this.Options = [this.Options, '--location', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
        end

        function this = tags(this, varargin)
            % Space-separated tags: key[=value] [key[=value] ...]. Use '' to clear existing tags. Customizer Arguments
            this.Options = [this.Options, '--tags', varargin{:}];
        end

        function this = scripts(this, varargin)
            % Space-separated list of shell or powershell scripts to customize the image with. Each script must be a publicly accessible URL. Infers type of script from file extension ('.sh' or'.ps1') or from source type. More more customizer options and flexibility, see: 'az image template customizer add'. Image Source Arguments
            this.Options = [this.Options, '--scripts', varargin{:}];
        end

        function this = checksum(this, varargin)
            % The SHA256 checksum of the Red Hat ISO image.
            this.Options = [this.Options, '--checksum', varargin{:}];
        end

        function this = image_source(this, varargin)
            % The base image to customize. Must be a valid platform image URN, platform image alias, Red Hat ISO image URI, managed image name/ID, or shared image version ID.  Values from: az vm image list, az vm image show. Output Arguments
            this.Options = [this.Options, '--image-source', varargin{:}];
        end

        function this = managed_image_destinations(this, varargin)
            % Managed image output distributor information. Space-separated list of key-value pairs. E.g "image_1=westus2 image_2=westus". Each key is the name or resource ID of the managed image to be created. Each value is the location of the image.
            this.Options = [this.Options, '--managed-image-destinations', varargin{:}];
        end

        function this = shared_image_destinations(this, varargin)
            % Shared image gallery (sig) output distributor information. Space-separated list of key-value pairs. E.g "my_gallery_1/image_def_1=eastus,westus my_gallery_2/image_def_2=uksouth,canadaeast,francesouth." Each key is the sig image definition ID or sig gallery name and sig image definition delimited by a "/". Each value is a comma- delimited list of replica locations.
            this.Options = [this.Options, '--shared-image-destinations', varargin{:}];
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
            fprintf('%s\n', '    az image builder create : Create an image builder template.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --name -n           [Required] : The name of the image template.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --build-timeout                : The Maximum duration to wait while building the image template,')
            fprintf('%s\n', '                                     in minutes. Default is 60.')
            fprintf('%s\n', '    --defer                        : Temporarily store the object in the local cache instead of')
            fprintf('%s\n', '                                     sending to Azure. Use `az cache` commands to view/clear.')
            fprintf('%s\n', '    --identity                     : List of user assigned identities (name or ID, space delimited)')
            fprintf('%s\n', '                                     of the image template.')
            fprintf('%s\n', '    --image-template               : Local path or URL to an image template file. When using')
            fprintf('%s\n', '                                     --image-template, all other parameters are ignored except -g')
            fprintf('%s\n', '                                     and -n. Reference: https://docs.microsoft.com/en-')
            fprintf('%s\n', '                                     us/azure/virtual-machines/linux/image-builder-json.')
            fprintf('%s\n', '    --location -l                  : Location. Values from: `az account list-locations`. You can')
            fprintf('%s\n', '                                     configure the default location using `az configure --defaults')
            fprintf('%s\n', '                                     location=<location>`.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
            fprintf('%s\n', '    --tags                         : Space-separated tags: key[=value] [key[=value] ...]. Use '''' to')
            fprintf('%s\n', '                                     clear existing tags.')
            fprintf('%s\n', 'Customizer Arguments')
            fprintf('%s\n', '    --scripts                      : Space-separated list of shell or powershell scripts to')
            fprintf('%s\n', '                                     customize the image with. Each script must be a publicly')
            fprintf('%s\n', '                                     accessible URL. Infers type of script from file extension')
            fprintf('%s\n', '                                     (''.sh'' or''.ps1'') or from source type. More more customizer')
            fprintf('%s\n', '                                     options and flexibility, see: ''az image template customizer')
            fprintf('%s\n', '                                     add''.')
            fprintf('%s\n', 'Image Source Arguments')
            fprintf('%s\n', '    --checksum                     : The SHA256 checksum of the Red Hat ISO image.')
            fprintf('%s\n', '    --image-source -i              : The base image to customize. Must be a valid platform image')
            fprintf('%s\n', '                                     URN, platform image alias, Red Hat ISO image URI, managed image')
            fprintf('%s\n', '                                     name/ID, or shared image version ID.  Values from: az vm image')
            fprintf('%s\n', '                                     list, az vm image show.')
            fprintf('%s\n', 'Output Arguments')
            fprintf('%s\n', '    --managed-image-destinations   : Managed image output distributor information. Space-separated')
            fprintf('%s\n', '                                     list of key-value pairs. E.g "image_1=westus2 image_2=westus".')
            fprintf('%s\n', '                                     Each key is the name or resource ID of the managed image to be')
            fprintf('%s\n', '                                     created. Each value is the location of the image.')
            fprintf('%s\n', '    --shared-image-destinations    : Shared image gallery (sig) output distributor information.')
            fprintf('%s\n', '                                     Space-separated list of key-value pairs. E.g')
            fprintf('%s\n', '                                     "my_gallery_1/image_def_1=eastus,westus')
            fprintf('%s\n', '                                     my_gallery_2/image_def_2=uksouth,canadaeast,francesouth." Each')
            fprintf('%s\n', '                                     key is the sig image definition ID or sig gallery name and sig')
            fprintf('%s\n', '                                     image definition delimited by a "/". Each value is a comma-')
            fprintf('%s\n', '                                     delimited list of replica locations.')
            fprintf('%s\n', 'Global Arguments')
            fprintf('%s\n', '    --debug                        : Increase logging verbosity to show all debug logs.')
            fprintf('%s\n', '    --help -h                      : Show this help message and exit.')
            fprintf('%s\n', '    --only-show-errors             : Only show errors, suppressing warnings.')
            fprintf('%s\n', '    --output -o                    : Output format.  Allowed values: json, jsonc, none, table, tsv,')
            fprintf('%s\n', '                                     yaml, yamlc.  Default: json.')
            fprintf('%s\n', '    --query                        : JMESPath query string. See http://jmespath.org/ for more')
            fprintf('%s\n', '                                     information and examples.')
            fprintf('%s\n', '    --subscription                 : Name or ID of subscription. You can configure the default')
            fprintf('%s\n', '                                     subscription using `az account set -s NAME_OR_ID`.')
            fprintf('%s\n', '    --verbose                      : Increase logging verbosity. Use --debug for full debug logs.')
            fprintf('%s\n', 'Examples')
            fprintf('%s\n', '    Create an image builder template from an UbuntuLTS 18.04 image. Distribute it as a managed image')
            fprintf('%s\n', '    and a shared image gallery image version')
            fprintf('%s\n', '        scripts="https://my-script-url.net/customize_script.sh"')
            fprintf('%s\n', '        imagesource="Canonical:UbuntuServer:18.04-LTS:18.04.201903060"')
            fprintf('%s\n', '        az image builder create --image-source $imagesource -n mytemplate -g my-group \')
            fprintf('%s\n', '            --scripts $scripts --managed-image-destinations image_1=westus \')
            fprintf('%s\n', '            --shared-image-destinations my_shared_gallery/linux_image_def=westus,brazilsouth \')
            fprintf('%s\n', '            --identity myidentity')
            fprintf('%s\n', '    Create an image builder template using an image template file.')
            fprintf('%s\n', '        az image builder create -g my-group -n mytemplate --image-template filename')
            fprintf('%s\n', '    [Advanced] Create an image template with multiple customizers and distributors using the CLI''s')
            fprintf('%s\n', '    object cache via --defer. Supports features such as: customizer and output names, powershell')
            fprintf('%s\n', '    exit codes, inline scripts, windows restart, file customizers, artifact tags and vhd output')
            fprintf('%s\n', '    distributors.')
            fprintf('%s\n', '        script="https://my-script-url.com/customize_script.ps1"')
            fprintf('%s\n', '        imagesource="MicrosoftWindowsServer:WindowsServer:2019-Datacenter:2019.0.20190214"')
            fprintf('%s\n', '        # create and update template object in local cli cache. Defers put request to ARM')
            fprintf('%s\n', '        # Cache object ttl set via az configure.')
            fprintf('%s\n', '        az image builder create --image-source $imagesource -n mytemplate \')
            fprintf('%s\n', '            -g my-group --scripts $script --identity myidentity --defer')
            fprintf('%s\n', '        # add customizers')
            fprintf('%s\n', '        az image builder customizer add -n mytemplate -g my-group  \')
            fprintf('%s\n', '            --customizer-name my-pwsh-script --exit-codes 0 1 --inline-script \')
            fprintf('%s\n', '            "mkdir c:\buildActions" "echo Azure-Image-Builder-Was-Here \')
            fprintf('%s\n', '             > c:\buildActions\Output.txt" --type powershell --defer')
            fprintf('%s\n', '        az image builder customizer add -n mytemplate -g my-group \')
            fprintf('%s\n', '            --customizer-name my-file-customizer --type file \')
            fprintf('%s\n', '            --file-source "https://my-file-source.net/file.txt"  \')
            fprintf('%s\n', '            --dest-path "c:\buildArtifacts\file.txt" --defer')
            fprintf('%s\n', '        # add distributors')
            fprintf('%s\n', '        az image builder output add -n mytemplate -g my-group --is-vhd \')
            fprintf('%s\n', '            --output-name my-win-image-vhd --artifact-tags "is_vhd=True" --defer')
            fprintf('%s\n', '        az image builder output add -n mytemplate -g my-group \')
            fprintf('%s\n', '            --output-name my-win-image-managed --managed-image winImage \')
            fprintf('%s\n', '            --managed-image-location eastus \')
            fprintf('%s\n', '            --artifact-tags "is_vhd=False" --defer')
            fprintf('%s\n', '        # Stop deferring put request to ARM. Create the template from the object cache.')
            fprintf('%s\n', '        # Cache object will be deleted.')
            fprintf('%s\n', '        az image builder update -n mytemplate -g my-group')
            fprintf('%s\n', 'For more specific examples, use: az find "az image builder create"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class create 
