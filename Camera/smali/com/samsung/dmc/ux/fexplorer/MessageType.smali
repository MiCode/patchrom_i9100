.class public Lcom/samsung/dmc/ux/fexplorer/MessageType;
.super Ljava/lang/Object;
.source "MessageType.java"


# static fields
.field public static final ACCEPT_ACTIVATE_REQUEST:I = 0x16

.field public static final BEGIN_RECV_PROGRESS:I = 0x5

.field public static final BEGIN_SEND_PROGRESS:I = 0x1

.field public static final BROADCAST_RECEIVED_CREATE_LINK_FAIL:I = 0x2d

.field public static final BROADCAST_RECEIVED_DIRECT_PEER_CONNECTED_ACTION:I = 0x2c

.field public static final BROADCAST_RECEIVED_STA_DISASSOC:I = 0x2e

.field public static final CANCEL_RECV_PROGRESS:I = 0x8

.field public static final CANCEL_SEND_PROGRESS:I = 0x4

.field public static final CHECK_APP_ID:I = 0x2f

.field public static final DISABLE_DRAG_FILE:I = 0xe

.field public static final ENABLE_DRAG_FILE:I = 0xd

.field public static final END_RECV_PROGRESS:I = 0x7

.field public static final END_SEND_PROGRESS:I = 0x3

.field public static final FILE_TRANSFER_EVENT_ADDED:I = 0x1e

.field public static final FILE_TRANSFER_EVENT_END:I = 0x20

.field public static final FILE_TRANSFER_EVENT_REMOVED:I = 0x22

.field public static final FILE_TRANSFER_EVENT_SEND_FAILED:I = 0x21

.field public static final FILE_TRANSFER_EVENT_UPDATED:I = 0x1f

.field public static final HIDE_UPDATE_MEDIA_DLG:I = 0xc

.field public static final INTENT_EXTRA_GROUP_ID:Ljava/lang/String; = "Extra_GroupID"

.field public static final INTENT_EXTRA_MESSAGE_TYPE:Ljava/lang/String; = "IntentExtraMessageType"

.field public static final INTENT_EXTRA_MESSAGE_TYPE_ACTIVATE_CONFIRM:Ljava/lang/String; = "ActivateConfirm"

.field public static final INTENT_EXTRA_MESSAGE_TYPE_FILE_TRANSFER_BROWSER:Ljava/lang/String; = "FileTransferBrowser"

.field public static final INTENT_EXTRA_TASK_ID:Ljava/lang/String; = "Extra_TaskID"

.field public static final INTENT_EXTRA_USER_IP:Ljava/lang/String; = "Extra_UserID"

.field public static final JOIN_INTERACTION_APP:I = 0x9

.field public static final LEAVE_INTERACTION_APP:I = 0xa

.field public static final NOTIFICATION_CONFIRMED:I = 0x26

.field public static final PERSONAL_INFO_CHANGE:I = 0x19

.field public static final RECV_ACTIVATE_ACK_MSG:I = 0x11

.field public static final RECV_ACTIVATE_MSG:I = 0x10

.field public static final RECV_CANCEL_ACTIVATE_MSG:I = 0x1a

.field public static final RECV_REJECT_ACTIVATE_MSG:I = 0x12

.field public static final REFRESH_INTERAPP:I = 0x1d

.field public static final REFRESH_LIST_VIEW:I = 0x1c

.field public static final REJECT_ACTIVATE_REQUEST:I = 0x1b

.field public static final RESID_HEAD_PORTRAIT1:I = 0x0

.field public static final RESID_HEAD_PORTRAIT10:I = 0x9

.field public static final RESID_HEAD_PORTRAIT11:I = 0xa

.field public static final RESID_HEAD_PORTRAIT12:I = 0xb

.field public static final RESID_HEAD_PORTRAIT2:I = 0x1

.field public static final RESID_HEAD_PORTRAIT3:I = 0x2

.field public static final RESID_HEAD_PORTRAIT4:I = 0x3

.field public static final RESID_HEAD_PORTRAIT5:I = 0x4

.field public static final RESID_HEAD_PORTRAIT6:I = 0x5

.field public static final RESID_HEAD_PORTRAIT7:I = 0x6

.field public static final RESID_HEAD_PORTRAIT8:I = 0x7

.field public static final RESID_HEAD_PORTRAIT9:I = 0x8

.field public static final SEND_USER_PROFILE:I = 0x31

.field public static final SERVICE_BINDED:I = 0x27

.field public static final SERVICE_UNBINDED:I = 0x28

.field public static final SET_AUTO_PREVIEW:I = 0x25

.field public static final SET_AUTO_START:I = 0x2b

.field public static final SET_CAMERA_STATE:I = 0x24

.field public static final SHAREWITH_REQUEST_RECEIVED:I = 0x23

.field public static final SHOW_FILE_LIST:I = 0xf

.field public static final SHOW_NOTIFICATION_TEXT:I = 0x15

.field public static final SHOW_UPDATE_MEDIA_DLG:I = 0xb

.field public static final START_SERVICE:I = 0x29

.field public static final STOP_SERVICE:I = 0x2a

.field public static final UPDATE_ICON_FAILURE_MSG:I = 0x14

.field public static final UPDATE_ICON_SUCCESS_MSG:I = 0x13

.field public static final UPDATE_RECV_PROGRESS:I = 0x6

.field public static final UPDATE_SEND_PROGRESS:I = 0x2

.field public static final UPDATE_THUMB_IMAGE:I = 0x17

.field public static final UPDATE_USER_PROFILE:I = 0x18

.field public static final USER_PROFILE_REQUEST:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertResID(I)I
    .locals 1
    .parameter "id"

    .prologue
    const v0, 0x7f020006

    .line 109
    packed-switch p0, :pswitch_data_0

    .line 135
    :goto_0
    :pswitch_0
    return v0

    .line 113
    :pswitch_1
    const v0, 0x7f02000a

    goto :goto_0

    .line 115
    :pswitch_2
    const v0, 0x7f02000b

    goto :goto_0

    .line 117
    :pswitch_3
    const v0, 0x7f02000c

    goto :goto_0

    .line 119
    :pswitch_4
    const v0, 0x7f02000d

    goto :goto_0

    .line 121
    :pswitch_5
    const v0, 0x7f02000e

    goto :goto_0

    .line 123
    :pswitch_6
    const v0, 0x7f02000f

    goto :goto_0

    .line 125
    :pswitch_7
    const v0, 0x7f020010

    goto :goto_0

    .line 127
    :pswitch_8
    const v0, 0x7f020011

    goto :goto_0

    .line 129
    :pswitch_9
    const v0, 0x7f020007

    goto :goto_0

    .line 131
    :pswitch_a
    const v0, 0x7f020008

    goto :goto_0

    .line 133
    :pswitch_b
    const v0, 0x7f020009

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
