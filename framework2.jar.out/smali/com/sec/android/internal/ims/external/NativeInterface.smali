.class public Lcom/sec/android/internal/ims/external/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IMS/NativeInterface"

.field private static nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

.field private static sContext:Landroid/content/Context;

.field private static sMe:Lcom/sec/android/internal/ims/external/NativeInterface;


# instance fields
.field private alarmSet:Z

.field private isBatteryLow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/internal/ims/external/NativeInterface;->sMe:Lcom/sec/android/internal/ims/external/NativeInterface;

    .line 33
    :try_start_0
    const-string v1, "Before loading libims_jni.so"

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 34
    const-string v1, "ims_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    const-string v1, "Success --> Loaded libims_jni.so"

    invoke-static {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v0, e:Ljava/lang/Error;
    :cond_0
    :goto_0
    return-void

    .line 36
    .end local v0           #e:Ljava/lang/Error;
    :catch_0
    move-exception v0

    .line 37
    .restart local v0       #e:Ljava/lang/Error;
    sget-boolean v1, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "IMS/NativeInterface"

    const-string v2, "Error loading libims_jni.so library"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->isBatteryLow:Z

    .line 61
    sput-object p0, Lcom/sec/android/internal/ims/external/NativeInterface;->sMe:Lcom/sec/android/internal/ims/external/NativeInterface;

    .line 62
    iput-boolean v0, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->alarmSet:Z

    .line 63
    invoke-static {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMS_native_setup(Ljava/lang/Object;)I

    .line 65
    return-void
.end method

.method public static SetNativeContex(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    sput-object p0, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private static callbackImsFunctionFromNative(IIILjava/lang/Object;)V
    .locals 1
    .parameter "func_type"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 400
    sparse-switch p0, :sswitch_data_0

    .line 418
    :goto_0
    return-void

    .line 403
    :sswitch_0
    sget-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->sMe:Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->handleAlarmEvents(III)V

    goto :goto_0

    .line 408
    :sswitch_1
    sget-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->sMe:Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->handleAlarmEvents(III)V

    goto :goto_0

    .line 413
    :sswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->handleIPChangeEvent()V

    goto :goto_0

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method public static getImsNative()Lcom/sec/android/internal/ims/external/NativeInterface;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->sMe:Lcom/sec/android/internal/ims/external/NativeInterface;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/sec/android/internal/ims/external/NativeInterface;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/sec/android/internal/ims/external/NativeInterface;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;-><init>()V

    sput-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;

    .line 73
    :cond_0
    sget-object v0, Lcom/sec/android/internal/ims/external/NativeInterface;->nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleAlarmEvents(III)V
    .locals 9
    .parameter "func_type"
    .parameter "duration"
    .parameter "timerId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 428
    packed-switch p1, :pswitch_data_0

    .line 467
    :goto_0
    return-void

    .line 433
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/internal/ims/external/OnetimeAlarmReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.samsung.ims.framework.tid"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 438
    .local v0, am:Landroid/app/AlarmManager;
    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    invoke-static {v3, p3, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 440
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 443
    iput-boolean v8, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->alarmSet:Z

    goto :goto_0

    .line 450
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :pswitch_1
    iget-boolean v3, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->alarmSet:Z

    if-ne v3, v8, :cond_0

    .line 451
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/internal/ims/external/OnetimeAlarmReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    .restart local v1       #intent:Landroid/content/Intent;
    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 455
    .restart local v0       #am:Landroid/app/AlarmManager;
    sget-object v3, Lcom/sec/android/internal/ims/external/NativeInterface;->sContext:Landroid/content/Context;

    invoke-static {v3, p3, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 457
    .restart local v2       #pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 459
    iput-boolean v7, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->alarmSet:Z

    goto :goto_0

    .line 462
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_0
    const-string v3, "IMS/NativeInterface"

    const-string v4, " NO ALARM RUNNING "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 84
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "IMS/NativeInterface"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    return-void
.end method

.method private static native native_IMSCoreSvc_CodecSetParam(II)Z
.end method

.method private static native native_IMSVTCallAccept(III)Z
.end method

.method private static native native_IMSVTCancelMakeCall(I)Z
.end method

.method private static native native_IMSVTDisconnect(I)Z
.end method

.method private static native native_IMSVTMakeCall(Ljava/lang/String;I)I
.end method

.method private static native native_IMS_native_setup(Ljava/lang/Object;)I
.end method

.method private static native native_XAN_IMS_Framework_Deinit()I
.end method

.method private static native native_XAN_IMS_Framework_Init()I
.end method

.method private native native_XAN_IMS_Framework_Poweroff()I
.end method

.method private static native native_XAN_IMS_Handle_NetworkEvent(Ljava/lang/String;)I
.end method

.method private static native native_XAN_IMS_Handle_NetworkEventLoss()I
.end method

.method private static native native_XAN_IMS_SS_BlindCallTransfer(Ljava/lang/String;III)I
.end method

.method private static native native_XAN_IMS_SS_CallHold(II)I
.end method

.method private static native native_XAN_IMS_SS_CallResume(III)I
.end method

.method private native native_XAN_IMS_SendMMS(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
.end method

.method private native native_XAN_IMS_SendSMS(Ljava/lang/String;[BI)I
.end method

.method private static native native_XAN_IMS_WifiSvcEvt(II)I
.end method

.method private native native_XAN_IMS_captureImage(Ljava/lang/String;II)V
.end method

.method private native native_XAN_IMS_resetPreviewDisplay()V
.end method

.method private native native_XAN_IMS_sendDTMF(II)V
.end method

.method private native native_XAN_IMS_sendLiveVideo()V
.end method

.method private native native_XAN_IMS_sendStillImage(Ljava/lang/String;I)V
.end method

.method private native native_XAN_IMS_setCameraParam(II)V
.end method

.method private native native_XAN_IMS_setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
.end method

.method private native native_XAN_IMS_setOrientation(I)V
.end method

.method private native native_XAN_IMS_setPreviewDisplay(Landroid/view/Surface;III)Z
.end method

.method private native native_XAN_IMS_switchCamera()V
.end method

.method private native native_XAN_IMS_switchVideoSurface()V
.end method

.method private native native_XAN_IPC_ResetRegAvailEvent()V
.end method

.method private native native_XAN_IPC_StopRegAvailEvent()V
.end method

.method private static native native_xan_timer_expiry_cb(I)I
.end method

.method private static postImsEventFromNative(IIIILjava/lang/Object;)V
    .locals 8
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 368
    const-string v0, ">>>>>>>>>>>>> CALL BACK EVENT FROM IMS STACK, code: "

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arg1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arg2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obj: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->log(Ljava/lang/String;)V

    .line 378
    const/4 v5, 0x0

    .line 379
    .local v5, data:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 381
    :try_start_0
    new-instance v6, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-direct {v6, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v5           #data:Ljava/lang/String;
    .local v6, data:Ljava/lang/String;
    move-object v5, v6

    .line 384
    .end local v6           #data:Ljava/lang/String;
    .restart local v5       #data:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/internal/ims/IMSService;->broadcastEvent(IIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v7

    .line 387
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public DeinitSurface()Z
    .locals 2

    .prologue
    .line 104
    const-string v0, "IMS/NativeInterface"

    const-string v1, "DeinitSurface.."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public ResetRegAvailEvent()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "IMS/NativeInterface"

    const-string v1, "ResetRegAvailEvent: Calling  native_XAN_IPC_ResetRegAvailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IPC_ResetRegAvailEvent()V

    .line 266
    return-void
.end method

.method public StopRegAvailEvent()V
    .locals 2

    .prologue
    .line 257
    const-string v0, "IMS/NativeInterface"

    const-string v1, "StopRegAvailEvent: Calling  native_XAN_IPC_StopRegAvailEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IPC_StopRegAvailEvent()V

    .line 259
    return-void
.end method

.method public SwitchVideoSurface()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "IMS/NativeInterface"

    const-string v1, "SwitchVideoSurface: Calling  native_XAN_IMS_resetPreviewDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_switchVideoSurface()V

    .line 251
    return-void
.end method

.method public WifiSvcEvent(II)I
    .locals 3
    .parameter "Wifi_nw_state"
    .parameter "Ipaddr"

    .prologue
    .line 212
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiSvcEvent: Wifi_nw_state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Ipaddr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_WifiSvcEvt(II)I

    move-result v0

    return v0
.end method

.method public acceptVoipCall(III)Z
    .locals 3
    .parameter "callId"
    .parameter "acceptType"
    .parameter "callType"

    .prologue
    .line 170
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptVoipCall: CallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "acceptType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CallType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMSVTCallAccept(III)Z

    move-result v0

    return v0
.end method

.method public alarmExpiryCallback(I)V
    .locals 3
    .parameter "timerId"

    .prologue
    .line 470
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarmExpiryCallback: Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-static {p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_xan_timer_expiry_cb(I)I

    .line 472
    return-void
.end method

.method public cancelVoipCall(I)Z
    .locals 3
    .parameter "callId"

    .prologue
    .line 163
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelVoipCall: CallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMSVTCancelMakeCall(I)Z

    move-result v0

    return v0
.end method

.method public captureImage(Ljava/lang/String;II)V
    .locals 2
    .parameter "filePath"
    .parameter "imageFormat"
    .parameter "isNearEnd"

    .prologue
    .line 293
    const-string v0, "IMS/NativeInterface"

    const-string v1, "captureImage: Calling  native_XAN_IMS_captureImage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_captureImage(Ljava/lang/String;II)V

    .line 295
    return-void
.end method

.method public deinitImsFramework()Z
    .locals 2

    .prologue
    .line 98
    const-string v0, "IMS/NativeInterface"

    const-string v1, "deinitImsFramework: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_Framework_Deinit()I

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public disconnectVoipCall(I)Z
    .locals 3
    .parameter "callId"

    .prologue
    .line 156
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectVoipCall: CallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMSVTDisconnect(I)Z

    move-result v0

    return v0
.end method

.method public getBatteryState()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->isBatteryLow:Z

    return v0
.end method

.method public holdVoipCall(II)I
    .locals 3
    .parameter "callId"
    .parameter "appType"

    .prologue
    .line 179
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVoipCall: CallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_SS_CallHold(II)I

    move-result v0

    return v0
.end method

.method public initImsFramework()Z
    .locals 2

    .prologue
    .line 90
    const-string v0, "IMS/NativeInterface"

    const-string v1, "initImsFramework: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_Framework_Init()I

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public native initProc()V
.end method

.method public makeVoipCall(Ljava/lang/String;III)I
    .locals 3
    .parameter "dialNum"
    .parameter "dialType"
    .parameter "callType"
    .parameter "appType"

    .prologue
    .line 139
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeVoipCall: DialNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CallType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_IMSVTMakeCall(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onNetworkEvent(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 121
    const-string v0, "IMS/NativeInterface"

    const-string v1, "onNetworkEvent: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_Handle_NetworkEvent(Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onNetworkLossEvt()Z
    .locals 2

    .prologue
    .line 130
    const-string v0, "IMS/NativeInterface"

    const-string v1, "onNetworkLossEvt: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_Handle_NetworkEventLoss()I

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public onPowerOff()V
    .locals 2

    .prologue
    .line 340
    const-string v0, "IMS/NativeInterface"

    const-string v1, "onPowerOff: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_Framework_Poweroff()I

    .line 342
    return-void
.end method

.method public resetPreviewDisplay()V
    .locals 2

    .prologue
    .line 270
    const-string v0, "IMS/NativeInterface"

    const-string v1, "resetPreviewDisplay: Calling  native_XAN_IMS_resetPreviewDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_resetPreviewDisplay()V

    .line 272
    return-void
.end method

.method public resumeVoipCall(III)I
    .locals 3
    .parameter "callId"
    .parameter "appType"
    .parameter "ssId"

    .prologue
    .line 187
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeVoipCall: CallId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ssId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_SS_CallResume(III)I

    move-result v0

    return v0
.end method

.method public sendDTMF(II)V
    .locals 2
    .parameter "callid"
    .parameter "dtmfChr"

    .prologue
    .line 331
    const-string v0, "IMS/NativeInterface"

    const-string v1, "sendDTMF: Calling  native_XAN_IMS_sendDTMF"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_sendDTMF(II)V

    .line 333
    return-void
.end method

.method public sendLiveVideo()V
    .locals 2

    .prologue
    .line 317
    const-string v0, "IMS/NativeInterface"

    const-string v1, "sendLiveVideo: Calling  native_XAN_IMS_sendLiveVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_sendLiveVideo()V

    .line 319
    return-void
.end method

.method public sendMMS(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .locals 1
    .parameter "displayName"
    .parameter "remoteURI"
    .parameter "contentType"
    .parameter "dataType"
    .parameter "data"

    .prologue
    .line 231
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_SendMMS(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendSMS(Ljava/lang/String;[BI)I
    .locals 1
    .parameter "remoteNo"
    .parameter "msg"
    .parameter "length"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_SendSMS(Ljava/lang/String;[BI)I

    move-result v0

    return v0
.end method

.method public sendStillImage(Ljava/lang/String;I)V
    .locals 2
    .parameter "filePath"
    .parameter "imageFormat"

    .prologue
    .line 309
    const-string v0, "IMS/NativeInterface"

    const-string v1, "sendStillImage: Calling  native_XAN_IMS_sendStillImage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_sendStillImage(Ljava/lang/String;I)V

    .line 311
    return-void
.end method

.method public setAudioOffHook()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "IMS/NativeInterface"

    const-string v1, "setAudioOffHook.."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public setBatteryState(Z)V
    .locals 0
    .parameter "isBatteryLow"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/sec/android/internal/ims/external/NativeInterface;->isBatteryLow:Z

    .line 57
    return-void
.end method

.method public setCameraParam(II)V
    .locals 2
    .parameter "param"
    .parameter "value"

    .prologue
    .line 286
    const-string v0, "IMS/NativeInterface"

    const-string v1, "setCameraParam: Calling  native_XAN_IMS_setCameraParam"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setCameraParam(II)V

    .line 288
    return-void
.end method

.method public setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .locals 0
    .parameter "cfg_params"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 325
    return-void
.end method

.method public setIMSOrientation(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 278
    const-string v0, "IMS/NativeInterface"

    const-string v1, "setIMSOrientation: Calling  native_XAN_IMS_setOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setOrientation(I)V

    .line 280
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;III)Z
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"
    .parameter "isNearEnd"

    .prologue
    .line 239
    const-string v0, "IMS/NativeInterface"

    const-string v1, "setPreviewDisplay: Calling  native_XAN_IMS_setPreviewDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_setPreviewDisplay(Landroid/view/Surface;III)Z

    move-result v0

    return v0
.end method

.method public stopCamera()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "IMS/NativeInterface"

    const-string v1, "stopCamera.."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public switchCamera()V
    .locals 2

    .prologue
    .line 301
    const-string v0, "IMS/NativeInterface"

    const-string v1, "switchCamera: Calling  native_XAN_IMS_switchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_switchCamera()V

    .line 303
    return-void
.end method

.method public transferVoipCallBlind(IILjava/lang/String;I)I
    .locals 3
    .parameter "callId"
    .parameter "dialType"
    .parameter "referNum"
    .parameter "appType"

    .prologue
    .line 197
    const-string v0, "IMS/NativeInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transferVoipCallBlind: CallID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DialType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ReferNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {p3, p1, p2, p4}, Lcom/sec/android/internal/ims/external/NativeInterface;->native_XAN_IMS_SS_BlindCallTransfer(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method
