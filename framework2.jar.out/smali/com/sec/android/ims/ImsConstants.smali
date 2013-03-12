.class public interface abstract Lcom/sec/android/ims/ImsConstants;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/ims/ImsConstants$ImsCameraEffect;,
        Lcom/sec/android/ims/ImsConstants$ImsCameraWhiteBalance;,
        Lcom/sec/android/ims/ImsConstants$IMSCameraParam;,
        Lcom/sec/android/ims/ImsConstants$ImsImCPIMType;,
        Lcom/sec/android/ims/ImsConstants$IM_MMContentType;
    }
.end annotation


# static fields
.field public static final AddRouteToAdress:I = 0x16

.field public static final AlarmTimerCancel:I = 0x15

.field public static final AlarmTimerSet:I = 0x14

.field public static final FUNC_CONTACT_ADD:I = 0x2a

.field public static final FUNC_CONTACT_ADD_FAV_LIST:I = 0x43

.field public static final FUNC_CONTACT_BLOCK_LIST:I = 0x2f

.field public static final FUNC_CONTACT_DELETE:I = 0x2c

.field public static final FUNC_CONTACT_DELETE_FAV_LIST:I = 0x44

.field public static final FUNC_CONTACT_DEREGISTER:I = 0x29

.field public static final FUNC_CONTACT_EDIT:I = 0x2b

.field public static final FUNC_CONTACT_GET_PRESENCE:I = 0x31

.field public static final FUNC_CONTACT_GET_PRESENCE_WATCHERLIST:I = 0x32

.field public static final FUNC_CONTACT_LIST_NAMES:I = 0x2e

.field public static final FUNC_CONTACT_PRESENCE_SUBSCRIBE_WATCHERLIST:I = 0x41

.field public static final FUNC_CONTACT_PRESENCE_UNSUBSCRIBE_WATCHERLIST:I = 0x42

.field public static final FUNC_CONTACT_PUBLISH_PRESENCE:I = 0x3b

.field public static final FUNC_CONTACT_REGISTER:I = 0x28

.field public static final FUNC_CONTACT_REMOVE_BLOCK:I = 0x30

.field public static final FUNC_CONTACT_SET_HOMEPAGE_URL:I = 0x36

.field public static final FUNC_CONTACT_SET_PRES_ACTIVITY:I = 0x39

.field public static final FUNC_CONTACT_SET_PRES_HYPERAVAILABILITY:I = 0x33

.field public static final FUNC_CONTACT_SET_PRES_ICON:I = 0x35

.field public static final FUNC_CONTACT_SET_PRES_MOOD:I = 0x3a

.field public static final FUNC_CONTACT_SET_PRES_OVERRIDING_WILLINGNESS:I = 0x34

.field public static final FUNC_CONTACT_SET_SERVICE_STATUS:I = 0x38

.field public static final FUNC_CONTACT_SET_USERNOTE:I = 0x37

.field public static final FUNC_CONTACT_SUBSCRIBE_PRESENCE:I = 0x3d

.field public static final FUNC_CONTACT_SUBSCRIBE_PRESENCELIST:I = 0x3f

.field public static final FUNC_CONTACT_UNPUBLISH_PRESENCE:I = 0x3c

.field public static final FUNC_CONTACT_UNSUBSCRIBE_PRESENCE:I = 0x3e

.field public static final FUNC_CONTACT_UNSUBSCRIBE_PRESENCELIST:I = 0x40

.field public static final FUNC_CREATE_USER_PROFILE:I = 0x47

.field public static final FUNC_EAB_GET_CONTACT_LIST:I = 0x2d

.field public static final FUNC_EAB_PUBLISH_AVIALABILITY:I = 0x5a

.field public static final FUNC_EAB_SUBSCRIBE_CONTACT:I = 0x59

.field public static final FUNC_EAB_SUBSCRIBE_CONTACTLIST:I = 0x58

.field public static final FUNC_GET_CONTACT_FROM_LIST:I = 0x48

.field public static final FUNC_GET_PRESENCE_LIST_CONTACTS:I = 0x46

.field public static final FUNC_GET_PRESENCE_LIST_NAMES:I = 0x45

.field public static final FUNC_SEND_CONTACT_FILTER_OPTIONS:I = 0x49

.field public static final IMS_ALREADY_IN_CALL:I = 0xd5

.field public static final IMS_APP_CONFIG_RETRY:I = 0x77

.field public static final IMS_CALLSWAP_ACTIVEUSE_IND:I = 0x124

.field public static final IMS_CALL_5XX_RESPONSE:I = 0x169

.field public static final IMS_CALL_ADDRESS_INCOMPLETE:I = 0x134

.field public static final IMS_CALL_ALERTING:I = 0xcd

.field public static final IMS_CALL_ALERTTONE_STOP:I = 0x166

.field public static final IMS_CALL_ALTERNATIVE_SERVICES_ONLY:I = 0x165

.field public static final IMS_CALL_ANNOUNCEMENT:I = 0x128

.field public static final IMS_CALL_BUSY:I = 0xd9

.field public static final IMS_CALL_BYE_TIMEOUT:I = 0xd3

.field public static final IMS_CALL_CODEC_EXIT_SUCCESS:I = 0xf0

.field public static final IMS_CALL_CODEC_FAILURE:I = 0xee

.field public static final IMS_CALL_CODEC_INIT_SUCCESS:I = 0xef

.field public static final IMS_CALL_DISCONNECTED:I = 0xcf

.field public static final IMS_CALL_DTMF_ALREADY_INPROG:I = 0x113

.field public static final IMS_CALL_DTMF_PROCESSED_IND:I = 0x112

.field public static final IMS_CALL_EARLY_MEDIA_INPROGRESS:I = 0x164

.field public static final IMS_CALL_ESTABLISHED:I = 0xd0

.field public static final IMS_CALL_ESTABLISHED_NO_URI_DISPLAY:I = 0x14a

.field public static final IMS_CALL_FAILED:I = 0xd6

.field public static final IMS_CALL_FAR_FRAME_READY:I = 0x12e

.field public static final IMS_CALL_FILEFEED_COMPLETE:I = 0xfa

.field public static final IMS_CALL_FILEFEED_FAILURE:I = 0xfb

.field public static final IMS_CALL_FILE_RX_FAILED:I = 0xfd

.field public static final IMS_CALL_FILE_TX_BAD:I = 0xf8

.field public static final IMS_CALL_FORBIDDEN:I = 0x12f

.field public static final IMS_CALL_FORBIDDEN_RSN_EXPIRED:I = 0x162

.field public static final IMS_CALL_FORBIDDEN_RSN_GROUP_CALL_SERVICE_UNAVAILABLE:I = 0x163

.field public static final IMS_CALL_FORBIDDEN_RSN_OUTGOING_CALLS_IMPOSSIBLE:I = 0x160

.field public static final IMS_CALL_FORBIDDEN_RSN_TEMPORARY_DISABILITY:I = 0x161

.field public static final IMS_CALL_HELD_IND:I = 0x109

.field public static final IMS_CALL_HOLD_FAILED:I = 0x126

.field public static final IMS_CALL_HOLD_FAILED_IND:I = 0x107

.field public static final IMS_CALL_INCOMING_NOTIFY:I = 0x119

.field public static final IMS_CALL_INCOMING_REFER_REQ:I = 0x115

.field public static final IMS_CALL_INCOMMING_IND:I = 0xca

.field public static final IMS_CALL_INCOMMING_REPLACES_IND:I = 0x120

.field public static final IMS_CALL_INVALID_STATE:I = 0xc9

.field public static final IMS_CALL_IN_PROGRESS:I = 0xcb

.field public static final IMS_CALL_IS_FORWARDED:I = 0xce

.field public static final IMS_CALL_LOCAL_CAPTURE_FAILURE:I = 0x12b

.field public static final IMS_CALL_LOCAL_CAPTURE_SUCCESS:I = 0x12a

.field public static final IMS_CALL_MAX:I = 0x16a

.field public static final IMS_CALL_METHOD_NOT_ALLOWED:I = 0x130

.field public static final IMS_CALL_MM_APP_DEREG_FAILURE:I = 0x13c

.field public static final IMS_CALL_MM_APP_DEREG_SUCCESS:I = 0x13b

.field public static final IMS_CALL_MM_APP_REG_FAILURE:I = 0x149

.field public static final IMS_CALL_MM_APP_REG_SUCCESS:I = 0x148

.field public static final IMS_CALL_NETWORK_UNREACHABLE:I = 0xda

.field public static final IMS_CALL_NONE:I = 0xc8

.field public static final IMS_CALL_NOT_ACCEPTABLE:I = 0x131

.field public static final IMS_CALL_NOT_ACCEPTABLE_DIVERT:I = 0x16b

.field public static final IMS_CALL_NOT_FOUND:I = 0xd7

.field public static final IMS_CALL_RECV_OPTION_ACCEPT:I = 0x1

.field public static final IMS_CALL_RECV_OPTION_MAX:I = 0x5

.field public static final IMS_CALL_RECV_OPTION_NONE:I = 0x0

.field public static final IMS_CALL_RECV_OPTION_REJECT_AS_BUSY:I = 0x4

.field public static final IMS_CALL_RECV_OPTION_REJECT_AS_DECLINE:I = 0x2

.field public static final IMS_CALL_RECV_OPTION_REJECT_AS_TRANSACTION_CLOSE:I = 0x3

.field public static final IMS_CALL_REFER_REQ_ACCEPTED:I = 0x117

.field public static final IMS_CALL_REFER_REQ_REJECTED:I = 0x118

.field public static final IMS_CALL_REJECTED:I = 0xd2

.field public static final IMS_CALL_REMOTE_CAPTURE_FAILURE:I = 0x12d

.field public static final IMS_CALL_REMOTE_CAPTURE_SUCCESS:I = 0x12c

.field public static final IMS_CALL_REQ_FAILED:I = 0xd4

.field public static final IMS_CALL_REQ_REJECTED:I = 0x123

.field public static final IMS_CALL_REQ_TERMINATED:I = 0x133

.field public static final IMS_CALL_RESUME_FAILED:I = 0x127

.field public static final IMS_CALL_RETRIEVE_FAILED_IND:I = 0x108

.field public static final IMS_CALL_RETRIEVE_IND:I = 0x10a

.field public static final IMS_CALL_RX_ACTIVATE_DONE:I = 0xf3

.field public static final IMS_CALL_RX_DEACTIVATE_DONE:I = 0xf5

.field public static final IMS_CALL_SEND_DTMF_FAILURE:I = 0x114

.field public static final IMS_CALL_SEND_IMAGE_DONE:I = 0xf6

.field public static final IMS_CALL_SEND_IMAGE_FAILED:I = 0xf7

.field public static final IMS_CALL_SEND_INFO:I = 0x125

.field public static final IMS_CALL_SEND_REFER_FAILED:I = 0x116

.field public static final IMS_CALL_SERVER_INTERNAL_ERR:I = 0x137

.field public static final IMS_CALL_SERVICE_CHANGE_IND_EVENT:I = 0xe8

.field public static final IMS_CALL_SERVICE_NOTIFICATION:I = 0x121

.field public static final IMS_CALL_SERVICE_UNAVAILABLE:I = 0x135

.field public static final IMS_CALL_SHOW_FAR_FRAME:I = 0x111

.field public static final IMS_CALL_SHOW_NEAR_FRAME:I = 0x110

.field public static final IMS_CALL_START_FILEFEED:I = 0xf9

.field public static final IMS_CALL_START_RECORDING:I = 0xfc

.field public static final IMS_CALL_STATUS_ADD_USER_TO_SESSION_FAILURE:I = 0x141

.field public static final IMS_CALL_STATUS_ADD_USER_TO_SESSION_SUCCESS:I = 0x142

.field public static final IMS_CALL_STATUS_CONF_SESSIONSTART_FAILED:I = 0x140

.field public static final IMS_CALL_STATUS_CONF_SESSIONSTART_SUCCESS:I = 0x13f

.field public static final IMS_CALL_STATUS_NTFY_SESSPRTCPNTS_UPDATED_IND:I = 0x145

.field public static final IMS_CALL_STATUS_REMOVE_USER_FROM_SESSION_FAILURE:I = 0x143

.field public static final IMS_CALL_STATUS_REMOVE_USER_FROM_SESSION_SUCCESS:I = 0x144

.field public static final IMS_CALL_STATUS_SESSION_MODIFY2CONFERECE:I = 0x147

.field public static final IMS_CALL_STOP_RECORDING_DURATION_REACHED:I = 0xff

.field public static final IMS_CALL_STOP_RECORDING_FAILURE:I = 0x101

.field public static final IMS_CALL_STOP_RECORDING_STORAGE_FULL:I = 0x100

.field public static final IMS_CALL_STOP_RECORDING_USER_STOPPED:I = 0xfe

.field public static final IMS_CALL_SWAP_COMPLETED_IND:I = 0x106

.field public static final IMS_CALL_SWAP_INPROGRESS_IND:I = 0x105

.field public static final IMS_CALL_SWITCH_FAILED:I = 0x10f

.field public static final IMS_CALL_SWITCH_FAILURE:I = 0x14f

.field public static final IMS_CALL_SWITCH_IND:I = 0x10b

.field public static final IMS_CALL_SWITCH_REJECTED:I = 0x150

.field public static final IMS_CALL_SWITCH_REQUEST:I = 0x10c

.field public static final IMS_CALL_SWITCH_RESPONSE:I = 0x10d

.field public static final IMS_CALL_SWITCH_VIDEO_ACTIVE:I = 0x15b

.field public static final IMS_CALL_SWITCH_VIDEO_ACTIVE_SUCCESS:I = 0x15c

.field public static final IMS_CALL_SWITCH_VIDEO_INACTIVE:I = 0x159

.field public static final IMS_CALL_SWITCH_VIDEO_INACTIVE_SUCCESS:I = 0x15a

.field public static final IMS_CALL_SWITCH_VOIP_TO_VSH:I = 0x151

.field public static final IMS_CALL_SWITCH_VOIP_TO_VSH_SUCCESS:I = 0x154

.field public static final IMS_CALL_SWITCH_VOIP_TO_VT:I = 0x14c

.field public static final IMS_CALL_SWITCH_VOIP_TO_VT_SUCCESS:I = 0x14e

.field public static final IMS_CALL_SWITCH_VSH_TO_VOIP:I = 0x152

.field public static final IMS_CALL_SWITCH_VSH_TO_VOIP_SUCCESS:I = 0x156

.field public static final IMS_CALL_SWITCH_VSH_TO_VT:I = 0x157

.field public static final IMS_CALL_SWITCH_VSH_TO_VT_SUCCESS:I = 0x158

.field public static final IMS_CALL_SWITCH_VT_TO_VOIP:I = 0x14b

.field public static final IMS_CALL_SWITCH_VT_TO_VOIP_SUCCESS:I = 0x14d

.field public static final IMS_CALL_SWITCH_VT_TO_VSH:I = 0x153

.field public static final IMS_CALL_SWITCH_VT_TO_VSH_SUCCESS:I = 0x155

.field public static final IMS_CALL_TEMP_UNAVAILABLE:I = 0xd8

.field public static final IMS_CALL_TEMP_UNAVAILABLE_WITH_CAUSE:I = 0x168

.field public static final IMS_CALL_TIMEOUT:I = 0xdb

.field public static final IMS_CALL_TRANSFERED:I = 0x122

.field public static final IMS_CALL_TRANSFER_FAILED:I = 0x11b

.field public static final IMS_CALL_TRANSFER_SUCCESS:I = 0x11a

.field public static final IMS_CALL_TRYING:I = 0xcc

.field public static final IMS_CALL_TX_ACTIVATE_DONE:I = 0xf2

.field public static final IMS_CALL_TX_DEACTIVATE_DONE:I = 0xf4

.field public static final IMS_CALL_TYPE_HDVT:I = 0x5

.field public static final IMS_CALL_TYPE_HDVT_LAND:I = 0x6

.field public static final IMS_CALL_TYPE_HDVT_QVGA:I = 0x9

.field public static final IMS_CALL_TYPE_HDVT_QVGA_LAND:I = 0x8

.field public static final IMS_CALL_TYPE_NULL:I = 0x0

.field public static final IMS_CALL_TYPE_POC:I = 0x3

.field public static final IMS_CALL_TYPE_VOIP:I = 0x2

.field public static final IMS_CALL_TYPE_VT:I = 0x1

.field public static final IMS_CALL_TYPE_VT_LAND:I = 0x7

.field public static final IMS_CALL_UNBLOCK_CODEC_SETTING:I = 0xf1

.field public static final IMS_CALL_UNSUPPORTED_MEDIA:I = 0x132

.field public static final IMS_CALL_USER_POWERED_OFF:I = 0x136

.field public static final IMS_CALL_WAITING_CONNECT_IND:I = 0x103

.field public static final IMS_CALL_WAITING_DISCONNECTED_IND:I = 0x104

.field public static final IMS_CALL_WAITING_IND:I = 0x102

.field public static final IMS_CALL_WAITING_REINVITE:I = 0x10e

.field public static final IMS_CAMERA_START_FAILURE_EVT:I = 0x139

.field public static final IMS_CAMERA_START_SUCCESS_EVT:I = 0x138

.field public static final IMS_CAMERA_SURFACE_INIT_FAIL_EVT:I = 0x13a

.field public static final IMS_CFG_ALWAYS_ON:I = 0xa

.field public static final IMS_CFG_AUDIO_CODEC:I = 0x6

.field public static final IMS_CFG_AUDIO_CODEC_MODE:I = 0x15

.field public static final IMS_CFG_AUDIO_FIRST:I = 0xd

.field public static final IMS_CFG_AUTO_TEST:I = 0x10

.field public static final IMS_CFG_CLIR:I = 0x1b

.field public static final IMS_CFG_CUR_DISP_FRMT:I = 0x13

.field public static final IMS_CFG_CUR_LATCH_NW:I = 0x12

.field public static final IMS_CFG_ENABLE_QOS:I = 0xb

.field public static final IMS_CFG_FRAME_RATE:I = 0x14

.field public static final IMS_CFG_LOOPBACK:I = 0x9

.field public static final IMS_CFG_MAX:I = 0x1c

.field public static final IMS_CFG_NONE:I = 0x0

.field public static final IMS_CFG_PACCESS_NW_INFO:I = 0x18

.field public static final IMS_CFG_PCSCF_DNS:I = 0x1

.field public static final IMS_CFG_PCSCF_DNS_WIFI:I = 0x19

.field public static final IMS_CFG_PCSCF_DOMAIN:I = 0x3

.field public static final IMS_CFG_PCSCF_IP:I = 0x2

.field public static final IMS_CFG_PCSCF_PORT:I = 0x4

.field public static final IMS_CFG_PREF_NWK_TYPE:I = 0x11

.field public static final IMS_CFG_PRIV_USER_IDENTY:I = 0x17

.field public static final IMS_CFG_PUB_USER_IDENTY:I = 0x16

.field public static final IMS_CFG_QOS_AWARE:I = 0xe

.field public static final IMS_CFG_VIDEO_CODEC:I = 0x5

.field public static final IMS_CFG_VIDEO_PROFILE:I = 0xc

.field public static final IMS_CFG_VT_DEBUGGING:I = 0xf

.field public static final IMS_CFG_XDM_DNS:I = 0x7

.field public static final IMS_CFG_XDM_IP:I = 0x8

.field public static final IMS_CFG_XDM_IP_WIFI:I = 0x1a

.field public static final IMS_CONF_ADD_USER_FAIL:I = 0x11e

.field public static final IMS_CONF_MEDIASERVER_CONNECT_FAILED:I = 0x11d

.field public static final IMS_CONF_PARTICIPANT_ACTIVE:I = 0x2

.field public static final IMS_CONF_PARTICIPANT_ALERTING:I = 0x5

.field public static final IMS_CONF_PARTICIPANT_INVALID:I = 0x0

.field public static final IMS_CONF_PARTICIPANT_INVITING:I = 0x1

.field public static final IMS_CONF_PARTICIPANT_MAX:I = 0x7

.field public static final IMS_CONF_PARTICIPANT_NON_ACTIVE:I = 0x4

.field public static final IMS_CONF_PARTICIPANT_ONHOLD:I = 0x6

.field public static final IMS_CONF_PARTICIPANT_REMOVING:I = 0x3

.field public static final IMS_CONF_TWC_CONNECTED:I = 0x11f

.field public static final IMS_DEINIT_VIDEO:I = 0x129

.field public static final IMS_DEREGISTRATION_FAILED:I = 0x6b

.field public static final IMS_DEREGISTRATION_SUCCEED:I = 0x6a

.field public static final IMS_DEREG_REQ_FAILED:I = 0x69

.field public static final IMS_FAILED_TO_GO_READY:I = 0xed

.field public static final IMS_IP_CHANGED_EVENT:I = 0x1a

.field public static final IMS_NETWORK_DISCONNECT:I = 0x167

.field public static final IMS_NETWORK_TRANSITION_LTE_TO_3G:I = 0x15f

.field public static final IMS_NOT_REGISTERED:I = 0x65

.field public static final IMS_NWK_TYPE_HIPRI:I = 0x3

.field public static final IMS_NWK_TYPE_MOBILE:I = 0x0

.field public static final IMS_NWK_TYPE_MOBILE_IMS:I = 0x1

.field public static final IMS_NWK_TYPE_NONE:I = -0x1

.field public static final IMS_NWK_TYPE_WIFI:I = 0x2

.field public static final IMS_PPP_OPEN_FAILURE:I = 0xde

.field public static final IMS_PPP_OPEN_SUCCESS:I = 0xdd

.field public static final IMS_PPP_OPEN_TRYING:I = 0xdc

.field public static final IMS_PPP_STATUS_CHANGE_IND_EVENT:I = 0xe9

.field public static final IMS_PPP_STATUS_CLOSE_EVENT:I = 0xea

.field public static final IMS_QOS_FAILURE:I = 0xe4

.field public static final IMS_QOS_INCALL_SUSPEND:I = 0xe6

.field public static final IMS_QOS_INCALL_UNAWARE:I = 0xe7

.field public static final IMS_QOS_NW_UNAWARE:I = 0xe5

.field public static final IMS_QOS_SUCCESS:I = 0xe3

.field public static final IMS_QOS_TRYING:I = 0xe2

.field public static final IMS_READY_TO_GO:I = 0xec

.field public static final IMS_REGISTRATION_FAILED:I = 0x68

.field public static final IMS_REGISTRATION_RETRY_FAILED:I = 0x78

.field public static final IMS_REGISTRATION_SUCCEED:I = 0x66

.field public static final IMS_REG_AUTH_CHALLENGE:I = 0x75

.field public static final IMS_REG_LIMITED_ACCESS_MODE:I = 0x74

.field public static final IMS_REG_MAX:I = 0xc7

.field public static final IMS_REG_NETWORK_UNREACHABLE:I = 0x6c

.field public static final IMS_REG_NONE:I = 0x64

.field public static final IMS_REG_NOT_SUBSCRIBED:I = 0x71

.field public static final IMS_REG_REQ_FAILED:I = 0x67

.field public static final IMS_REG_RETRY_MUL_PCSCFIP_FAILED:I = 0x7b

.field public static final IMS_REG_SERVER_ERROR:I = 0x6f

.field public static final IMS_REG_SRV_UNAVAIL:I = 0x6e

.field public static final IMS_REG_TEMP_ERROR:I = 0x70

.field public static final IMS_REG_TIMEOUT:I = 0x6d

.field public static final IMS_REREG_FAILED:I = 0x76

.field public static final IMS_RTP_NO_PACKET_FOR_10SEC:I = 0xeb

.field public static final IMS_SERVICE_STARTED:I = 0x3e9

.field public static final IMS_SESSION_ABORT:I = 0x13d

.field public static final IMS_SESSION_ACK_TIMEOUT:I = 0x13e

.field public static final IMS_SESSION_TERMINATED:I = 0xd1

.field public static final IMS_SIP_REG_FAILURE:I = 0xe1

.field public static final IMS_SIP_REG_SUCCESS:I = 0xe0

.field public static final IMS_SIP_REG_TRYING:I = 0xdf

.field public static final IMS_SMSIP_CTYPE_3GPP:I = 0x0

.field public static final IMS_SMSIP_CTYPE_3GPP2:I = 0x1

.field public static final IMS_SMSIP_TEXT_PLAIN:I = 0x2

.field public static final IMS_SVC_EAB_ACTIVITY_APPOINTMENT:I = 0x0

.field public static final IMS_SVC_EAB_ACTIVITY_AVAILABLE:I = 0x1c

.field public static final IMS_SVC_EAB_ACTIVITY_AWAY:I = 0x1

.field public static final IMS_SVC_EAB_ACTIVITY_BASE:I = 0x0

.field public static final IMS_SVC_EAB_ACTIVITY_BREAKFAST:I = 0x2

.field public static final IMS_SVC_EAB_ACTIVITY_BUSY:I = 0x3

.field public static final IMS_SVC_EAB_ACTIVITY_CONFIRM:I = 0x1d

.field public static final IMS_SVC_EAB_ACTIVITY_DINNER:I = 0x4

.field public static final IMS_SVC_EAB_ACTIVITY_FIND_ME:I = 0x1f

.field public static final IMS_SVC_EAB_ACTIVITY_HOLIDAY:I = 0x5

.field public static final IMS_SVC_EAB_ACTIVITY_INVALID:I = -0x1

.field public static final IMS_SVC_EAB_ACTIVITY_INVISIBLE:I = 0x1e

.field public static final IMS_SVC_EAB_ACTIVITY_IN_TRANSIT:I = 0x6

.field public static final IMS_SVC_EAB_ACTIVITY_LOOKING_FOR_WORK:I = 0x7

.field public static final IMS_SVC_EAB_ACTIVITY_LUNCH:I = 0x8

.field public static final IMS_SVC_EAB_ACTIVITY_MAX_ACTIVITIES:I = 0x1b

.field public static final IMS_SVC_EAB_ACTIVITY_MEAL:I = 0x9

.field public static final IMS_SVC_EAB_ACTIVITY_MEETING:I = 0xa

.field public static final IMS_SVC_EAB_ACTIVITY_ON_THE_PHONE:I = 0xb

.field public static final IMS_SVC_EAB_ACTIVITY_OTHER:I = 0xc

.field public static final IMS_SVC_EAB_ACTIVITY_PERFORMANCE:I = 0xd

.field public static final IMS_SVC_EAB_ACTIVITY_PERMANENT_ABSENCE:I = 0xe

.field public static final IMS_SVC_EAB_ACTIVITY_PLAYING:I = 0xf

.field public static final IMS_SVC_EAB_ACTIVITY_PRESENTATION:I = 0x10

.field public static final IMS_SVC_EAB_ACTIVITY_SHOPPING:I = 0x11

.field public static final IMS_SVC_EAB_ACTIVITY_SLEEPING:I = 0x12

.field public static final IMS_SVC_EAB_ACTIVITY_SPECTATOR:I = 0x13

.field public static final IMS_SVC_EAB_ACTIVITY_STEERING:I = 0x14

.field public static final IMS_SVC_EAB_ACTIVITY_TRAVEL:I = 0x15

.field public static final IMS_SVC_EAB_ACTIVITY_TV:I = 0x16

.field public static final IMS_SVC_EAB_ACTIVITY_UNKNOWN:I = 0x17

.field public static final IMS_SVC_EAB_ACTIVITY_VACATION:I = 0x18

.field public static final IMS_SVC_EAB_ACTIVITY_WORKING:I = 0x19

.field public static final IMS_SVC_EAB_ALREADY_EXIST:I = -0x3

.field public static final IMS_SVC_EAB_APP_CONN_HANDLE:I = 0x2bc

.field public static final IMS_SVC_EAB_APP_INDICATION_BASE:I = 0x44c

.field public static final IMS_SVC_EAB_APP_INDICATION_CONTACT_LIST_CREATED:I = 0x451

.field public static final IMS_SVC_EAB_APP_INDICATION_CONTACT_LIST_DELETED:I = 0x453

.field public static final IMS_SVC_EAB_APP_INDICATION_CONTACT_LIST_UPDATED:I = 0x452

.field public static final IMS_SVC_EAB_APP_INDICATION_HYPER_OFF:I = 0x450

.field public static final IMS_SVC_EAB_APP_INDICATION_INVALID:I = 0x44c

.field public static final IMS_SVC_EAB_APP_INDICATION_MAX:I = 0x45b

.field public static final IMS_SVC_EAB_APP_INDICATION_PRESENCE_AUTH_RULE_CREATED:I = 0x457

.field public static final IMS_SVC_EAB_APP_INDICATION_PRESENCE_AUTH_RULE_DELETED:I = 0x459

.field public static final IMS_SVC_EAB_APP_INDICATION_PRESENCE_AUTH_RULE_UPDATED:I = 0x458

.field public static final IMS_SVC_EAB_APP_INDICATION_PRESENCE_INFO:I = 0x44d

.field public static final IMS_SVC_EAB_APP_INDICATION_PRESENCE_LIST_CREATED:I = 0x454

.field public static final IMS_SVC_EAB_APP_INDICATION_PRESENCE_LIST_DELETED:I = 0x456

.field public static final IMS_SVC_EAB_APP_INDICATION_PRESENCE_LIST_INFO:I = 0x44e

.field public static final IMS_SVC_EAB_APP_INDICATION_PRESENCE_LIST_UPDATED:I = 0x455

.field public static final IMS_SVC_EAB_APP_INDICATION_WATCHER_INFO:I = 0x44f

.field public static final IMS_SVC_EAB_APP_RESPONSE_ADD_USER_FAILURE:I = 0x3fc

.field public static final IMS_SVC_EAB_APP_RESPONSE_ADD_USER_GROUP_FAILURE:I = 0x418

.field public static final IMS_SVC_EAB_APP_RESPONSE_ADD_USER_GROUP_SUCCESS:I = 0x417

.field public static final IMS_SVC_EAB_APP_RESPONSE_ADD_USER_SUCCESS:I = 0x3fb

.field public static final IMS_SVC_EAB_APP_RESPONSE_BASE:I = 0x3e8

.field public static final IMS_SVC_EAB_APP_RESPONSE_CONTACT_LIST_CREATE_FAILURE:I = 0x3f6

.field public static final IMS_SVC_EAB_APP_RESPONSE_CONTACT_LIST_CREATE_SUCCESS:I = 0x3f5

.field public static final IMS_SVC_EAB_APP_RESPONSE_CONTACT_LIST_DELETED_FAILURE:I = 0x3fa

.field public static final IMS_SVC_EAB_APP_RESPONSE_CONTACT_LIST_DELETED_SUCCESS:I = 0x3f9

.field public static final IMS_SVC_EAB_APP_RESPONSE_CONTACT_LIST_RENAME_FAILURE:I = 0x3f8

.field public static final IMS_SVC_EAB_APP_RESPONSE_CONTACT_LIST_RENAME_SUCCESS:I = 0x3f7

.field public static final IMS_SVC_EAB_APP_RESPONSE_CREATE_AUTH_POLICY_FAILURE:I = 0x41e

.field public static final IMS_SVC_EAB_APP_RESPONSE_CREATE_AUTH_POLICY_SUCCESS:I = 0x41d

.field public static final IMS_SVC_EAB_APP_RESPONSE_CREATE_GROUP_FAILURE:I = 0x414

.field public static final IMS_SVC_EAB_APP_RESPONSE_CREATE_GROUP_SUCCESS:I = 0x413

.field public static final IMS_SVC_EAB_APP_RESPONSE_CREATE_RLS_SERVICE_FAILURE:I = 0x402

.field public static final IMS_SVC_EAB_APP_RESPONSE_CREATE_RLS_SERVICE_SUCCESS:I = 0x401

.field public static final IMS_SVC_EAB_APP_RESPONSE_CREATE_USER_PROFILE_FAILURE:I = 0x42a

.field public static final IMS_SVC_EAB_APP_RESPONSE_CREATE_USER_PROFILE_SUCCESS:I = 0x429

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_AUTH_POLICY_FAILURE:I = 0x422

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_AUTH_POLICY_SUCCESS:I = 0x421

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_GROUP_FAILURE:I = 0x416

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_GROUP_SUCCESS:I = 0x415

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_RLS_SERVICE_FAILURE:I = 0x404

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_RLS_SERVICE_SUCCESS:I = 0x403

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_USER_FAILURE:I = 0x3fe

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_USER_GROUP_FAILURE:I = 0x41a

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_USER_GROUP_SUCCESS:I = 0x419

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_USER_PROFILE_FAILURE:I = 0x430

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_USER_PROFILE_SUCCESS:I = 0x42f

.field public static final IMS_SVC_EAB_APP_RESPONSE_DELETE_USER_SUCCESS:I = 0x3fd

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_FAILURE:I = 0x406

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_INFO_FAILURE:I = 0x410

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_INFO_SUCCESS:I = 0x40f

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_LIST_ATTR_FAILURE:I = 0x40e

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_LIST_ATTR_SUCCESS:I = 0x40d

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_LIST_FAILURE:I = 0x40a

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_LIST_MEMBERS_FAILURE:I = 0x40c

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_LIST_MEMBERS_SUCCESS:I = 0x40b

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_LIST_NAMES_FAILURE:I = 0x408

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_LIST_NAMES_SUCCESS:I = 0x407

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_LIST_SUCCESS:I = 0x409

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_CONTACT_SUCCESS:I = 0x405

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_GROUP_MEMBERS_FAILURE:I = 0x41c

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_GROUP_MEMBERS_SUCCESS:I = 0x41b

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_PRESENCE_LIST_URI_FAILURE:I = 0x412

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_PRESENCE_LIST_URI_SUCCESS:I = 0x411

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_USER_PROFILE_FAILURE:I = 0x42e

.field public static final IMS_SVC_EAB_APP_RESPONSE_FETCH_USER_PROFILE_SUCCESS:I = 0x42d

.field public static final IMS_SVC_EAB_APP_RESPONSE_GET_ACCEPT_LIST_FAILURE:I = 0x426

.field public static final IMS_SVC_EAB_APP_RESPONSE_GET_ACCEPT_LIST_SUCCESS:I = 0x425

.field public static final IMS_SVC_EAB_APP_RESPONSE_GET_BLOCK_LIST_FAILURE:I = 0x424

.field public static final IMS_SVC_EAB_APP_RESPONSE_GET_BLOCK_LIST_SUCCESS:I = 0x423

.field public static final IMS_SVC_EAB_APP_RESPONSE_GET_PRESENCE_LIST_FAILURE:I = 0x428

.field public static final IMS_SVC_EAB_APP_RESPONSE_GET_PRESENCE_LIST_SUCCESS:I = 0x427

.field public static final IMS_SVC_EAB_APP_RESPONSE_INVALID:I = 0x3e8

.field public static final IMS_SVC_EAB_APP_RESPONSE_MAX:I = 0x433

.field public static final IMS_SVC_EAB_APP_RESPONSE_PRESENCE_INFO_FAILURE:I = 0x3f2

.field public static final IMS_SVC_EAB_APP_RESPONSE_PRESENCE_INFO_SUCCESS:I = 0x3f1

.field public static final IMS_SVC_EAB_APP_RESPONSE_PUBLISH_FAILURE:I = 0x3ec

.field public static final IMS_SVC_EAB_APP_RESPONSE_PUBLISH_SUCCESS:I = 0x3eb

.field public static final IMS_SVC_EAB_APP_RESPONSE_QUERY_RMT_CAPABILITY_FAILURE:I = 0x432

.field public static final IMS_SVC_EAB_APP_RESPONSE_QUERY_RMT_CAPABILITY_SUCCESS:I = 0x431

.field public static final IMS_SVC_EAB_APP_RESPONSE_REGISTER_FAILURE:I = 0x3ea

.field public static final IMS_SVC_EAB_APP_RESPONSE_REGISTER_SUCCESS:I = 0x3e9

.field public static final IMS_SVC_EAB_APP_RESPONSE_UPDATE_AUTH_POLICY_FAILURE:I = 0x420

.field public static final IMS_SVC_EAB_APP_RESPONSE_UPDATE_AUTH_POLICY_SUCCESS:I = 0x41f

.field public static final IMS_SVC_EAB_APP_RESPONSE_UPDATE_USER_FAILURE:I = 0x400

.field public static final IMS_SVC_EAB_APP_RESPONSE_UPDATE_USER_PROFILE_FAILURE:I = 0x42c

.field public static final IMS_SVC_EAB_APP_RESPONSE_UPDATE_USER_PROFILE_SUCCESS:I = 0x42b

.field public static final IMS_SVC_EAB_APP_RESPONSE_UPDATE_USER_SUCCESS:I = 0x3ff

.field public static final IMS_SVC_EAB_APP_RESPONSE_WATCHER_INFO_FAILURE:I = 0x3f4

.field public static final IMS_SVC_EAB_APP_RESPONSE_WATCHER_INFO_SUCCESS:I = 0x3f3

.field public static final IMS_SVC_EAB_APP_RESPONSE_WATCH_LISTENER_FAILURE:I = 0x3f0

.field public static final IMS_SVC_EAB_APP_RESPONSE_WATCH_LISTENER_SUCCESS:I = 0x3ef

.field public static final IMS_SVC_EAB_APP_RESPONSE_WATCH_USER_FAILURE:I = 0x3ee

.field public static final IMS_SVC_EAB_APP_RESPONSE_WATCH_USER_SUCCESS:I = 0x3ed

.field public static final IMS_SVC_EAB_AVAILABILITY_STATUS_CLOSED:I = 0x0

.field public static final IMS_SVC_EAB_AVAILABILITY_STATUS_OPEN:I = 0x1

.field public static final IMS_SVC_EAB_AVAILABILITY_STATUS_UNKNOWN:I = -0x1

.field public static final IMS_SVC_EAB_CODE_MAX_RETURN_STATE:I = 0x2

.field public static final IMS_SVC_EAB_CONTACTLIST_DETAILS:I = 0x2c0

.field public static final IMS_SVC_EAB_CONTACTLIST_NAMES:I = 0x2bf

.field public static final IMS_SVC_EAB_CONTACT_DETAILS:I = 0x2be

.field public static final IMS_SVC_EAB_CONTACT_URI_LIST:I = 0x2bd

.field public static final IMS_SVC_EAB_DOESNOT_EXIST:I = -0x4

.field public static final IMS_SVC_EAB_FAILURE:I = 0x0

.field public static final IMS_SVC_EAB_GROUP_NAMES:I = 0x2c3

.field public static final IMS_SVC_EAB_IN_PROGRESS:I = -0x1

.field public static final IMS_SVC_EAB_MAX_RET_TYPE:I = 0x2c6

.field public static final IMS_SVC_EAB_MY_PRES_INFO:I = 0x2c4

.field public static final IMS_SVC_EAB_NOT_READY:I = -0x2

.field public static final IMS_SVC_EAB_PRESENCELIST_DETAILS:I = 0x2c2

.field public static final IMS_SVC_EAB_PRESENCELIST_NAMES:I = 0x2c1

.field public static final IMS_SVC_EAB_PRES_SERVICE_TYPE_BASE:I = 0x0

.field public static final IMS_SVC_EAB_PRES_STATUS_TYPE:I = 0x0

.field public static final IMS_SVC_EAB_RETURN_BASE:I = 0x4b0

.field public static final IMS_SVC_EAB_RETURN_GET_CONTACT_FROM_LIST:I = 0x4b1

.field public static final IMS_SVC_EAB_RETURN_RESP_FORBIDDEN:I = 0x57b

.field public static final IMS_SVC_EAB_RETURN_RESP_USR_NOT_FOUND:I = 0x57c

.field public static final IMS_SVC_EAB_RET_TYPE:I = 0x2bc

.field public static final IMS_SVC_EAB_RET_TYPE_NONE:I = -0x2bc

.field public static final IMS_SVC_EAB_SERVICE_ID_CS_VIDEO_CALL:I = 0x1

.field public static final IMS_SVC_EAB_SERVICE_ID_FILE_TRANSFER:I = 0x5

.field public static final IMS_SVC_EAB_SERVICE_ID_IMAGE_SHARE:I = 0x3

.field public static final IMS_SVC_EAB_SERVICE_ID_INVALID:I = -0x1

.field public static final IMS_SVC_EAB_SERVICE_ID_MAX:I = 0x7

.field public static final IMS_SVC_EAB_SERVICE_ID_OTHER:I = 0x6

.field public static final IMS_SVC_EAB_SERVICE_ID_SESS_MODE_MESS:I = 0x4

.field public static final IMS_SVC_EAB_SERVICE_ID_VIDEO_SHARE:I = 0x2

.field public static final IMS_SVC_EAB_SUCCESS:I = 0x1

.field public static final IMS_SVC_EAB_WATCHER_LIST:I = 0x2c5

.field public static final IMS_SVC_IM_APPTYPE_CHAT:I = 0x1

.field public static final IMS_SVC_IM_APPTYPE_FT:I = 0x2

.field public static final IMS_SVC_IM_FAILURE:I = -0x1

.field public static final IMS_SVC_IM_SUCCESS:I = 0x0

.field public static final IMS_SVC_MM_RMT_HOLD:I = 0x9

.field public static final IMS_SVC_MM_RMT_RESUME:I = 0xa

.field public static final IMS_SVC_MM_VIDEO_ACTIVE:I = 0x7

.field public static final IMS_SVC_MM_VIDEO_INACTIVE:I = 0x6

.field public static final IMS_SVC_MM_VOIP_TO_VSH:I = 0x2

.field public static final IMS_SVC_MM_VOIP_TO_VT:I = 0x0

.field public static final IMS_SVC_MM_VSH_TO_VOIP:I = 0x3

.field public static final IMS_SVC_MM_VSH_TO_VT:I = 0x5

.field public static final IMS_SVC_MM_VT_TO_VOIP:I = 0x1

.field public static final IMS_SVC_MM_VT_TO_VSH:I = 0x4

.field public static final IMS_SVC_NAB_APP_INDICATION_PRESENCE_READY:I = 0x45a

.field public static final IMS_SVC_REGISTER_APP:I = 0x3

.field public static final IMS_SVC_REGISTER_CONNECTION_HANDLE:I = 0x4

.field public static final IMS_SVC_REGISTER_CONNECTION_SUCCESSFUL:I = -0x1

.field public static final IMS_WAIT_FOR_TARGET_DISCONNECT:I = 0x11c

.field public static final MAX_NO_IMS_REG_RETRY:I = 0x3

.field public static final MAX_NO_IMS_REG_RETRY_ON_404:I = 0x6

.field public static final MOD_CONTACT_SVC:I = 0x3

.field public static final MOD_SS:I = 0x1

.field public static final MOD_VT:I = 0x0

.field public static final MS_SVC_EAB_ACTIVITY_WORSHIP:I = 0x1a

.field public static final RemoveAllAdressFrmRouteTable:I = 0x18

.field public static final RemoveAllRouteToAdress:I = 0x18

.field public static final RemoveRouteToAdress:I = 0x17

.field public static final SIP_ACCEPTED:I = 0xca

.field public static final SIP_ADDRESS_AMBIGUOUS:I = 0x1e5

.field public static final SIP_BAD_GATEWAY:I = 0x1f6

.field public static final SIP_BAD_REQUEST:I = 0x190

.field public static final SIP_BUSY_EVERYWHERE:I = 0x258

.field public static final SIP_DOES_NOT_EXIST_ANYWHERE:I = 0x25c

.field public static final SIP_FORBIDDEN_MESSAGE:I = 0x193

.field public static final SIP_GONE:I = 0x19a

.field public static final SIP_NOT_IMPLEMENTED:I = 0x1f5

.field public static final SIP_OK:I = 0xc8

.field public static final SIP_REQUEST_TIMEOUT:I = 0x198

.field public static final SIP_SERVER_INTERNAL_ERROR:I = 0x1f4

.field public static final SIP_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final SIP_TEMPORARILY_UNAVAILABLE:I = 0x1e0

.field public static final SIP_UNAUTHORISED_USER:I = 0x191

.field public static final SIP_USER_NOT_FOUND:I = 0x194

.field public static final SMSIP_CST_ACCEPTED:I = 0xa

.field public static final SMSIP_CST_DEREGISTERING:I = 0x3

.field public static final SMSIP_CST_DISCONNECTING:I = 0x8

.field public static final SMSIP_CST_FAILED:I = 0x9

.field public static final SMSIP_CST_IDLE:I = 0x0

.field public static final SMSIP_CST_NOT_REGISTERED:I = 0x1

.field public static final SMSIP_CST_OPTIONS_EXCHANGED:I = 0x7

.field public static final SMSIP_CST_RECEIVED:I = 0xb

.field public static final SMSIP_CST_REGISTERING:I = 0x2

.field public static final SMSIP_CST_SENDING_OPTIONS:I = 0x6

.field public static final SMSIP_CST_SESSION_PROGRESS:I = 0x5

.field public static final SMSIP_CST_TRYING:I = 0x4

.field public static final SettingsPCMDumpFlag:I = 0x19

.field public static final UI_APP_IM:I = 0x2

.field public static final UI_APP_IM_MSRP:I = 0xb

.field public static final UI_APP_MAX:I = 0x11

.field public static final UI_APP_MIN:I = 0x0

.field public static final UI_APP_MNGR:I = 0x9

.field public static final UI_APP_POC:I = 0x1

.field public static final UI_APP_PRES:I = 0xa

.field public static final UI_APP_REG:I = 0x5

.field public static final UI_APP_SMSIP:I = 0x3

.field public static final UI_APP_SS_CH:I = 0xd

.field public static final UI_APP_SS_CONFIG:I = 0x10

.field public static final UI_APP_SS_CT:I = 0xe

.field public static final UI_APP_SS_GEN:I = 0xc

.field public static final UI_APP_SS_TWC:I = 0xf

.field public static final UI_APP_VOIP:I = 0x4

.field public static final UI_APP_VSH:I = 0x6

.field public static final UI_APP_VT:I = 0x8

.field public static final UI_APP_XDM:I = 0x7

.field public static final VT_DIAL_INVALID:I = 0x0

.field public static final VT_DIAL_MAX:I = 0x5

.field public static final VT_DIAL_SIPURI:I = 0x1

.field public static final VT_DIAL_TELNO:I = 0x3

.field public static final VT_DIAL_TELURI:I = 0x2

.field public static final VT_DIAL_USERNAME:I = 0x4

.field public static final XAN_CAM_SYNC_ERR:I = 0x2

.field public static final XAN_CODEC_PARM_AUDIO_CODEC:I = 0x11

.field public static final XAN_CODEC_PARM_AUDIO_CODEC_PT:I = 0x12

.field public static final XAN_CODEC_PARM_AUDIO_DEVICE:I = 0x9

.field public static final XAN_CODEC_PARM_AUDIO_EVRC_RATE:I = 0x7

.field public static final XAN_CODEC_PARM_AUDIO_MUTE:I = 0x8

.field public static final XAN_CODEC_PARM_AUDIO_RATE:I = 0x6

.field public static final XAN_CODEC_PARM_AUDIO_VOLUME:I = 0xa

.field public static final XAN_CODEC_PARM_CAMERA_BRIGHTNESS:I = 0xc

.field public static final XAN_CODEC_PARM_CAMERA_COLOR_EFFECT:I = 0xd

.field public static final XAN_CODEC_PARM_CAMERA_WHITE_BALANCE:I = 0xe

.field public static final XAN_CODEC_PARM_CAMERA_ZOOM:I = 0xb

.field public static final XAN_CODEC_PARM_MAX:I = 0x13

.field public static final XAN_CODEC_PARM_VIDEO_BIT_RATE:I = 0x0

.field public static final XAN_CODEC_PARM_VIDEO_CODEC:I = 0x10

.field public static final XAN_CODEC_PARM_VIDEO_FRAME_RATE:I = 0x1

.field public static final XAN_CODEC_PARM_VIDEO_INTRA_PERIOD:I = 0x3

.field public static final XAN_CODEC_PARM_VIDEO_MUTE:I = 0x4

.field public static final XAN_CODEC_PARM_VIDEO_QP:I = 0x2

.field public static final XAN_CODEC_PARM_VIDEO_ROTATION:I = 0x5

.field public static final XAN_CODEC_PARM_VOX_MODE:I = 0xf

.field public static final XAN_DTMF_KEY_0:I = 0x0

.field public static final XAN_DTMF_KEY_1:I = 0x1

.field public static final XAN_DTMF_KEY_2:I = 0x2

.field public static final XAN_DTMF_KEY_3:I = 0x3

.field public static final XAN_DTMF_KEY_4:I = 0x4

.field public static final XAN_DTMF_KEY_5:I = 0x5

.field public static final XAN_DTMF_KEY_6:I = 0x6

.field public static final XAN_DTMF_KEY_7:I = 0x7

.field public static final XAN_DTMF_KEY_8:I = 0x8

.field public static final XAN_DTMF_KEY_9:I = 0x9

.field public static final XAN_DTMF_KEY_A:I = 0xc

.field public static final XAN_DTMF_KEY_ASTERISK:I = 0xa

.field public static final XAN_DTMF_KEY_B:I = 0xd

.field public static final XAN_DTMF_KEY_C:I = 0xe

.field public static final XAN_DTMF_KEY_D:I = 0xf

.field public static final XAN_DTMF_KEY_FLASH:I = 0x10

.field public static final XAN_DTMF_KEY_INVALID:I = -0x1

.field public static final XAN_DTMF_KEY_MAX:I = 0x11

.field public static final XAN_DTMF_KEY_POUND:I = 0xb

.field public static final XAN_FAILURE:I = -0x1

.field public static final XAN_FALSE:I = 0x0

.field public static final XAN_SS_ERROR:I = -0x1

.field public static final XAN_SS_OK:I = 0x0

.field public static final XAN_SUCCESS:I = 0x0

.field public static final XAN_TRUE:I = 0x1

.field public static final XAN_VT_CALLSSNID_INVALID:I = -0x1

.field public static final XAN_WOULDBLOCK:I = 0x1
