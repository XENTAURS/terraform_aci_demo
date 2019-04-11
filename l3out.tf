# resource "aci_rest" "l3out" {
#   path       = "/api/node/mo/uni/tn-${aci_tenant.terraform_t1.name}/out-L3Out_to_Core.json"
#   class_name = "l3extOut"
#
#   content = {
#         "l3extOut"= {
#           "attributes"= {
#             "annotation"= "",
#             "descr"= "",
#             "dn"= "uni/tn-CiscoLive-Student01/out-L3Out_to_Core",
#             "enforceRtctrl"= "export",
#             "name"= "L3Out_to_Core",
#             "nameAlias"= "",
#             "ownerKey"= "",
#             "ownerTag"= "",
#             "targetDscp"= "unspecified"
#           },
#           "children"= [
#             {
#               "ospfExtP"= {
#                 "attributes"= {
#                   "annotation"= "",
#                   "areaCost"= "1",
#                   "areaCtrl"= "redistribute,summary",
#                   "areaId"= "0",
#                   "areaType"= "regular",
#                   "descr"= "",
#                   "multipodInternal"= "no",
#                   "nameAlias"= ""
#                 }
#               }
#             },
#             {
#               "l3extRsL3DomAtt"= {
#                 "attributes"= {
#                   "annotation"= "",
#                   "tDn"= "uni/l3dom-CiscoLive_L3Out"
#                 }
#               }
#             },
#             {
#               "l3extRsEctx"= {
#                 "attributes"= {
#                   "annotation"= "",
#                   "tnFvCtxName"= "vrf1"
#                 }
#               }
#             },
#             {
#               "l3extLNodeP"= {
#                 "attributes"= {
#                   "annotation"= "",
#                   "configIssues"= "",
#                   "descr"= "",
#                   "name"= "L101-102",
#                   "nameAlias"= "",
#                   "ownerKey"= "",
#                   "ownerTag"= "",
#                   "tag"= "yellow-green",
#                   "targetDscp"= "unspecified"
#                 },
#                 "children"= [
#                   {
#                     "l3extRsNodeL3OutAtt"= {
#                       "attributes"= {
#                         "annotation"= "",
#                         "configIssues"= "",
#                         "rtrId"= "1.1.1.101",
#                         "rtrIdLoopBack"= "yes",
#                         "tDn"= "topology/pod-1/node-101"
#                       }
#                     }
#                   },
#                   {
#                     "l3extRsNodeL3OutAtt"= {
#                       "attributes"= {
#                         "annotation"= "",
#                         "configIssues"= "",
#                         "rtrId"= "1.1.1.102",
#                         "rtrIdLoopBack"= "no",
#                         "tDn"= "topology/pod-1/node-102"
#                       }
#                     }
#                   },
#                   {
#                     "l3extLIfP"= {
#                       "attributes"= {
#                         "annotation"= "",
#                         "descr"= "",
#                         "name"= "OSPF_int",
#                         "nameAlias"= "",
#                         "ownerKey"= "",
#                         "ownerTag"= "",
#                         "prio"= "unspecified",
#                         "tag"= "yellow-green"
#                       },
#                       "children"= [
#                         {
#                           "ospfIfP"= {
#                             "attributes"= {
#                               "annotation"= "",
#                               "authKeyId"= "1",
#                               "authType"= "none",
#                               "descr"= "",
#                               "name"= "",
#                               "nameAlias"= ""
#                             },
#                             "children"= [
#                               {
#                                 "ospfRsIfPol"= {
#                                   "attributes"= {
#                                     "annotation"= "",
#                                     "tnOspfIfPolName"= ""
#                                   }
#                                 }
#                               }
#                             ]
#                           }
#                         },
#                         {
#                           "l3extRsPathL3OutAtt"= {
#                             "attributes"= {
#                               "addr"= "0.0.0.0",
#                               "annotation"= "",
#                               "autostate"= "disabled",
#                               "descr"= "",
#                               "encap"= "vlan-2201",
#                               "encapScope"= "local",
#                               "ifInstT"= "ext-svi",
#                               "ipv6Dad"= "enabled",
#                               "llAddr"= "==",
#                               "mac"= "00=22=BD=F8=19=FF",
#                               "mode"= "regular",
#                               "mtu"= "1500",
#                               "tDn"= "topology/pod-1/protpaths-101-102/pathep-[vPC_PROD-CORE-SW01]",
#                               "targetDscp"= "unspecified"
#                             },
#                             "children"= [
#                               {
#                                 "l3extMember"= {
#                                   "attributes"= {
#                                     "addr"= "10.56.1.3/29",
#                                     "annotation"= "",
#                                     "descr"= "",
#                                     "ipv6Dad"= "enabled",
#                                     "llAddr"= "==",
#                                     "name"= "",
#                                     "nameAlias"= "",
#                                     "side"= "A"
#                                   }
#                                 }
#                               },
#                               {
#                                 "l3extMember"= {
#                                   "attributes"= {
#                                     "addr"= "10.56.1.4/29",
#                                     "annotation"= "",
#                                     "descr"= "",
#                                     "ipv6Dad"= "enabled",
#                                     "llAddr"= "==",
#                                     "name"= "",
#                                     "nameAlias"= "",
#                                     "side"= "B"
#                                   }
#                                 }
#                               }
#                             ]
#                           }
#                         },
#                         {
#                           "l3extRsNdIfPol"= {
#                             "attributes"= {
#                               "annotation"= "",
#                               "tnNdIfPolName"= ""
#                             }
#                           }
#                         },
#                         {
#                           "l3extRsLIfPCustQosPol"= {
#                             "attributes"= {
#                               "annotation"= "",
#                               "tnQosCustomPolName"= ""
#                             }
#                           }
#                         },
#                         {
#                           "l3extRsIngressQosDppPol"= {
#                             "attributes"= {
#                               "annotation"= "",
#                               "tnQosDppPolName"= ""
#                             }
#                           }
#                         },
#                         {
#                           "l3extRsEgressQosDppPol"= {
#                             "attributes"= {
#                               "annotation"= "",
#                               "tnQosDppPolName"= ""
#                             }
#                           }
#                         }
#                       ]
#                     }
#                   }
#                 ]
#               }
#             },
#             {
#               "l3extInstP"= {
#                 "attributes"= {
#                   "annotation"= "",
#                   "descr"= "",
#                   "exceptionTag"= "",
#                   "floodOnEncap"= "disabled",
#                   "matchT"= "AtleastOne",
#                   "name"= "external_network",
#                   "nameAlias"= "",
#                   "prefGrMemb"= "exclude",
#                   "prio"= "unspecified",
#                   "targetDscp"= "unspecified"
#                 },
#                 "children"= [
#                   {
#                     "l3extSubnet"= {
#                       "attributes"= {
#                         "aggregate"= "",
#                         "annotation"= "",
#                         "descr"= "",
#                         "ip"= "0.0.0.0/0",
#                         "name"= "",
#                         "nameAlias"= "",
#                         "scope"= "import-security"
#                       }
#                     }
#                   },
#                   {
#                     "fvRsCustQosPol"= {
#                       "attributes"= {
#                         "annotation"= "",
#                         "tnQosCustomPolName"= ""
#                       }
#                     }
#                   }
#                 ]
#               }
#             }
#           ]
#         }
#       }
# }
