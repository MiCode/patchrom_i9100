.class public interface abstract Lcom/sec/android/ims/ImsMMTelSSSvc;
.super Ljava/lang/Object;
.source "ImsMMTelSSSvc.java"


# static fields
.field public static final FUNC_MMTEL_SS_DEREGISTER:I = 0x2

.field public static final FUNC_MMTEL_SS_DIVERT_ALL_USERS:I = 0x8

.field public static final FUNC_MMTEL_SS_DIVERT_DISABLE:I = 0x5

.field public static final FUNC_MMTEL_SS_DIVERT_ENABLE:I = 0x4

.field public static final FUNC_MMTEL_SS_DIVERT_USER:I = 0x6

.field public static final FUNC_MMTEL_SS_FECTCHCONFIGDOC:I = 0x3

.field public static final FUNC_MMTEL_SS_FETCH_DIVERTED_USERS:I = 0x24

.field public static final FUNC_MMTEL_SS_FETCH_ICB_BARRED_USERS:I = 0x22

.field public static final FUNC_MMTEL_SS_FETCH_OCB_BARRED_USERS:I = 0x23

.field public static final FUNC_MMTEL_SS_IC_BARR_ALL_USERS:I = 0xe

.field public static final FUNC_MMTEL_SS_IC_BARR_DISABLE:I = 0xb

.field public static final FUNC_MMTEL_SS_IC_BARR_ENABLE:I = 0xa

.field public static final FUNC_MMTEL_SS_IC_BARR_USER:I = 0xc

.field public static final FUNC_MMTEL_SS_IC_UNBARR_ALL_USERS:I = 0xf

.field public static final FUNC_MMTEL_SS_IC_UNBARR__USER:I = 0xd

.field public static final FUNC_MMTEL_SS_MAX:I = 0x28

.field public static final FUNC_MMTEL_SS_NONE:I = 0x0

.field public static final FUNC_MMTEL_SS_OG_BARR_ALL_USERS:I = 0x14

.field public static final FUNC_MMTEL_SS_OG_BARR_DISABLE:I = 0x11

.field public static final FUNC_MMTEL_SS_OG_BARR_ENABLE:I = 0x10

.field public static final FUNC_MMTEL_SS_OG_BARR_USER:I = 0x12

.field public static final FUNC_MMTEL_SS_OG_UNBARR_ALL_USERS:I = 0x15

.field public static final FUNC_MMTEL_SS_OG_UNBARR_USER:I = 0x13

.field public static final FUNC_MMTEL_SS_OIP_DISABLE:I = 0x17

.field public static final FUNC_MMTEL_SS_OIP_ENABLE:I = 0x16

.field public static final FUNC_MMTEL_SS_OIR_DEFAULT:I = 0x1a

.field public static final FUNC_MMTEL_SS_OIR_DISABLE:I = 0x19

.field public static final FUNC_MMTEL_SS_OIR_ENABLE:I = 0x18

.field public static final FUNC_MMTEL_SS_REGISTER:I = 0x1

.field public static final FUNC_MMTEL_SS_TIP_DISABLE:I = 0x1c

.field public static final FUNC_MMTEL_SS_TIP_ENABLE:I = 0x1b

.field public static final FUNC_MMTEL_SS_TIR_DEFAULT:I = 0x1f

.field public static final FUNC_MMTEL_SS_TIR_DISABLE:I = 0x1e

.field public static final FUNC_MMTEL_SS_TIR_ENABLE:I = 0x1d

.field public static final FUNC_MMTEL_SS_UNDO_DIVERT_ALL_USERS:I = 0x9

.field public static final FUNC_MMTEL_SS_UNDO_DIVERT_USER:I = 0x7

.field public static final FUNC_MMTEL_SS_WAITING_DISABLE:I = 0x21

.field public static final FUNC_MMTEL_SS_WAITING_ENABLE:I = 0x20

.field public static final IMS_SVC_MM_EVT_BASE:I = 0x64

.field public static final IMS_SVC_MM_SSCONFIG_STATUS_NONE:I = 0x3e8

.field public static final IMS_SVC_MM_STATUS_COMMDIV_DISABLE:I = 0x3ec

.field public static final IMS_SVC_MM_STATUS_COMMDIV_DISABLE_DIVERT_ALLINCOMINGCALLS:I = 0x3f0

.field public static final IMS_SVC_MM_STATUS_COMMDIV_DISABLE_DIVERT_ALLINCOMINGCALLS_FAILED:I = 0x413

.field public static final IMS_SVC_MM_STATUS_COMMDIV_DISABLE_FAILED:I = 0x40f

.field public static final IMS_SVC_MM_STATUS_COMMDIV_DIVERT_CALLSFROMUSER:I = 0x3ed

.field public static final IMS_SVC_MM_STATUS_COMMDIV_DIVERT_CALLSFROMUSER_FAILED:I = 0x410

.field public static final IMS_SVC_MM_STATUS_COMMDIV_DONTDIVERT_CALLSFROMUSER:I = 0x3ee

.field public static final IMS_SVC_MM_STATUS_COMMDIV_DONTDIVERT_CALLSFROMUSER_FAILED:I = 0x411

.field public static final IMS_SVC_MM_STATUS_COMMDIV_ENABLE:I = 0x3eb

.field public static final IMS_SVC_MM_STATUS_COMMDIV_ENABLE_DIVERT_ALLINCOMINGCALLS:I = 0x3ef

.field public static final IMS_SVC_MM_STATUS_COMMDIV_ENABLE_DIVERT_ALLINCOMINGCALLS_FAILED:I = 0x412

.field public static final IMS_SVC_MM_STATUS_COMMDIV_ENABLE_FAILED:I = 0x40e

.field public static final IMS_SVC_MM_STATUS_COMMDIV_GET_DIVERTEDUSERS:I = 0x3f1

.field public static final IMS_SVC_MM_STATUS_COMMDIV_GET_DIVERTEDUSERS_FAILED:I = 0x414

.field public static final IMS_SVC_MM_STATUS_COMMWAITING_DISABLE:I = 0x40d

.field public static final IMS_SVC_MM_STATUS_COMMWAITING_DISABLE_FAILED:I = 0x430

.field public static final IMS_SVC_MM_STATUS_COMMWAITING_ENABLE:I = 0x40c

.field public static final IMS_SVC_MM_STATUS_COMMWAITING_ENABLE_FAILED:I = 0x42f

.field public static final IMS_SVC_MM_STATUS_DEREG_FAIL:I = 0x81

.field public static final IMS_SVC_MM_STATUS_DEREG_SUCCESS:I = 0x80

.field public static final IMS_SVC_MM_STATUS_FETCH_DOC_FAILED:I = 0x3ea

.field public static final IMS_SVC_MM_STATUS_FETCH_DOC_SUCCESS:I = 0x3e9

.field public static final IMS_SVC_MM_STATUS_GET_DIVERTED_USERLIST:I = 0x433

.field public static final IMS_SVC_MM_STATUS_GET_ICBBARRED_USERLIST:I = 0x431

.field public static final IMS_SVC_MM_STATUS_GET_OCBBARRED_USERLIST:I = 0x432

.field public static final IMS_SVC_MM_STATUS_ICB_BARRALL_USER:I = 0x3f6

.field public static final IMS_SVC_MM_STATUS_ICB_BARRALL_USER_FAILED:I = 0x419

.field public static final IMS_SVC_MM_STATUS_ICB_BARR_USER:I = 0x3f4

.field public static final IMS_SVC_MM_STATUS_ICB_BARR_USER_FAILED:I = 0x417

.field public static final IMS_SVC_MM_STATUS_ICB_DISABLE:I = 0x3f3

.field public static final IMS_SVC_MM_STATUS_ICB_DISABLE_FAILED:I = 0x416

.field public static final IMS_SVC_MM_STATUS_ICB_ENABLE:I = 0x3f2

.field public static final IMS_SVC_MM_STATUS_ICB_ENABLE_FAILED:I = 0x415

.field public static final IMS_SVC_MM_STATUS_ICB_GET_BARREDUSERS:I = 0x3f8

.field public static final IMS_SVC_MM_STATUS_ICB_GET_BARREDUSERS_FAILED:I = 0x41b

.field public static final IMS_SVC_MM_STATUS_ICB_UNBARRALL_USER:I = 0x3f7

.field public static final IMS_SVC_MM_STATUS_ICB_UNBARRALL_USER_FAILED:I = 0x41a

.field public static final IMS_SVC_MM_STATUS_ICB_UNBARR_USER:I = 0x3f5

.field public static final IMS_SVC_MM_STATUS_ICB_UNBARR_USER_FAILED:I = 0x418

.field public static final IMS_SVC_MM_STATUS_MAX:I = 0x44c

.field public static final IMS_SVC_MM_STATUS_NONE:I = 0x64

.field public static final IMS_SVC_MM_STATUS_OCB_BARRALL_USER:I = 0x3fd

.field public static final IMS_SVC_MM_STATUS_OCB_BARRALL_USER_FAILED:I = 0x420

.field public static final IMS_SVC_MM_STATUS_OCB_BARR_USER:I = 0x3fb

.field public static final IMS_SVC_MM_STATUS_OCB_BARR_USER_FAILED:I = 0x41e

.field public static final IMS_SVC_MM_STATUS_OCB_DISABLE:I = 0x3fa

.field public static final IMS_SVC_MM_STATUS_OCB_DISABLE_FAILED:I = 0x41d

.field public static final IMS_SVC_MM_STATUS_OCB_ENABLE:I = 0x3f9

.field public static final IMS_SVC_MM_STATUS_OCB_ENABLE_FAILED:I = 0x41c

.field public static final IMS_SVC_MM_STATUS_OCB_GET_BARREDUSERS:I = 0x3ff

.field public static final IMS_SVC_MM_STATUS_OCB_GET_BARREDUSERS_FAILED:I = 0x422

.field public static final IMS_SVC_MM_STATUS_OCB_UNBARRALL_USER:I = 0x3fe

.field public static final IMS_SVC_MM_STATUS_OCB_UNBARRALL_USER_FAILED:I = 0x421

.field public static final IMS_SVC_MM_STATUS_OCB_UNBARR_USER:I = 0x3fc

.field public static final IMS_SVC_MM_STATUS_OCB_UNBARR_USER_FAILED:I = 0x41f

.field public static final IMS_SVC_MM_STATUS_OIP_DISABLE:I = 0x405

.field public static final IMS_SVC_MM_STATUS_OIP_DISABLE_FAILED:I = 0x428

.field public static final IMS_SVC_MM_STATUS_OIP_ENABLE:I = 0x404

.field public static final IMS_SVC_MM_STATUS_OIP_ENABLE_FAILED:I = 0x427

.field public static final IMS_SVC_MM_STATUS_OIR_DISABLE:I = 0x401

.field public static final IMS_SVC_MM_STATUS_OIR_DISABLE_FAILED:I = 0x424

.field public static final IMS_SVC_MM_STATUS_OIR_ENABLE:I = 0x400

.field public static final IMS_SVC_MM_STATUS_OIR_ENABLE_FAILED:I = 0x423

.field public static final IMS_SVC_MM_STATUS_OIR_GET_DEFBEHAVIOUR:I = 0x403

.field public static final IMS_SVC_MM_STATUS_OIR_GET_DEFBEHAVIOUR_FAILED:I = 0x426

.field public static final IMS_SVC_MM_STATUS_OIR_SET_DEFBEHAVIOUR:I = 0x402

.field public static final IMS_SVC_MM_STATUS_OIR_SET_DEFBEHAVIOUR_FAILED:I = 0x425

.field public static final IMS_SVC_MM_STATUS_REG_FAIL:I = 0x7f

.field public static final IMS_SVC_MM_STATUS_REG_SUCCESS:I = 0x7e

.field public static final IMS_SVC_MM_STATUS_TIP_DISABLE:I = 0x40b

.field public static final IMS_SVC_MM_STATUS_TIP_DISABLE_FAILED:I = 0x42e

.field public static final IMS_SVC_MM_STATUS_TIP_ENABLE:I = 0x40a

.field public static final IMS_SVC_MM_STATUS_TIP_ENABLE_FAILED:I = 0x42d

.field public static final IMS_SVC_MM_STATUS_TIR_DISABLE:I = 0x407

.field public static final IMS_SVC_MM_STATUS_TIR_DISABLE_FAILED:I = 0x42a

.field public static final IMS_SVC_MM_STATUS_TIR_ENABLE:I = 0x406

.field public static final IMS_SVC_MM_STATUS_TIR_ENABLE_FAILED:I = 0x429

.field public static final IMS_SVC_MM_STATUS_TIR_GET_DEFBEHAVIOUR:I = 0x409

.field public static final IMS_SVC_MM_STATUS_TIR_GET_DEFBEHAVIOUR_FAILED:I = 0x42c

.field public static final IMS_SVC_MM_STATUS_TIR_SET_DEFBEHAVIOUR:I = 0x408

.field public static final IMS_SVC_MM_STATUS_TIR_SET_DEFBEHAVIOUR_FAILED:I = 0x42b

.field public static final MOD_MMTELSS_SVC:I = 0x1f4

.field public static final SS_APP_TITLE:Ljava/lang/String; = "SSConfig"
