.class public Landroid/plugin/dsds/PlugInDsdsService;
.super Ljava/lang/Object;
.source "PlugInDsdsService.java"


# static fields
.field public static final IMPL_NAME:Ljava/lang/String; = "android.plugin.dsds.PlugInDsdsServiceImpl"

.field public static final INTERFACE_NAME:Ljava/lang/String; = "android.plugin.dsds.PlugInDsdsService"

.field public static final NAME:Ljava/lang/String; = "DSDS"

.field public static final SIM_SLOT_1:I = 0x0

.field public static final SIM_SLOT_2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PluginDsds"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 1
    .parameter "body"
    .parameter "scAddress"
    .parameter "Address"
    .parameter "SmsType"
    .parameter "date"
    .parameter "subscription"

    .prologue
    .line 398
    const/4 v0, 0x2

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "subscription"

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "encodingType"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public getAdnLikesInfo(II)[I
    .locals 1
    .parameter "efid"
    .parameter "simSlot"

    .prologue
    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdnLikesSimStatusInfo(II)I
    .locals 1
    .parameter "efid"
    .parameter "simSlot"

    .prologue
    .line 359
    const/4 v0, -0x1

    return v0
.end method

.method public getAdnRecordsInEf(II)Ljava/util/List;
    .locals 1
    .parameter "efid"
    .parameter "simSlot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdnRecordsSize(II)[I
    .locals 1
    .parameter "efid"
    .parameter "simSlot"

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdnUri(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallState(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 124
    const/4 v0, -0x1

    return v0
.end method

.method public getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .parameter "context"
    .parameter "number"
    .parameter "simSlot"

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCbSettings(I)Landroid/telephony/gsm/CbConfig;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLocation(I)Landroid/os/Bundle;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataRoamingEnabled(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public getDataSimSlot()I
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public getDataState(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public getDataSubscription()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultSimForVoiceCalls()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, -0x1

    return v0
.end method

.method public getDefaultSubscription()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFdnUri(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFdnEnabled(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getInsertedSimCount()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 237
    const/4 v0, -0x1

    return v0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "networkType"

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 1
    .parameter "subscription"

    .prologue
    .line 193
    const/4 v0, -0x1

    return v0
.end method

.method public getPin2Retry(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 217
    const/4 v0, -0x1

    return v0
.end method

.method public getPinRemainingStatus(II)I
    .locals 1
    .parameter "type"
    .parameter "simSlot"

    .prologue
    .line 229
    const/4 v0, -0x1

    return v0
.end method

.method public getPinRetry(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 213
    const/4 v0, -0x1

    return v0
.end method

.method public getPreferredDataSubscription()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getPuk2Retry(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 225
    const/4 v0, -0x1

    return v0
.end method

.method public getPukRetry(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 221
    const/4 v0, -0x1

    return v0
.end method

.method public getSMSPAvailable(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public getSdnUri(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingIconField(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingNameField(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 426
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, -0x1

    return v0
.end method

.method public getSimState(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscription(Lcom/android/internal/telephony/Phone;)I
    .locals 1
    .parameter "phone"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getTelephonyManagerService(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsimPBCapaInfo(I)Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 209
    const/4 v0, -0x1

    return v0
.end method

.method public getVoiceSubscription()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isDualSIM()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public isIdle(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1
    .parameter "number"
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public isMsimSupport()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public isNoSIM()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isOffhook(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 1
    .parameter "number"
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public isRinging(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public isSimPinEnabled(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public isSimPukLocked(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceCapable(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 366
    return-void
.end method

.method public makeMultiSimDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 182
    return-void
.end method

.method public requestRouteToHost(II)Z
    .locals 1
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public retryGetConnectivityManager()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "callbackNumber"
    .parameter "priority"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIII)V
    .locals 0
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIIII)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method public setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "context"
    .parameter "bitmap"
    .parameter "simId"

    .prologue
    .line 53
    return-void
.end method

.method public setDataRoamingEnabled(IZ)V
    .locals 0
    .parameter "simSlot"
    .parameter "value"

    .prologue
    .line 261
    return-void
.end method

.method public setDataRoamingEnabled(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public setDataSubscription(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultSimForVoiceCalls(I)I
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 56
    const/4 v0, -0x1

    return v0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public setRadioPower(ZI)V
    .locals 0
    .parameter "power"
    .parameter "simSlot"

    .prologue
    .line 105
    return-void
.end method

.method public showCallScreen()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPin(Ljava/lang/String;I)Z
    .locals 1
    .parameter "pin"
    .parameter "simSlot"

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "puk"
    .parameter "pin"
    .parameter "simSlot"

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public switchNetworkTypeDualToSingle(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public switchNetworkTypeSingleToDual(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public switchToSim1DataNetwork()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public switchToSim2DataNetwork()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 1
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"
    .parameter "simSlot"

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .parameter "simSlot"

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public updateSmsServiceCenterOnSim(Ljava/lang/String;I)Z
    .locals 1
    .parameter "scAddress"
    .parameter "subscription"

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method
