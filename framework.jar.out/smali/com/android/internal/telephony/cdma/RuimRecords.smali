.class public final Lcom/android/internal/telephony/cdma/RuimRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "RuimRecords.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_MASTERIMSI_DONE:I = 0x20

.field private static final EVENT_GET_ROAMING_DONE:I = 0x24

.field private static final EVENT_GET_RUIMID_DONE:I = 0x25

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPONIMSI1_DONE:I = 0x21

.field private static final EVENT_GET_SPONIMSI2_DONE:I = 0x22

.field private static final EVENT_GET_SPONIMSI3_DONE:I = 0x23

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final PROPERTY_SIM_ROAMING:Ljava/lang/String; = "gsm.sim.roaming"


# instance fields
.field public isAvailableSMSP:Z

.field private mImsi:Ljava/lang/String;

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mPrlVersion:Ljava/lang/String;

.field private mSponImsi:[Ljava/lang/String;

.field private m_ota_commited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "card"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 55
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->isAvailableSMSP:Z

    .line 101
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 103
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 106
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V

    .line 120
    return-void
.end method

.method private fetchRuimRecords()V
    .locals 3

    .prologue
    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 489
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuimRecords:fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 492
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 496
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 517
    return-void
.end method

.method private handleRuimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V
    .locals 3
    .parameter "refreshResponse"

    .prologue
    .line 551
    if-nez p1, :cond_1

    .line 552
    sget-boolean v0, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleRuimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 586
    sget-boolean v0, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleRuimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :pswitch_0
    sget-boolean v0, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 565
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 566
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 569
    :pswitch_1
    sget-boolean v0, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "handleRuimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 571
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 574
    :pswitch_2
    sget-boolean v0, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "handleRuimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 575
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsDisposed:Z

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 130
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CDMA"

    const-string v1, "RuimRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 136
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .parameter "plmn"

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRUIMOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 201
    const/4 v1, 0x0

    .line 214
    :goto_0
    return-object v1

    .line 204
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .parameter "msg"

    .prologue
    const/4 v14, 0x6

    .line 223
    const/4 v5, 0x0

    .line 232
    .local v5, isRecordLoadResponse:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v9, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v5, :cond_1

    .line 433
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    .line 436
    :cond_1
    return-void

    .line 234
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v4

    .line 429
    .local v4, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v9, "CDMA"

    const-string v10, "Exception parsing RUIM record"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    if-eqz v5, :cond_1

    goto :goto_1

    .line 238
    .end local v4           #exc:Ljava/lang/RuntimeException;
    :pswitch_2
    :try_start_3
    const-string v9, "CDMA"

    const-string v10, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v9

    if-eqz v5, :cond_2

    .line 433
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    .line 432
    :cond_2
    throw v9

    .line 243
    :pswitch_3
    const/4 v5, 0x1

    .line 245
    :try_start_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 246
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_3

    .line 247
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception querying IMSI, Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_3
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    .line 255
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v14, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xf

    if-le v9, v10, :cond_5

    .line 256
    :cond_4
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid IMSI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    .line 260
    :cond_5
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IMSI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "xxxxxxxxx"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, operatorNumeric:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 264
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v14, :cond_0

    .line 265
    iget-object v9, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v7           #operatorNumeric:Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 272
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 273
    .local v6, localTemp:[Ljava/lang/String;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_0

    .line 277
    const/4 v9, 0x0

    aget-object v9, v6, v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 278
    const/4 v9, 0x3

    aget-object v9, v6, v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 279
    const/4 v9, 0x4

    aget-object v9, v6, v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 281
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MDN: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " MIN: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 286
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v6           #localTemp:[Ljava/lang/String;
    :pswitch_5
    const/4 v5, 0x1

    .line 288
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 289
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 291
    .local v2, data:[B
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_0

    .line 295
    const/4 v9, 0x0

    array-length v10, v2

    invoke-static {v2, v9, v10}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 297
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iccid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 302
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 303
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_0

    .line 304
    const-string v9, "CDMA"

    const-string v10, "RuimRecords update failed"

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v9, v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 312
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Event not supported: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 317
    :pswitch_8
    const-string v9, "CDMA"

    const-string v10, "Event EVENT_GET_SST_DONE Received"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 321
    :pswitch_9
    const/4 v5, 0x0

    .line 322
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 323
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_0

    .line 324
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/IccRefreshResponse;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/RuimRecords;->handleRuimRefresh(Lcom/android/internal/telephony/IccRefreshResponse;)V

    goto/16 :goto_0

    .line 329
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    const/4 v5, 0x1

    .line 331
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 332
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 334
    .restart local v2       #data:[B
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_6

    .line 335
    const-string v9, "CDMA"

    const-string v10, "Invalid or missing EF[masterImsi]"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 339
    :cond_6
    sget-boolean v9, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[masterImsi]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    const/16 v12, 0x8

    invoke-static {v2, v11, v12}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 343
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    :pswitch_b
    const/4 v5, 0x1

    .line 345
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 346
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 348
    .restart local v2       #data:[B
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_7

    .line 349
    const-string v9, "CDMA"

    const-string v10, "Invalid or missing EF[sponImsi1]"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 353
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    aput-object v11, v9, v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 355
    :try_start_5
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x2

    aget-byte v12, v2, v12

    shr-int/lit8 v12, v12, 0x4

    and-int/lit8 v12, v12, 0xf

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x1

    aget-byte v13, v2, v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22b

    array-length v13, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 361
    :goto_2
    :try_start_6
    sget-boolean v9, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[sponImsi1]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 356
    :catch_1
    move-exception v3

    .line 357
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[sponImsi1] Ex -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, ""

    aput-object v11, v9, v10

    goto :goto_2

    .line 365
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    .end local v3           #ex:Ljava/lang/Exception;
    :pswitch_c
    const/4 v5, 0x1

    .line 367
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 368
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 370
    .restart local v2       #data:[B
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_8

    .line 371
    const-string v9, "CDMA"

    const-string v10, "Invalid or missing EF[sponImsi2]"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 375
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    aput-object v11, v9, v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 377
    :try_start_7
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x2

    aget-byte v12, v2, v12

    shr-int/lit8 v12, v12, 0x4

    and-int/lit8 v12, v12, 0xf

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x1

    aget-byte v13, v2, v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22b

    array-length v13, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 384
    :goto_3
    :try_start_8
    sget-boolean v9, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[sponImsi2]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 378
    :catch_2
    move-exception v3

    .line 379
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[sponImsi2] Ex -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v10, 0x1

    const-string v11, ""

    aput-object v11, v9, v10

    goto :goto_3

    .line 388
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    .end local v3           #ex:Ljava/lang/Exception;
    :pswitch_d
    const/4 v5, 0x1

    .line 390
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 391
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 393
    .restart local v2       #data:[B
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_9

    .line 394
    const-string v9, "CDMA"

    const-string v10, "Invalid or missing EF[sponImsi3]"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 398
    :cond_9
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    aput-object v11, v9, v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 400
    :try_start_9
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x2

    aget-byte v12, v2, v12

    shr-int/lit8 v12, v12, 0x4

    and-int/lit8 v12, v12, 0xf

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x1

    aget-byte v13, v2, v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22b

    array-length v13, v2

    add-int/lit8 v13, v13, -0x1

    invoke-static {v2, v12, v13}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 406
    :goto_4
    :try_start_a
    sget-boolean v9, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[sponImsi3]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 401
    :catch_3
    move-exception v3

    .line 402
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[sponImsi3] Ex -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 404
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSponImsi:[Ljava/lang/String;

    const/4 v10, 0x2

    const-string v11, ""

    aput-object v11, v9, v10

    goto :goto_4

    .line 411
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    .end local v3           #ex:Ljava/lang/Exception;
    :pswitch_e
    const/4 v5, 0x1

    .line 413
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 414
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 416
    .restart local v2       #data:[B
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_a

    .line 417
    const-string v9, "CDMA"

    const-string v10, "Invalid or missing EF[roaming]"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 421
    :cond_a
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 422
    .local v8, roaming:Ljava/lang/String;
    sget-boolean v9, Lcom/android/internal/telephony/cdma/RuimRecords;->DBG:Z

    if-eqz v9, :cond_b

    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[roaming]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_b
    const-string v9, "gsm.sim.roaming"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 593
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 598
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 454
    const-string v1, "CDMA"

    const-string v2, "RuimRecords: record load complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, operator:Ljava/lang/String;
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 462
    const-string v1, "gsm.sim.operator.iso-country"

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 467
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v2, "LOADED"

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 155
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 156
    return-void
.end method

.method public onReady()V
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 483
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 444
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onAllRecordsLoaded()V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 447
    const-string v0, "CDMA"

    const-string v1, "RuimRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 193
    :cond_0
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 174
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/IccException;

    const-string/jumbo v2, "setVoiceMailNumber not implemented"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 176
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 177
    const-string v0, "CDMA"

    const-string/jumbo v1, "method setVoiceMailNumber is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 532
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 538
    :cond_0
    if-gez p2, :cond_2

    .line 539
    const/4 p2, -0x1

    .line 545
    :cond_1
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 540
    :cond_2
    const/16 v0, 0xff

    if-le p2, v0, :cond_1

    .line 543
    const/16 p2, 0xff

    goto :goto_1
.end method
