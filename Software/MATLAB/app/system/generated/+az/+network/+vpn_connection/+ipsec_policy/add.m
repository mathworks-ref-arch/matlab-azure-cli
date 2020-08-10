classdef add < azure.AzureBase

    % Copyright 2020, The MathWorks Inc.

    methods
        function this = add()
            % az network vpn-connection ipsec-policy add : Add a VPN connection IPSec policy.
            % Set all IPsec policies of a VPN connection. If you want to set any IPsec policy, you must
            % set them all.
            this.BaseCmd = 'az network vpn-connection ipsec-policy add ';
        end
        function this = connection_name(this, varargin)
            % Connection name.
            this.Options = [this.Options, '--connection-name', varargin{:}];
        end

        function this = dh_group(this, varargin)
            % Required. The DH Group used in IKE Phase 1 for initial SA. Allowed values: DHGroup1, DHGroup14, DHGroup2, DHGroup2048, DHGroup24, ECP256, ECP384, None.
            this.Options = [this.Options, '--dh-group', varargin{:}];
        end

        function this = ike_encryption(this, varargin)
            % Required. The IKE encryption algorithm (IKE phase 2).  Allowed values: AES128, AES192, AES256, DES, DES3, GCMAES128, GCMAES256.
            this.Options = [this.Options, '--ike-encryption', varargin{:}];
        end

        function this = ike_integrity(this, varargin)
            % Required. The IKE integrity algorithm (IKE phase 2).  Allowed values: GCMAES128, GCMAES256, MD5, SHA1, SHA256, SHA384.
            this.Options = [this.Options, '--ike-integrity', varargin{:}];
        end

        function this = ipsec_encryption(this, varargin)
            % Required. The IPSec encryption algorithm (IKE phase 1). Allowed values: AES128, AES192, AES256, DES, DES3, GCMAES128, GCMAES192, GCMAES256, None.
            this.Options = [this.Options, '--ipsec-encryption', varargin{:}];
        end

        function this = ipsec_integrity(this, varargin)
            % Required. The IPSec integrity algorithm (IKE phase 1).  Allowed values: GCMAES128, GCMAES192, GCMAES256, MD5, SHA1, SHA256.
            this.Options = [this.Options, '--ipsec-integrity', varargin{:}];
        end

        function this = pfs_group(this, varargin)
            % Required. The Pfs Group used in IKE Phase 2 for new child SA. Allowed values: ECP256, ECP384, None, PFS1, PFS14, PFS2, PFS2048, PFS24, PFSMM.
            this.Options = [this.Options, '--pfs-group', varargin{:}];
        end

        function this = resource_group(this, varargin)
            % Name of resource group. You can configure the default group using `az configure --defaults group=<name>`.
            this.Options = [this.Options, '--resource-group', varargin{:}];
        end

        function this = sa_lifetime(this, varargin)
            % Required. The IPSec Security Association (also called Quick Mode or Phase 2 SA) lifetime in seconds for a site to site VPN tunnel.
            this.Options = [this.Options, '--sa-lifetime', varargin{:}];
        end

        function this = sa_max_size(this, varargin)
            % Required. The IPSec Security Association (also called Quick Mode or Phase 2 SA) payload size in KB for a site to site VPN tunnel.
            this.Options = [this.Options, '--sa-max-size', varargin{:}];
        end

        function this = no_wait(this, varargin)
            % Do not wait for the long-running operation to finish.
            this.Options = [this.Options, '--no-wait', varargin{:}];
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
            fprintf('%s\n', '    az network vpn-connection ipsec-policy add : Add a VPN connection IPSec policy.')
            fprintf('%s\n', '        Set all IPsec policies of a VPN connection. If you want to set any IPsec policy, you must')
            fprintf('%s\n', '        set them all.')
            fprintf('%s\n', 'Arguments')
            fprintf('%s\n', '    --connection-name   [Required] : Connection name.')
            fprintf('%s\n', '    --dh-group          [Required] : Required. The DH Group used in IKE Phase 1 for initial SA.')
            fprintf('%s\n', '                                     Allowed values: DHGroup1, DHGroup14, DHGroup2, DHGroup2048,')
            fprintf('%s\n', '                                     DHGroup24, ECP256, ECP384, None.')
            fprintf('%s\n', '    --ike-encryption    [Required] : Required. The IKE encryption algorithm (IKE phase 2).  Allowed')
            fprintf('%s\n', '                                     values: AES128, AES192, AES256, DES, DES3, GCMAES128,')
            fprintf('%s\n', '                                     GCMAES256.')
            fprintf('%s\n', '    --ike-integrity     [Required] : Required. The IKE integrity algorithm (IKE phase 2).  Allowed')
            fprintf('%s\n', '                                     values: GCMAES128, GCMAES256, MD5, SHA1, SHA256, SHA384.')
            fprintf('%s\n', '    --ipsec-encryption  [Required] : Required. The IPSec encryption algorithm (IKE phase 1).')
            fprintf('%s\n', '                                     Allowed values: AES128, AES192, AES256, DES, DES3, GCMAES128,')
            fprintf('%s\n', '                                     GCMAES192, GCMAES256, None.')
            fprintf('%s\n', '    --ipsec-integrity   [Required] : Required. The IPSec integrity algorithm (IKE phase 1).  Allowed')
            fprintf('%s\n', '                                     values: GCMAES128, GCMAES192, GCMAES256, MD5, SHA1, SHA256.')
            fprintf('%s\n', '    --pfs-group         [Required] : Required. The Pfs Group used in IKE Phase 2 for new child SA.')
            fprintf('%s\n', '                                     Allowed values: ECP256, ECP384, None, PFS1, PFS14, PFS2,')
            fprintf('%s\n', '                                     PFS2048, PFS24, PFSMM.')
            fprintf('%s\n', '    --resource-group -g [Required] : Name of resource group. You can configure the default group')
            fprintf('%s\n', '                                     using `az configure --defaults group=<name>`.')
            fprintf('%s\n', '    --sa-lifetime       [Required] : Required. The IPSec Security Association (also called Quick')
            fprintf('%s\n', '                                     Mode or Phase 2 SA) lifetime in seconds for a site to site VPN')
            fprintf('%s\n', '                                     tunnel.')
            fprintf('%s\n', '    --sa-max-size       [Required] : Required. The IPSec Security Association (also called Quick')
            fprintf('%s\n', '                                     Mode or Phase 2 SA) payload size in KB for a site to site VPN')
            fprintf('%s\n', '                                     tunnel.')
            fprintf('%s\n', '    --no-wait                      : Do not wait for the long-running operation to finish.')
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
            fprintf('%s\n', '    Add specified IPsec policies to a connection instead of relying on defaults.')
            fprintf('%s\n', '        az network vpn-connection ipsec-policy add -g MyResourceGroup --connection-name MyConnection')
            fprintf('%s\n', '        \')
            fprintf('%s\n', '            --dh-group DHGroup14 --ike-encryption AES256 --ike-integrity SHA384 --ipsec-encryption')
            fprintf('%s\n', '        DES3 \')
            fprintf('%s\n', '            --ipsec-integrity GCMAES256 --pfs-group PFS2048 --sa-lifetime 27000 --sa-max-size')
            fprintf('%s\n', '        102400000')
            fprintf('%s\n', 'For more specific examples, use: az find "az network vpn-connection ipsec-policy add"')
            fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
        end
    end
end % End of class add 
