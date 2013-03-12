.class public interface abstract Lcom/sec/android/ims/ImsMMTelSvc;
.super Ljava/lang/Object;
.source "ImsMMTelSvc.java"


# static fields
.field public static final FUNC_MMTEL_ACCEPT_CALL:I = 0x5

.field public static final FUNC_MMTEL_ADD_USER_CONFERENCE:I = 0x15

.field public static final FUNC_MMTEL_CANCEL_CALL:I = 0x4

.field public static final FUNC_MMTEL_CODEC_SET_PARAM:I = 0xd

.field public static final FUNC_MMTEL_DEREGISTER:I = 0x1

.field public static final FUNC_MMTEL_DISCONNECT_CALL:I = 0x3

.field public static final FUNC_MMTEL_ENABLE_CP_VOLTE:I = 0x16

.field public static final FUNC_MMTEL_GET_MUTE_STATE:I = 0xa

.field public static final FUNC_MMTEL_MAKE_CALL:I = 0x2

.field public static final FUNC_MMTEL_MAKE_CONFERENCE_CALL:I = 0x14

.field public static final FUNC_MMTEL_MODIFY_ACCEPT_CALL:I = 0xf

.field public static final FUNC_MMTEL_MODIFY_REJECT_CALL:I = 0x10

.field public static final FUNC_MMTEL_MUTE_CALL:I = 0x9

.field public static final FUNC_MMTEL_REGISTER:I = 0x0

.field public static final FUNC_MMTEL_REJECT_CALL:I = 0x6

.field public static final FUNC_MMTEL_SEND_DTMF:I = 0x7

.field public static final FUNC_MMTEL_SET_AUTO_RESPONSE:I = 0x11

.field public static final FUNC_MMTEL_SS_BCT:I = 0xc

.field public static final FUNC_MMTEL_SS_CALL_HOLD:I = 0x8

.field public static final FUNC_MMTEL_SS_CALL_RESUME:I = 0xb

.field public static final FUNC_MMTEL_SS_CALL_SWITCH:I = 0xe

.field public static final FUNC_MMTEL_SWITCH_CALL:I = 0x12

.field public static final FUNC_MMTEL_Video_Share_ACCEPT:I = 0x13

.field public static final IMS_SVC_MM_EVT_BASE:I = 0x64

.field public static final IMS_SVC_MM_FAILURE:I = -0x1

.field public static final IMS_SVC_MM_NTFY_FAR_FRAME_READY_IND:I = 0xd5

.field public static final IMS_SVC_MM_NTFY_IND_BASE:I = 0xc8

.field public static final IMS_SVC_MM_NTFY_NONE:I = 0xc8

.field public static final IMS_SVC_MM_NTFY_RECORDSTATUS_IND:I = 0xcf

.field public static final IMS_SVC_MM_NTFY_SESSESTABLISHREQ_IND:I = 0xc9

.field public static final IMS_SVC_MM_NTFY_SESSESTABLISHSUCC_IND:I = 0xca

.field public static final IMS_SVC_MM_NTFY_SESSIONREL_IND:I = 0xcb

.field public static final IMS_SVC_MM_NTFY_SESSMODIFYRREQ_IND:I = 0xd0

.field public static final IMS_SVC_MM_NTFY_SESSMODIFYSUCC_IND:I = 0xd1

.field public static final IMS_SVC_MM_NTFY_SESSMODIFY_IND:I = 0xce

.field public static final IMS_SVC_MM_NTFY_SESSREPLACES_DONE_IND:I = 0xd3

.field public static final IMS_SVC_MM_NTFY_SESSREPLACES_FAILED_IND:I = 0xd4

.field public static final IMS_SVC_MM_NTFY_SESSREPLACES_INPRG_IND:I = 0xd2

.field public static final IMS_SVC_MM_NTFY_SESSTRANSFERREQ_IND:I = 0xcc

.field public static final IMS_SVC_MM_NTFY_SESSTRANSFERSTATUS_IND:I = 0xcd

.field public static final IMS_SVC_MM_STATUS_DEREG_FAIL:I = 0x81

.field public static final IMS_SVC_MM_STATUS_DEREG_SUCCESS:I = 0x80

.field public static final IMS_SVC_MM_STATUS_NONE:I = 0x64

.field public static final IMS_SVC_MM_STATUS_RECSTART_FAIL:I = 0x71

.field public static final IMS_SVC_MM_STATUS_RECSTART_SUCC:I = 0x70

.field public static final IMS_SVC_MM_STATUS_RECSTOP_FAIL:I = 0x6f

.field public static final IMS_SVC_MM_STATUS_RECSTOP_SUCC:I = 0x6e

.field public static final IMS_SVC_MM_STATUS_REG_FAIL:I = 0x7f

.field public static final IMS_SVC_MM_STATUS_REG_SUCCESS:I = 0x7e

.field public static final IMS_SVC_MM_STATUS_SENDDTMF_FAIL:I = 0x73

.field public static final IMS_SVC_MM_STATUS_SENDDTMF_SUCCESS:I = 0x72

.field public static final IMS_SVC_MM_STATUS_SESSCANCEL_FAIL:I = 0x6b

.field public static final IMS_SVC_MM_STATUS_SESSCANCEL_SUCCESS:I = 0x6a

.field public static final IMS_SVC_MM_STATUS_SESSIONHOLD_FAIL:I = 0x77

.field public static final IMS_SVC_MM_STATUS_SESSIONHOLD_SUCCESS:I = 0x76

.field public static final IMS_SVC_MM_STATUS_SESSIONMODIFY_FAIL:I = 0x7b

.field public static final IMS_SVC_MM_STATUS_SESSIONMODIFY_SUCCESS:I = 0x7a

.field public static final IMS_SVC_MM_STATUS_SESSIONRESUME_FAIL:I = 0x79

.field public static final IMS_SVC_MM_STATUS_SESSIONRESUME_SUCCESS:I = 0x78

.field public static final IMS_SVC_MM_STATUS_SESSIONSWAP_FAIL:I = 0x7d

.field public static final IMS_SVC_MM_STATUS_SESSIONSWAP_SUCCESS:I = 0x7c

.field public static final IMS_SVC_MM_STATUS_SESSSTART_FAILED:I = 0x65

.field public static final IMS_SVC_MM_STATUS_SESSSTART_FAIL_REDIRECTREQ:I = 0x69

.field public static final IMS_SVC_MM_STATUS_SESSSTART_REMOTE_RINGING:I = 0x66

.field public static final IMS_SVC_MM_STATUS_SESSSTART_REMOTE_SESSFORWARDED:I = 0x67

.field public static final IMS_SVC_MM_STATUS_SESSSTART_SUCCESS:I = 0x68

.field public static final IMS_SVC_MM_STATUS_SESSSTOP_FAILED:I = 0x82

.field public static final IMS_SVC_MM_STATUS_SESSTRANSFERREQ_FAIL:I = 0x75

.field public static final IMS_SVC_MM_STATUS_SESSTRANSFERREQ_SUCCESS:I = 0x74

.field public static final IMS_SVC_MM_STATUS_SESS_RELEASE_FAILED:I = 0x6d

.field public static final IMS_SVC_MM_STATUS_SESS_RELEASE_SUCCESS:I = 0x6c

.field public static final IMS_SVC_MM_SUCCESS:I = 0x0

.field public static final MOD_MMTEL_SVC:I = 0x1

.field public static final MOD_REG_SVC:I
