.class public Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "RuimSmsInterfaceManager.java"


# static fields
.field static final DBG:Z = true

.field private static final EVENT_LOAD_DONE:I = 0x1

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccess:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter "phone"
    .parameter "dispatcher"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyMessageToIccEf(I[B[B)Z
    .locals 5
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    const/4 v2, 0x0

    .line 176
    const/4 v3, 0x1

    if-lt p1, v3, :cond_0

    const/4 v3, 0x7

    if-le p1, v3, :cond_1

    .line 177
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyMessageToIccEf: Invalid status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 208
    :goto_0
    return v2

    .line 182
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pdu=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), smsc=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 184
    const-string v2, "Copying message to RUIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 186
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    .line 187
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 197
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 207
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public disableCellBroadcast(I)Z
    .locals 2
    .parameter "messageIdentifier"

    .prologue
    .line 257
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 2
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 269
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsDisposed:Z

    .line 103
    return-void
.end method

.method public enableCellBroadcast(I)Z
    .locals 2
    .parameter "messageIdentifier"

    .prologue
    .line 251
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 2
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 263
    const-string v0, "CDMA"

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    const-string v1, "CDMA"

    const-string v2, "RuimSmsInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "CDMA"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllMessagesFromIccEf()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    const-string v3, "getAllMessagesFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 226
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from RUIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 230
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 231
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v3

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the RUIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getCbSettings()[B
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessagesFromIccEf(I)[B
    .locals 1
    .parameter "index"

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 279
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method public updateMessageOnIccEf(II[B)Z
    .locals 8
    .parameter "index"
    .parameter "status"
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 127
    if-ltz p2, :cond_0

    const/4 v1, 0x7

    if-le p2, v1, :cond_1

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMessageToIccEf: Invalid status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 163
    :goto_0
    return v0

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMessageOnIccEf: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 135
    const-string v0, "Updating message on RUIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 136
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 137
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 140
    .local v5, response:Landroid/os/Message;
    if-nez p2, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :goto_2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->mSuccess:Z

    goto :goto_0

    .line 153
    :cond_2
    :try_start_3
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 154
    .local v3, record:[B
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 162
    .end local v3           #record:[B
    .end local v5           #response:Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 159
    .restart local v5       #response:Landroid/os/Message;
    :catch_0
    move-exception v6

    .line 160
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public updateSmsServiceCenterOnSimEf([B)Z
    .locals 1
    .parameter "smsc"

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method
