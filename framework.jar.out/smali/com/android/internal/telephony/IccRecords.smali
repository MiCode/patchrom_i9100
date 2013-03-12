.class public abstract Lcom/android/internal/telephony/IccRecords;
.super Landroid/os/Handler;
.source "IccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field public static final EVENT_CFI:I = 0x1

.field public static final EVENT_GET_ICC_RECORD_DONE:I = 0x64

.field public static final EVENT_MWI:I = 0x0

.field protected static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field public static final EVENT_SPN:I = 0x2

.field protected static final ICC_TYPE:Ljava/lang/String; = "ril.ICC_TYPE"

.field protected static final SPN_RULE_SHOW_PLMN:I = 0x2

.field protected static final SPN_RULE_SHOW_SPN:I = 0x1

.field protected static final UNINITIALIZED:I = -0x1

.field protected static final UNKNOWN:I


# instance fields
.field protected adnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field protected countVoiceMessages:I

.field protected iccType:Ljava/lang/String;

.field public iccid:Ljava/lang/String;

.field protected isVoiceMailFixed:Z

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mDestroyed:Z

.field protected mFh:Lcom/android/internal/telephony/IccFileHandler;

.field protected mIsDisposed:Z

.field protected mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

.field protected mNewSmsRegistrants:Landroid/os/RegistrantList;

.field protected mParentCard:Lcom/android/internal/telephony/IccCard;

.field protected mRecordsEventsRegistrants:Landroid/os/RegistrantList;

.field protected mailboxIndex:I

.field protected mncLength:I

.field protected msisdn:Ljava/lang/String;

.field protected msisdnTag:Ljava/lang/String;

.field protected newVoiceMailNum:Ljava/lang/String;

.field protected newVoiceMailTag:Ljava/lang/String;

.field protected recordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected recordsRequested:Z

.field protected recordsToLoad:I

.field protected spn:Ljava/lang/String;

.field protected voiceMailNum:Ljava/lang/String;

.field protected voiceMailTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "card"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mDestroyed:Z

    .line 43
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 44
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    .line 46
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    .line 54
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 57
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->iccType:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 64
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 65
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 68
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 92
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsDisposed:Z

    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    .line 117
    iput-object p3, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 118
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    .line 120
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mDestroyed:Z

    .line 127
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    .line 128
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 129
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 130
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    .line 131
    return-void
.end method

.method public getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    return-object v0
.end method

.method public abstract getDisplayRule(Ljava/lang/String;)I
.end method

.method public getFakeHomeOn()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFakeRoamingOn()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/android/internal/telephony/IccCard;

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecordsLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 320
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-ne v1, v0, :cond_0

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getSktIMSIM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktIRM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSponImsi()[Ljava/lang/String;
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    return v0
.end method

.method public getVoiceMessageWaiting()Z
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 330
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 352
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 354
    :goto_0
    return-void

    .line 333
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 334
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;

    .line 335
    .local v2, recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;->getEfName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LOADED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 337
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record Load Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccRecords;->onRecordLoaded()V

    goto :goto_0

    .line 340
    .restart local v0       #ar:Landroid/os/AsyncResult;
    .restart local v2       #recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    :cond_0
    :try_start_1
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;->onRecordLoaded(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 342
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    :catch_0
    move-exception v1

    .line 344
    .local v1, exc:Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception parsing SIM record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 347
    .end local v1           #exc:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccRecords;->onRecordLoaded()V

    throw v3

    .line 330
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected abstract onAllRecordsLoaded()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method public abstract onReady()V
.end method

.method protected abstract onRecordLoaded()V
.end method

.method public abstract onRefresh(Z[I)V
.end method

.method public registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 179
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 180
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 181
    return-void
.end method

.method public registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 170
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 172
    return-void
.end method

.method public registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 162
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 164
    return-void
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 151
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 153
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 154
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "line"
    .parameter "voiceEnable"
    .parameter "videoEnable"

    .prologue
    .line 415
    return-void
.end method

.method public setCallForwardingFlag(ILjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .parameter "line"
    .parameter "voiceEnable"
    .parameter "videoEnable"
    .parameter "dialingNumber"

    .prologue
    .line 430
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 229
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 235
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v2, 0x6f40

    const-string v3, "1"

    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->iccType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x6f4a

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/IccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 239
    return-void

    .line 237
    :cond_0
    const/16 v3, 0x6f4e

    goto :goto_0
.end method

.method public setSpnDynamic(Ljava/lang/String;)V
    .locals 0
    .parameter "currentPlmn"

    .prologue
    .line 444
    return-void
.end method

.method public setVideoCallForwardingFlag(IZ)V
    .locals 0
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 412
    return-void
.end method

.method public setVideoCallForwardingFlag(IZLjava/lang/String;)V
    .locals 0
    .parameter "line"
    .parameter "enable"
    .parameter "dialingNumber"

    .prologue
    .line 427
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 0
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 405
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 0
    .parameter "line"
    .parameter "enable"
    .parameter "dialingNumber"

    .prologue
    .line 424
    return-void
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 184
    return-void
.end method

.method public unregisterForNewSms(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 175
    return-void
.end method

.method public unregisterForRecordsEvents(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 167
    return-void
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 159
    return-void
.end method
