.class public final Lcom/android/internal/telephony/ims/IMSPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "IMSPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field static final LOG_TAG:Ljava/lang/String; = "IMSPHONE"

.field static final RESTART_ECM_TIMER:I = 0x0

.field static final VM_COUNT_CDMA:Ljava/lang/String; = "vm_count_key_cdma"

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static final VM_NUMBER_IMS:Ljava/lang/String; = "vm_number_key_ims"


# instance fields
.field h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

.field mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field private mEsn:Ljava/lang/String;

.field private mIsPhoneInEcmState:Z

.field private mMeid:Ljava/lang/String;

.field private mNvLoadedRegistrants:Landroid/os/RegistrantList;

.field mPostDialHandler:Landroid/os/Registrant;

.field mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

.field mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/ims/IMSPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 5
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 143
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 85
    iput-object v3, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mVmNumber:Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    .line 104
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 107
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;-><init>(Lcom/android/internal/telephony/ims/IMSPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    .line 145
    iput-object p2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 148
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;-><init>(Lcom/android/internal/telephony/ims/IMSPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;-><init>(Lcom/android/internal/telephony/ims/IMSPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

    .line 152
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->registerForNetworkAttach(Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;ILjava/lang/Object;)V

    .line 179
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/ims/IMSPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEsn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ims/IMSPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mMeid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ims/IMSPhone;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mVmNumber:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public SimSlotActivation(Z)V
    .locals 0
    .parameter "activation"

    .prologue
    .line 1226
    return-void
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->acceptCall()V

    .line 299
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 308
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 536
    const-string v0, "IMSPhoneAddUserToConfCall"

    const-string v1, "placeCall:adduser in ims phone "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method public canConference()Z
    .locals 2

    .prologue
    .line 315
    const-string v0, "IMSPHONE"

    const-string v1, "canConference: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 2

    .prologue
    .line 324
    const-string v0, "IMSPHONE"

    const-string v1, "canTransfer: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 1173
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "onComplete"

    .prologue
    .line 1180
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->clearDisconnected()V

    .line 334
    return-void
.end method

.method public conference()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 341
    const-string v0, "IMSPHONE"

    const-string v1, "conference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .parameter "callType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1345
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Sending UUS information NOT supported in IMS PHONE!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 541
    const-string v0, "IMSPHONE"

    const-string v1, "conference call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v0, 0x0

    return-object v0
.end method

.method public dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1186
    const-string v1, "IMSPhone"

    const-string v2, "dialVideoCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dialVideoCall(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"
    .parameter "callType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1194
    const-string v1, "IMSPhone"

    const-string v2, "dialVideoCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public disableDataConnectivity()Z
    .locals 2

    .prologue
    .line 381
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone disableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->disableLocationUpdates()V

    .line 392
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 181
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->unregisterForNetworkAttach(Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCallRing(Landroid/os/Handler;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dispose()V

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->dispose()V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSSMSDispatcher;->dispose()V

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableDataConnectivity()Z
    .locals 2

    .prologue
    .line 399
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->enableLocationUpdates()V

    .line 409
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 416
    const-string v0, "IMSPHONE"

    const-string v1, "explicitCallTransfer: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 424
    const-string v0, "IMSPHONE"

    const-string v1, "getAvailableNetworks: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getBackgroundCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/ims/IMSCall;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    return-object v0
.end method

.method public getCBEnableConfig()Z
    .locals 2

    .prologue
    .line 777
    const-string v0, "IMSPHONE"

    const-string v1, "IMSPHONEgetCBEnableConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public getCSPavailable()Z
    .locals 1

    .prologue
    .line 1305
    const/4 v0, 0x0

    return v0
.end method

.method public getCSPtable()Lcom/android/internal/telephony/gsm/simCSPtable;
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "commandInterfacecbFlavour"
    .parameter "onComplete"

    .prologue
    .line 1249
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 440
    const-string v0, "IMSPHONE"

    const-string v1, "getCallForwardingIndicator: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 450
    const-string v0, "IMSPHONE"

    const-string v1, "getCallForwardingOption: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 462
    return-void
.end method

.method public getCdmaCurrIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 471
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone getCurrentDataConnectionList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 2

    .prologue
    .line 498
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone getDataActivityState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 508
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone getDataCallList"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 2

    .prologue
    .line 516
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone getDataConnectionState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataConnectionState([Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "apnTypes"

    .prologue
    .line 1254
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataNetworkDisable()Z
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 2

    .prologue
    .line 525
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone getDataRoamingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, 0x0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 559
    const-string v0, "IMSPHONE"

    const-string v1, "getDeviceSvn(): return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v0, "0"

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public getFDNavailable()Z
    .locals 1

    .prologue
    .line 1338
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->h:Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ID"

    .prologue
    .line 1316
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1353
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1361
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 632
    const-string v0, "IMSPHONE"

    const-string v1, "getLine1AlphaTag: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineId(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1326
    return-void
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getVoiceMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 1260
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiSmsState()Z
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 667
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 674
    const-string v0, "IMSPHONE"

    const-string v1, "getOutgoingCallerIdDisplay: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void
.end method

.method public getPLMNmode()Z
    .locals 1

    .prologue
    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 683
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/IMSPhone;->getDataCallList(Landroid/os/Message;)V

    .line 685
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    const-string v0, "IMSPHONE"

    const-string v1, "method getPendingMmiCodes is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    const-string v0, "IMS"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 2

    .prologue
    .line 1165
    const-string v0, "IMSPhone"

    const-string v1, "getPhoneType = PHONE_TYPE_IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v0, 0x5

    return v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1215
    const-string v0, "IMSPHONE"

    const-string v1, "method getPreferredNetworkList  is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    return-void
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getRingingCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/ims/IMSCall;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 1382
    const/4 v0, 0x0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 1333
    const/4 v0, 0x1

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1201
    const-string v0, "IMSPHONE"

    const-string v1, "SKT IMSI_M is not available in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1211
    const-string v0, "IMSPHONE"

    const-string v1, "SKT IRM is not available in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1357
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "onComplete"

    .prologue
    .line 1342
    return-void
.end method

.method public getVideoMailAlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 756
    const-string v0, ""

    .line 758
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 759
    :cond_0
    const/4 v0, 0x0

    .line 761
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 2

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getVoiceMessageCount()I

    move-result v0

    .line 1229
    .local v0, voicemailCount:I
    return v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 816
    const-string v0, "IMSPHONE"

    const-string v1, "method handleInCallMmiCommands is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 825
    const-string v0, "IMSPHONE"

    const-string v1, "method handlePinMmi is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public initiateFakecall()V
    .locals 0

    .prologue
    .line 1267
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 834
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone isDataConnectivityPossible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v0, 0x1

    return v0
.end method

.method public isMMICode(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 1205
    const-string v0, "IMSPHONE"

    const-string v1, "method isMMICode is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const/4 v0, 0x0

    return v0
.end method

.method public isRoamingArea()Z
    .locals 1

    .prologue
    .line 1322
    const/4 v0, 0x0

    return v0
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1160
    return-void
.end method

.method public notifyNewIMSCall(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "newRinging"

    .prologue
    .line 1150
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewIMSCallP(Lcom/android/internal/telephony/Connection;)V

    .line 1152
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 1147
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 1141
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 1142
    return-void
.end method

.method public notifyUnknownConnection()V
    .locals 0

    .prologue
    .line 1157
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 844
    const-string v0, "IMSPHONE"

    const-string v1, "method registerForSuppServiceNotification is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->rejectCall()V

    .line 853
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSMS:Lcom/android/internal/telephony/ims/IMSSMSDispatcher;

    .line 202
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 203
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 204
    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    .line 205
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 2
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1369
    const-string v0, "IMSPHONE"

    const-string v1, "selectNetworkManually: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "operatorNumeric"
    .parameter "operatorAlphaLong"
    .parameter "response"

    .prologue
    .line 1373
    const-string v0, "IMSPHONE"

    const-string v1, "selectNetworkManually: not possible in IMS Second Method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 864
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 865
    const-string v0, "IMSPHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendEncodedUssd([BII)V
    .locals 0
    .parameter "ussdMessage"
    .parameter "ussdLength"
    .parameter "dcsCode"

    .prologue
    .line 1350
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 2
    .parameter "ussdMessge"

    .prologue
    .line 879
    const-string v0, "IMSPHONE"

    const-string v1, "sendUssdResponse: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    return-void
.end method

.method public setCBMessage(ZCI[S)V
    .locals 2
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"

    .prologue
    .line 767
    const-string v0, "IMSPHONE"

    const-string v1, "IMSPHONEsetCBMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void
.end method

.method public setCSCCbConfig(Z)Z
    .locals 2
    .parameter "cbEnable"

    .prologue
    .line 772
    const-string v0, "IMSPHONE"

    const-string v1, "IMSPHONEsetCSCCbConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 1
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1282
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1274
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 1291
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 889
    const-string v0, "IMSPHONE"

    const-string v1, "setCallForwardingOption: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 897
    const-string v0, "IMSPHONE"

    const-string v1, "method setCallWaiting is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 907
    return-void
.end method

.method public setDataConnectionToggleExt()I
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 914
    const-string v0, "IMSPHONE"

    const-string v1, "not needed for IMS phone setDataRoamingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 923
    const-string v0, "IMSPHONE"

    const-string v1, "setLine1Number: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .locals 0
    .parameter "line"
    .parameter "response"

    .prologue
    .line 1329
    return-void
.end method

.method public setMultiSmsState(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 798
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setMute(Z)V

    .line 933
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 940
    const-string v0, "IMSPHONE"

    const-string v1, "method setNetworkSelectionModeAutomatic is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 948
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 949
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 957
    const-string v0, "IMSPHONE"

    const-string v1, "setOutgoingCallerIdDisplay: not possible in IMS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 2
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 1221
    const-string v0, "IMSPHONE"

    const-string v1, "method setPreferredNetworkList is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->setRadioPower(Z)V

    .line 966
    return-void
.end method

.method public setState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 1
    .parameter "st"

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iput-object p1, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 1302
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 976
    return-void
.end method

.method public setmMmiInitBySTK(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1385
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 983
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 984
    const-string v0, "IMSPHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 997
    return-void
.end method

.method public storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 1125
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1126
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1127
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_number_key_cdma"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1130
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mCT:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 1005
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 1012
    const-string v0, "IMSPHONE"

    const-string v1, "method unregisterForSuppServiceNotification is NOT supported in IMS!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    return-void
.end method

.method public updateMessageWaitingIndicator(Z)V
    .locals 0
    .parameter "mwi"

    .prologue
    .line 1236
    return-void
.end method

.method public updateMessageWaitingIndicatorWithCount(I)V
    .locals 0
    .parameter "mwi"

    .prologue
    .line 1243
    return-void
.end method

.method public updateServiceLocation()V
    .locals 0

    .prologue
    .line 1297
    return-void
.end method

.method public updateServiceLocation(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSPhone;->mSST:Lcom/android/internal/telephony/ims/IMSServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ims/IMSServiceStateTracker;->getLacAndCid(Landroid/os/Message;)V

    .line 1021
    return-void
.end method
