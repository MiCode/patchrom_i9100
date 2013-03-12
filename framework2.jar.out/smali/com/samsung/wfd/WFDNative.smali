.class public Lcom/samsung/wfd/WFDNative;
.super Ljava/lang/Object;
.source "WFDNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WFD.Native.java"

.field private static mAudioType:I

.field private static mContext:Landroid/content/Context;

.field private static mDongleVer:Ljava/lang/String;

.field private static mRemoteIP:Ljava/lang/String;

.field private static mRemoteIP_4th:I

.field private static mUpdateURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    .line 32
    sput v1, Lcom/samsung/wfd/WFDNative;->mRemoteIP_4th:I

    .line 33
    sput-object v0, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    .line 34
    sput-object v0, Lcom/samsung/wfd/WFDNative;->mUpdateURL:Ljava/lang/String;

    .line 35
    sput v1, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    .line 36
    sput-object v0, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    .line 244
    const-string v0, "samsung_psi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 245
    const-string v0, "WFD_ENGINE"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native WFDGetStatus()Z
.end method

.method public static native WFDGetSubtitleStatus()Z
.end method

.method public static native WFDGetSuspendStatus()Z
.end method

.method public static native WFDPostSubtitle(Ljava/lang/String;I)Z
.end method

.method public static native WFDPostSuspend(Ljava/lang/String;)Z
.end method

.method public static native WFDSetSubtitleStatus(Z)Z
.end method

.method public static native WFDSetSuspendStatus(Z)Z
.end method

.method public static callbackFromNative(IILjava/lang/Object;)V
    .locals 17
    .parameter "msg"
    .parameter "data"
    .parameter "ext_data"

    .prologue
    .line 56
    const-string v12, "WFD.Native.java"

    const-string v13, "callbackFromNative: %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sparse-switch p0, :sswitch_data_0

    .line 225
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local p2
    :sswitch_0
    if-eqz p2, :cond_0

    .line 63
    const-string v13, "WFD.Native.java"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v12, p2

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    .line 65
    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, info:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    .line 67
    .local v11, length:I
    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    .line 68
    const/4 v12, 0x4

    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    .line 69
    const-string v12, "WFD.Native.java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ver:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v1           #info:Ljava/lang/String;
    .end local v11           #length:I
    :sswitch_1
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD play success"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/16 v12, 0x780

    sput v12, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    .line 81
    if-eqz p2, :cond_2

    move-object/from16 v12, p2

    .line 82
    check-cast v12, Ljava/lang/String;

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 83
    const/16 v12, 0x1000

    sput v12, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    .line 85
    :cond_1
    const-string v12, "WFD.Native.java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "audio type : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", count:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    const-string v12, "WFD.Native.java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "count:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_0

    .line 92
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v4, intent_connected:Landroid/content/Intent;
    const/high16 v12, 0x800

    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    const-string v12, "count"

    sget v13, Lcom/samsung/wfd/WFDNative;->mAudioType:I

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 104
    const-string v12, "IP"

    sget-object v13, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/4 v12, 0x0

    sput-object v12, Lcom/samsung/wfd/WFDNative;->mRemoteIP:Ljava/lang/String;

    .line 108
    :cond_3
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mUpdateURL:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 109
    const-string v12, "URL"

    sget-object v13, Lcom/samsung/wfd/WFDNative;->mUpdateURL:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const/4 v12, 0x0

    sput-object v12, Lcom/samsung/wfd/WFDNative;->mUpdateURL:Ljava/lang/String;

    .line 113
    :cond_4
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 114
    const-string v12, "VER"

    sget-object v13, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/4 v12, 0x0

    sput-object v12, Lcom/samsung/wfd/WFDNative;->mDongleVer:Ljava/lang/String;

    .line 118
    :cond_5
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD client connected broadcast sent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 125
    .end local v4           #intent_connected:Landroid/content/Intent;
    .restart local p2
    :sswitch_2
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD disconnected"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_0

    .line 127
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v8, intent_terminated:Landroid/content/Intent;
    const/high16 v12, 0x800

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD client disconnected broadcast sent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 136
    .end local v8           #intent_terminated:Landroid/content/Intent;
    :sswitch_3
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD resolution :0x%x"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_0

    .line 139
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.WIFI_DISPLAY_RES_FROM_NATIVE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v7, intent_resolution:Landroid/content/Intent;
    const/high16 v12, 0x800

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    const-string v12, "res"

    move/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD resolution broadcast sent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 148
    .end local v7           #intent_resolution:Landroid/content/Intent;
    :sswitch_4
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD param changed notification"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_0

    .line 151
    new-instance v2, Landroid/content/Intent;

    const-string v12, "android.intent.action.WIFI_DISPLAY_PARAM_CHANGED"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, intent_chage_param:Landroid/content/Intent;
    const/high16 v12, 0x800

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD param changed broadcast sent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    .end local v2           #intent_chage_param:Landroid/content/Intent;
    :sswitch_5
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD transport mode changed notification"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_0

    .line 162
    const-string v12, "WFD.Native.java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "intent_chage_transport_mode : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v3, Landroid/content/Intent;

    const-string v12, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v3, intent_chage_transport_mode:Landroid/content/Intent;
    const/high16 v12, 0x800

    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    const-string v12, "CONNECTION_MODE"

    move/from16 v0, p1

    invoke-virtual {v3, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 172
    .end local v3           #intent_chage_transport_mode:Landroid/content/Intent;
    :sswitch_6
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD HDCP Connection Info notification"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_0

    .line 175
    const-string v12, "WFD.Native.java"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "intent_hdcp_connection Info : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.WIFIDISPLAY_NOTI_HDCP_INFO_FROM_NATIVE"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v6, intent_hdcp_info:Landroid/content/Intent;
    const-string v12, "cause"

    move/from16 v0, p1

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 184
    .end local v6           #intent_hdcp_info:Landroid/content/Intent;
    :sswitch_7
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_0

    .line 186
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.WIFI_DISPLAY_ERROR_FROM_NATIVE"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v5, intent_error_param:Landroid/content/Intent;
    const/high16 v12, 0x800

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    const-string v12, "cause"

    move/from16 v0, p1

    invoke-virtual {v5, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD noti to App - Error"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    .end local v5           #intent_error_param:Landroid/content/Intent;
    :sswitch_8
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v12, p2

    .line 197
    check-cast v12, Ljava/lang/String;

    sput-object v12, Lcom/samsung/wfd/WFDNative;->mUpdateURL:Ljava/lang/String;

    .line 199
    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v9, intent_url_param:Landroid/content/Intent;
    const/high16 v12, 0x800

    invoke-virtual {v9, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    const-string v12, "URL"

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p2

    invoke-virtual {v9, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD noti to App - Dongle update URL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    .end local v9           #intent_url_param:Landroid/content/Intent;
    .restart local p2
    :sswitch_9
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_0

    .line 209
    const-string v12, "WFD.Native.java"

    const-string v13, "WFD noti to App - weak network connection.."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v10, Landroid/content/Intent;

    const-string v12, "android.intent.action.WIFIDISPLAY_WEAK_NETWORK"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v10, intent_weak_network:Landroid/content/Intent;
    const/high16 v12, 0x800

    invoke-virtual {v10, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    sget-object v12, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0xa -> :sswitch_7
        0x14 -> :sswitch_8
        0x1e -> :sswitch_9
    .end sparse-switch
.end method

.method public static native changeParams(IIII)Z
.end method

.method public static native getEngineStatus()I
.end method

.method public static native invokeStreaming(III)Z
.end method

.method public static native pause()Z
.end method

.method public static native resume()Z
.end method

.method public static native revokeStreaming()Z
.end method

.method public static native sendStreamMusicVolume(I)Z
.end method

.method public static native sendUpdateUserInput(I)Z
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    sput-object p0, Lcom/samsung/wfd/WFDNative;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public static native setRtpTransport(III)Z
.end method

.method public static native start(IIIII)Z
.end method

.method public static native stop()Z
.end method
