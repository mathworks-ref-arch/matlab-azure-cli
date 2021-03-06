function help()

    % Copyright 2020, The MathWorks Inc.

    fprintf('%s\n', 'Group')
    fprintf('%s\n', '    az security : Manage your security posture with Azure Security Center.')
    fprintf('%s\n', '        This command group is in preview. It may be changed/removed in a future release.')
    fprintf('%s\n', 'Subgroups:')
    fprintf('%s\n', '    adaptive-application-controls     : Enable control which applications can run on your Azure and')
    fprintf('%s\n', '                                        non-Azure machines (Windows and Linux).')
    fprintf('%s\n', '    adaptive_network_hardenings       : View all Adaptive Network Hardening resources.')
    fprintf('%s\n', '    alert                             : View security alerts.')
    fprintf('%s\n', '    allowed_connections               : View all possible traffic between resources for the')
    fprintf('%s\n', '                                        subscription and location, based on connection type.')
    fprintf('%s\n', '    assessment                        : View your security assessment results.')
    fprintf('%s\n', '    assessment-metadata               : View your security assessment metadata.')
    fprintf('%s\n', '    atp                               : View and manage Advanced Threat Protection settings.')
    fprintf('%s\n', '    auto-provisioning-setting         : View your auto provisioning settings.')
    fprintf('%s\n', '    contact                           : View your security contacts.')
    fprintf('%s\n', '    discovered-security-solution      : View your discovered security solutions.')
    fprintf('%s\n', '    external-security-solution        : View your external security solutions.')
    fprintf('%s\n', '    iot-alerts                        : View IoT Security aggregated alerts.')
    fprintf('%s\n', '    iot-analytics                     : View IoT Security Analytics metrics.')
    fprintf('%s\n', '    iot-recommendations               : View IoT Security aggregated recommendations.')
    fprintf('%s\n', '    iot-solution                      : Manage your IoT Security solution.')
    fprintf('%s\n', '    jit-policy                        : Manage your Just in Time network access policies.')
    fprintf('%s\n', '    location                          : Shows the Azure Security Center Home region location.')
    fprintf('%s\n', '    pricing                           : Shows the Azure Security Center Pricing tier for the')
    fprintf('%s\n', '                                        subscription.')
    fprintf('%s\n', '    regulatory-compliance-assessments : Regulatory compliance assessments.')
    fprintf('%s\n', '    regulatory-compliance-controls    : Regulatory compliance controls.')
    fprintf('%s\n', '    regulatory-compliance-standards   : Regulatory compliance standards.')
    fprintf('%s\n', '    setting                           : View your security settings.')
    fprintf('%s\n', '    sub-assessment                    : View your security sub assessments.')
    fprintf('%s\n', '    task                              : View security tasks (recommendations).')
    fprintf('%s\n', '    topology                          : Shows the network topology in your subscription.')
    fprintf('%s\n', '    workspace-setting                 : Shows the workspace settings in your subscription - these')
    fprintf('%s\n', '                                        settings let you control which workspace will hold your')
    fprintf('%s\n', '                                        security data.')
    fprintf('%s\n', 'For more specific examples, use: az find "az security"')
    fprintf('%s\n', 'Please let us know how we are doing: https://aka.ms/azureclihats')
end
