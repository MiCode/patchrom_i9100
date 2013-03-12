.class final Lcom/android/internal/telephony/ims/IMSCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "IMSCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = true

.field static final DIALING_TIMEOUT:I = 0xea60

.field static final DIALING_TIMER:I = 0x3ea

.field static final LOG_TAG:Ljava/lang/String; = "IMSCallTracker"

.field static final MAX_CONNECTIONS:I = 0x1

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x1

.field private static final REPEAT_POLLING:Z

.field static VT_FALLBACK_TO_VC:I


# instance fields
.field backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

.field callWaitingRegistrants:Landroid/os/RegistrantList;

.field connections:[Lcom/android/internal/telephony/ims/IMSConnection;

.field desiredMute:Z

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ims/IMSConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

.field hangupPendingMO:Z

.field private mFailCause:I

.field private mIsEcmTimerCanceled:Z

.field mIsInEmergencyCall:Z

.field pendingCallClirMode:I

.field pendingCallInEcm:Z

.field pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

.field phone:Lcom/android/internal/telephony/ims/IMSPhone;

.field ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

.field state:Lcom/android/internal/telephony/Phone$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x58

    sput v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->VT_FALLBACK_TO_VC:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 77
    new-array v0, v2, [Lcom/android/internal/telephony/ims/IMSConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    .line 78
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 79
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 94
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsInEmergencyCall:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    .line 101
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 103
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsEcmTimerCanceled:Z

    .line 104
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/ims/IMSPhone;)V
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 77
    new-array v0, v1, [Lcom/android/internal/telephony/ims/IMSConnection;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    .line 78
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 79
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;-><init>(Lcom/android/internal/telephony/ims/IMSCallTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 94
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsInEmergencyCall:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    .line 101
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 103
    iput-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsEcmTimerCanceled:Z

    .line 104
    iput v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    .line 112
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    .line 113
    iget-object v0, p1, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/ims/IMSInterface;

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/ims/IMSInterface;->registerForIMSCallChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSInterface;->registerCallTrackerHandler(Landroid/os/Handler;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 121
    iput v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    .line 122
    return-void
.end method

.method private canDial()Z
    .locals 5

    .prologue
    .line 1102
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1103
    .local v2, serviceState:I
    const-string v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, disableCall:Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1114
    .local v1, ret:Z
    :goto_0
    return v1

    .line 1106
    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 1087
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1094
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableDataCallInEmergencyCall(Ljava/lang/String;)V
    .locals 0
    .parameter "dialString"

    .prologue
    .line 1077
    return-void
.end method

.method private flashAndSetGenericTrue()V
    .locals 0

    .prologue
    .line 1154
    return-void
.end method

.method private handleCallWaitingInfo(Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    .line 633
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 639
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V

    .line 640
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 643
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->notifyCallWaitingInfo(Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;)V

    .line 644
    return-void
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsWhenSafe()V

    .line 659
    return-void
.end method

.method private hangupAllConnections(Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 7
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1237
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1238
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1239
    iget-object v4, p1, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1240
    .local v0, cn:Lcom/android/internal/telephony/ims/IMSConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1242
    .end local v0           #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1243
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "IMSCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method private hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1251
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1254
    return-void
.end method

.method private hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1229
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1231
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->clearDisconnected()V

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->clearDisconnected()V

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->clearDisconnected()V

    .line 947
    return-void
.end method

.method private notifyCallWaitingInfo(Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->callWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 651
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized obtainCompleteMessage(I)Landroid/os/Message;
    .locals 2
    .parameter "what"

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->needsPoll:Z

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainCompleteMessage: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainMessage(I)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onNewIMSRingingCall(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 438
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    move-object v0, v1

    check-cast v0, Landroid/os/Message;

    .line 439
    .local v0, msg:Landroid/os/Message;
    return-void
.end method

.method private declared-synchronized operationComplete()V
    .locals 2

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationComplete: pendingOperations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needsPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->needsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 254
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->needsPoll:Z

    if-eqz v0, :cond_1

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 259
    const-string v0, "IMSCallTracker"

    const-string v1, "IMSCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVTCallState(I)V
    .locals 7
    .parameter "intValue"

    .prologue
    .line 442
    const-string v4, "IMSCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setVTCallState() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 444
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 447
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 448
    .local v3, size:I
    const/16 v4, 0xb

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 449
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 450
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 451
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/ims/IMSPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 456
    return-void

    .line 452
    :catch_0
    move-exception v2

    .line 453
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateIMSCallFailCause(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 460
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    move-object v0, v2

    check-cast v0, Landroid/os/Message;

    .line 461
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    .line 462
    .local v1, presentCall:Lcom/android/internal/telephony/ims/IMSCall;
    const-string v2, "IMSCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  updateIMSCallFailCause"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 543
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setVTCallState(I)V

    .line 544
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    .line 548
    :goto_0
    return-void

    .line 466
    :sswitch_0
    const/16 v2, 0x22

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 469
    :sswitch_1
    const/16 v2, 0x3fc

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 472
    :sswitch_2
    const/16 v2, 0x3fd

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 475
    :sswitch_3
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setVTCallState(I)V

    goto :goto_0

    .line 480
    :sswitch_4
    const/16 v2, 0x40d

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 484
    :sswitch_5
    const/16 v2, 0x3fe

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 487
    :sswitch_6
    const/16 v2, 0x400

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 490
    :sswitch_7
    const/16 v2, 0x3ff

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 493
    :sswitch_8
    const/16 v2, 0x11

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 496
    :sswitch_9
    const/16 v2, 0x401

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 499
    :sswitch_a
    const/16 v2, 0x402

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 502
    :sswitch_b
    const/16 v2, 0x403

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 505
    :sswitch_c
    const/16 v2, 0x404

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 508
    :sswitch_d
    const/16 v2, 0x405

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 511
    :sswitch_e
    const/16 v2, 0x406

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 514
    :sswitch_f
    const/16 v2, 0x407

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 517
    :sswitch_10
    const/16 v2, 0x40e

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 521
    :sswitch_11
    const/16 v2, 0x409

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 524
    :sswitch_12
    const/16 v2, 0x40a

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 527
    :sswitch_13
    const/16 v2, 0x40b

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 530
    :sswitch_14
    const/16 v2, 0x40c

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 533
    :sswitch_15
    const/16 v2, 0x40f

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 536
    :sswitch_16
    const/16 v2, 0x410

    iput v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    goto :goto_0

    .line 463
    nop

    :sswitch_data_0
    .sparse-switch
        0xca -> :sswitch_3
        0xd2 -> :sswitch_7
        0xd4 -> :sswitch_4
        0xd5 -> :sswitch_4
        0xd6 -> :sswitch_4
        0xd7 -> :sswitch_6
        0xd8 -> :sswitch_5
        0xd9 -> :sswitch_8
        0xda -> :sswitch_a
        0xdb -> :sswitch_9
        0xde -> :sswitch_0
        0xe4 -> :sswitch_b
        0xe5 -> :sswitch_c
        0xe6 -> :sswitch_d
        0xe7 -> :sswitch_e
        0xea -> :sswitch_2
        0xeb -> :sswitch_1
        0xee -> :sswitch_f
        0x12f -> :sswitch_16
        0x130 -> :sswitch_12
        0x131 -> :sswitch_13
        0x132 -> :sswitch_15
        0x133 -> :sswitch_5
        0x134 -> :sswitch_14
        0x135 -> :sswitch_11
        0x136 -> :sswitch_10
        0x137 -> :sswitch_11
    .end sparse-switch
.end method

.method private updateIMSPhoneState()V
    .locals 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 600
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  updateIMSPhoneState oldstate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 619
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_0

    .line 620
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  updateIMSPhoneState newstate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPhoneStateChanged()V

    .line 623
    :cond_0
    return-void

    .line 603
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_3

    .line 605
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 607
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 270
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 279
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_5

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 287
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPhoneStateChanged()V

    .line 290
    :cond_1
    return-void

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 274
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 276
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 282
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method public acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 961
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 962
    const-string v1, "phone"

    const-string v2, "acceptCall: incoming..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setMute(Z)V

    .line 965
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 984
    :goto_0
    return-void

    .line 966
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    .line 967
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ims/IMSConnection;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 968
    .local v0, cwConn:Lcom/android/internal/telephony/ims/IMSConnection;
    if-eqz v0, :cond_1

    .line 973
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ims/IMSConnection;->updateParent(Lcom/android/internal/telephony/ims/IMSCall;Lcom/android/internal/telephony/ims/IMSCall;)V

    .line 974
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onConnectedInOrOut()V

    .line 975
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 976
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 978
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "No call in waiting..."

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 981
    .end local v0           #cwConn:Lcom/android/internal/telephony/ims/IMSConnection;
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 989
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->internalClearDisconnected()V

    .line 991
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 994
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 998
    const-string v0, "IMSCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inside dial "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 7
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1006
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->canDial()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1007
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "cannot dial in current state"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1010
    :cond_0
    const-string v3, "IMSCallTracker"

    const-string v4, "[IMSCallTracker]: VT can be dial...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->clearDisconnected()V

    .line 1013
    const-string v3, "ril.cdma.inecmmode"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, inEcm:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1015
    .local v2, isPhoneInEcmMode:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 1026
    .local v1, isEmergencyCall:Z
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 1031
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 1032
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->dialThreeWay(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1070
    :goto_0
    return-object v3

    .line 1035
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-direct {v3, v4, p1, p0, v5}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V

    iput-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 1036
    iput-boolean v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 1038
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    const/16 v4, 0x4e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 1041
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v4, v3, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 1045
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsWhenSafe()V

    .line 1067
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 1068
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 1070
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    goto :goto_0

    .line 1048
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->setMute(Z)V

    .line 1051
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->disableDataCallInEmergencyCall(Ljava/lang/String;)V

    .line 1054
    if-eqz v2, :cond_5

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 1055
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 128
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 129
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 130
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 131
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v5, Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/ims/IMSInterface;->unregisterForIMSCallChanged(Landroid/os/Handler;)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/ims/IMSConnection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 134
    .local v1, c:Lcom/android/internal/telephony/ims/IMSConnection;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "IMSCallTracker"

    const-string v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 141
    .end local v1           #c:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->clearDisconnected()V

    .line 148
    return-void

    .line 142
    :catch_1
    move-exception v2

    .line 143
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "IMSCallTracker"

    const-string v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method fallbackHangupVTCall(Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 3
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const-string v0, "IMSCallTracker"

    const-string v1, "fallbackVTCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->fallbackVT(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 205
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSCall;->onHangupLocal()V

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 207
    return-void

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to ImsCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method fallbackVT(Lcom/android/internal/telephony/ims/IMSConnection;)V
    .locals 3
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p1, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    if-eq v0, p0, :cond_0

    .line 213
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to GsmCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->VT_FALLBACK_TO_VC:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupVT(ILandroid/os/Message;)V

    .line 216
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->onHangupLocal()V

    .line 217
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 294
    const-string v0, "IMSCallTracker"

    const-string v1, "IMSCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public getIMSCallFailCause()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mFailCause:I

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1125
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 298
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  IMSCallTracker handle message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 430
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "unexpected event not handled"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 304
    :sswitch_0
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event EVENT_POLL_CALLS_RESULT Received...pendingOperations.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v6, "handle EVENT_POLL_CALL_RESULT: set needsPoll=F"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 308
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->needsPoll:Z

    .line 309
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 310
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    .line 434
    :cond_0
    :goto_0
    :sswitch_1
    return-void

    .line 315
    :sswitch_2
    const-string v6, "IMSCallTracker"

    const-string v7, "Dialing timer fired."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_0

    .line 317
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 318
    .local v2, conn:Lcom/android/internal/telephony/ims/IMSConnection;
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-eqz v2, :cond_0

    .line 320
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_0

    .line 322
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hangup connection :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v7

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 325
    :catch_0
    move-exception v3

    .line 326
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 335
    .end local v2           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v3           #e:Lcom/android/internal/telephony/CallStateException;
    :sswitch_3
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event EVENT_OPERATION_COMPLETE Received....pendingOperations.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingOperations:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..arg1.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 349
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 351
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->operationComplete()V

    .line 353
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 356
    const/16 v1, 0x10

    .line 357
    .local v1, causeCode:I
    const-string v6, "IMSCallTracker"

    const-string v7, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_1
    const-string v6, "IMSCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLastCallFailCause, normal disconnect sent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 365
    .local v5, s:I
    :goto_2
    if-ge v4, v5, :cond_2

    .line 367
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 369
    .restart local v2       #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->onRemoteDisconnect(I)V

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 360
    .end local v1           #causeCode:I
    .end local v2           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v4           #i:I
    .end local v5           #s:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v1

    .restart local v1       #causeCode:I
    goto :goto_1

    .line 372
    .restart local v4       #i:I
    .restart local v5       #s:I
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updatePhoneState()V

    .line 374
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 375
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 386
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #causeCode:I
    .end local v4           #i:I
    .end local v5           #s:I
    :sswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSCallFailCause(Landroid/os/AsyncResult;)V

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 391
    :sswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/ims/IMSCallTracker;->onNewIMSRingingCall(Landroid/os/AsyncResult;)V

    .line 394
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    .line 398
    :sswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_5
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x8 -> :sswitch_1
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x3ea -> :sswitch_2
    .end sparse-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 23
    .parameter "ar"

    .prologue
    .line 670
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 671
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    .line 683
    .local v17, polledCalls:Ljava/util/List;
    :goto_0
    const/16 v16, 0x0

    .line 684
    .local v16, newRinging:Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .line 686
    .local v12, hasNonHangupStateChanged:Z
    const/4 v15, 0x0

    .line 687
    .local v15, needsPollDelay:Z
    const/16 v18, 0x0

    .line 689
    .local v18, unknownConnectionAppeared:Z
    if-eqz v17, :cond_13

    .line 690
    const/4 v13, 0x0

    .local v13, i:I
    const/4 v8, 0x0

    .local v8, curDC:I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v10

    .line 691
    .local v10, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_13

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v6, v19, v13

    .line 693
    .local v6, conn:Lcom/android/internal/telephony/ims/IMSConnection;
    const/4 v9, 0x0

    .line 696
    .local v9, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v8, v10, :cond_0

    .line 697
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v9, Lcom/android/internal/telephony/DriverCall;

    .line 698
    .restart local v9       #dc:Lcom/android/internal/telephony/DriverCall;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " dc is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 699
    if-eqz v9, :cond_4

    .line 700
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "index is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " dc is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 701
    add-int/lit8 v8, v8, 0x1

    .line 708
    :cond_0
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "poll: conn[i="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", dc="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 711
    if-nez v6, :cond_b

    if-eqz v9, :cond_b

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ims/IMSConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 715
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "poll: pendingMO="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v20, v0

    aput-object v20, v19, v13

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    iget v0, v9, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/ims/IMSConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 721
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 724
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 725
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 734
    :try_start_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .end local v6           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v8           #curDC:I
    .end local v9           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v10           #dcSize:I
    .end local v12           #hasNonHangupStateChanged:Z
    .end local v13           #i:I
    .end local v15           #needsPollDelay:Z
    .end local v16           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v17           #polledCalls:Ljava/util/List;
    .end local v18           #unknownConnectionAppeared:Z
    :cond_1
    :goto_3
    return-void

    .line 672
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 675
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .restart local v17       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 679
    .end local v17           #polledCalls:Ljava/util/List;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 704
    .restart local v6       #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .restart local v8       #curDC:I
    .restart local v9       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v10       #dcSize:I
    .restart local v12       #hasNonHangupStateChanged:Z
    .restart local v13       #i:I
    .restart local v15       #needsPollDelay:Z
    .restart local v16       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v17       #polledCalls:Ljava/util/List;
    .restart local v18       #unknownConnectionAppeared:Z
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 737
    :catch_0
    move-exception v11

    .line 738
    .local v11, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v19, "IMSCallTracker"

    const-string v20, "unexpected error on hangup"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 746
    .end local v11           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ims/IMSPhone;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v9, v2, v13}, Lcom/android/internal/telephony/ims/IMSConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/ims/IMSCallTracker;I)V

    aput-object v20, v19, v13

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 750
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PHone State on Incoming Call : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 757
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->rejectCall()V

    .line 758
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Incoming Call .... Rejecting: PendingMo"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSConnection;->onLocalDisconnect()V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 763
    :catch_1
    move-exception v11

    .line 764
    .restart local v11       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v19, "IMSCallTracker"

    const-string v20, "unexpected error on hangup"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 769
    .end local v11           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v16, v19, v13

    .line 789
    :cond_7
    :goto_4
    const/4 v12, 0x1

    .line 691
    :cond_8
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 776
    :cond_9
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Phantom call appeared "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, v9, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_a

    iget-object v0, v9, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    .line 786
    :cond_a
    const/16 v18, 0x1

    goto :goto_4

    .line 790
    :cond_b
    if-eqz v6, :cond_10

    if-nez v9, :cond_10

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 792
    .local v7, count:I
    if-nez v7, :cond_e

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 797
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    iput-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 798
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "1. Disconnect cause  Set to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 800
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/ims/IMSCall;->setGeneric(Z)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->connections:[Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v20, v19, v13

    goto/16 :goto_5

    .line 804
    :cond_e
    const/4 v14, 0x0

    .local v14, n:I
    :goto_6
    if-ge v14, v7, :cond_d

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->connections:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 806
    .local v5, cn:Lcom/android/internal/telephony/ims/IMSConnection;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getIMSCallFailCause()I

    move-result v19

    const/16 v20, 0x22

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 808
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 809
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "2. Disconnect cause  Set to : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v5, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 811
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 827
    .end local v5           #cn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v7           #count:I
    .end local v14           #n:I
    :cond_10
    if-eqz v6, :cond_8

    if-eqz v9, :cond_8

    .line 829
    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/ims/IMSConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v4

    .line 830
    .local v4, changed:Z
    if-nez v12, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    const/4 v12, 0x1

    :goto_7
    goto/16 :goto_5

    :cond_12
    const/4 v12, 0x0

    goto :goto_7

    .line 857
    .end local v4           #changed:Z
    .end local v6           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    .end local v8           #curDC:I
    .end local v9           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v10           #dcSize:I
    .end local v13           #i:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14

    .line 858
    const-string v19, "IMSCallTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    .line 863
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 864
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 865
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingCallInEcm:Z

    .line 868
    :cond_14
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "newringing is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 869
    if-eqz v16, :cond_15

    .line 871
    const-string v19, "notifying the app about new call"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyNewIMSCall(Lcom/android/internal/telephony/Connection;)V

    .line 878
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    .restart local v13       #i:I
    :goto_8
    if-ltz v13, :cond_1a

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/ims/IMSConnection;

    .line 880
    .restart local v6       #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 881
    .local v3, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Inside DroppedCall Poll List...................cause : ........................."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 882
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Inside DroppedCall Poll List...................conn.isIncoming() :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "conn.getConnectTime() :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->getConnectTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming()Z

    move-result v19

    if-eqz v19, :cond_18

    invoke-virtual {v6}, Lcom/android/internal/telephony/ims/IMSConnection;->getConnectTime()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_18

    .line 887
    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_17

    .line 888
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 894
    :goto_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "missed/rejected call, conn.cause="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 895
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setting cause to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 898
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/ims/IMSConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 878
    :cond_16
    :goto_a
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_8

    .line 890
    :cond_17
    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_9

    .line 899
    :cond_18
    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 902
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_a

    .line 903
    :cond_19
    iget-object v0, v6, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 905
    sget-object v19, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_a

    .line 910
    .end local v3           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v6           #conn:Lcom/android/internal/telephony/ims/IMSConnection;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_1b

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 915
    :cond_1b
    if-eqz v15, :cond_1c

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->pollCallsAfterDelay()V

    .line 924
    :cond_1c
    if-nez v16, :cond_1d

    if-eqz v12, :cond_1e

    .line 925
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->internalClearDisconnected()V

    .line 928
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updatePhoneState()V

    .line 930
    if-eqz v18, :cond_1f

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyUnknownConnection()V

    .line 934
    :cond_1f
    if-nez v12, :cond_20

    if-eqz v16, :cond_1

    .line 935
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_3
.end method

.method public hangup(Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 3
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1191
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    if-ne p1, v0, :cond_1

    .line 1196
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1221
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSCall;->onHangupLocal()V

    .line 1222
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 1224
    return-void

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    if-ne p1, v0, :cond_3

    .line 1199
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ims/IMSConnection;

    check-cast v0, Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V

    goto :goto_0

    .line 1205
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 1207
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    if-ne p1, v0, :cond_5

    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1210
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 1212
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/ims/IMSCall;)V

    goto :goto_0

    .line 1214
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0

    .line 1217
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to CdmaCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V
    .locals 3
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-object v0, p1, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    if-eq v0, p0, :cond_0

    .line 155
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to IMSCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-ne p1, v0, :cond_1

    .line 163
    const-string v0, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->log(Ljava/lang/String;)V

    .line 164
    iput-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangupPendingMO:Z

    .line 166
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 189
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->onHangupLocal()V

    .line 192
    :goto_1
    return-void

    .line 168
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 181
    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->onLocalDisconnect()V

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    goto :goto_1

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1120
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->mIsInEmergencyCall:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 955
    const-string v0, "IMSCallTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1259
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1261
    return-void
.end method

.method public rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 1167
    return-void

    .line 1164
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public separate(Lcom/android/internal/telephony/ims/IMSConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1172
    iget-object v1, p1, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    if-eq v1, p0, :cond_0

    .line 1173
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to CdmaCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1177
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ims/IMSConnection;->getIMSIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ims/IMSCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1186
    :goto_0
    return-void

    .line 1179
    :catch_0
    move-exception v0

    .line 1182
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "IMSCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 1130
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    .line 1131
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->desiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 1132
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 1138
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 1140
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->flashAndSetGenericTrue()V

    .line 1149
    :cond_1
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1257
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1263
    return-void
.end method

.method public updateIMSCallState(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    .line 557
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    move-object v0, v3

    check-cast v0, Landroid/os/Message;

    .line 558
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 559
    .local v1, newState:Lcom/android/internal/telephony/Call$State;
    const/4 v2, 0x0

    .line 560
    .local v2, presentCall:Lcom/android/internal/telephony/ims/IMSCall;
    const-string v3, "IMSCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  updateIMSCallState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 587
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    if-eqz v3, :cond_0

    .line 588
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v2

    .line 589
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 590
    const-string v3, "IMSCallTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  updateIMSCallState : newstate is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->pendingMO:Lcom/android/internal/telephony/ims/IMSConnection;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->updateIMSPhoneState()V

    .line 595
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/ims/IMSCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-eq v3, v1, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_1

    .line 596
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyPreciseCallStateChanged()V

    .line 597
    :cond_1
    return-void

    .line 563
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 564
    goto :goto_0

    .line 568
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    .line 569
    goto :goto_0

    .line 571
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 572
    goto :goto_0

    .line 575
    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 576
    goto :goto_0

    .line 578
    :pswitch_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    .line 580
    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
