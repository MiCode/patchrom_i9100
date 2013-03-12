.class public final Lcom/android/internal/telephony/ims/IMSInterface;
.super Lcom/android/internal/telephony/BaseCommands;
.source "IMSInterface.java"


# static fields
.field private static CallIndex:I = 0x0

.field protected static final EVENT_CALL_STATE_CHANGE:I = 0x2

.field protected static final EVENT_CALL_WAITING_INFO_CDMA:I = 0xf

.field protected static final EVENT_CONFERENCE_RESULT:I = 0xb

.field protected static final EVENT_ECT_RESULT:I = 0xd

.field protected static final EVENT_END_CALL_SIMULATE:I = 0x13

.field protected static final EVENT_EXIT_ECM_RESPONSE_CDMA:I = 0xe

.field protected static final EVENT_GET_LAST_CALL_FAIL_CAUSE:I = 0x5

.field protected static final EVENT_IMS_NOT_ON:I = 0x14

.field protected static final EVENT_IMS_NOT_REGISTERED:I = 0x15

.field protected static final EVENT_OPERATION_COMPLETE:I = 0x4

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x9

.field protected static final EVENT_RADIO_NOT_AVAILABLE:I = 0xa

.field protected static final EVENT_REPOLL_AFTER_DELAY:I = 0x3

.field protected static final EVENT_SEPARATE_RESULT:I = 0xc

.field protected static final EVENT_SWITCH_RESULT:I = 0x8

.field protected static final EVENT_THREE_WAY_DIAL_L2_RESULT_CDMA:I = 0x10

.field protected static final EVENT_VOIP_CALL_STATE_CHANGE:I = 0x11

.field protected static final EVENT_VOIP_NEW_RINGING_CALL:I = 0x12

.field private static final IMS_EVENT_CALL_ACTIVE:I = 0x3

.field private static final IMS_EVENT_CALL_ALERT:I = 0x2

.field private static final IMS_EVENT_CALL_DIAL:I = 0x1

.field private static final IMS_EVENT_CALL_DISCONNECT:I = 0x7

.field private static final IMS_EVENT_CALL_HOLD:I = 0x4

.field private static final IMS_EVENT_CALL_IDLE:I = 0x0

.field private static final IMS_EVENT_CALL_INCOMING:I = 0x5

.field private static final IMS_EVENT_CALL_WAITING:I = 0x6

.field private static final IMS_GET_CURRENT_CALLS:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "IMSPhone/IMSInterface"

.field private static bImsRegisterDone:Z

.field private static iEnablerIndex:I

.field private static mVTHandler:Landroid/os/Handler;


# instance fields
.field ImsCallIDList:Ljava/util/List;

.field ImsCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DriverCall;",
            ">;"
        }
    .end annotation
.end field

.field private callid:I

.field private isVideoCall:Z

.field mContext:Landroid/content/Context;

.field mIMSCTHandler:Landroid/os/Handler;

.field mIMSCallStateRegistrants:Landroid/os/RegistrantList;

.field private mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

.field private mImsManager:Lcom/sec/android/internal/ims/IMSService;

.field mRilCm:Lcom/android/internal/telephony/CommandsInterface;

.field myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    sput-boolean v0, Lcom/android/internal/telephony/ims/IMSInterface;->bImsRegisterDone:Z

    .line 122
    sput v0, Lcom/android/internal/telephony/ims/IMSInterface;->CallIndex:I

    .line 123
    sput v0, Lcom/android/internal/telephony/ims/IMSInterface;->iEnablerIndex:I

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/ims/IMSInterface;->mVTHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 518
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    .line 87
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    .line 88
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->isVideoCall:Z

    .line 121
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallIDList:Ljava/util/List;

    .line 126
    iput-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    .line 127
    iput-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    .line 128
    iput-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 133
    new-instance v1, Lcom/android/internal/telephony/ims/IMSInterface$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/IMSInterface$1;-><init>(Lcom/android/internal/telephony/ims/IMSInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    .line 990
    new-instance v1, Lcom/android/internal/telephony/ims/IMSInterface$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/IMSInterface$2;-><init>(Lcom/android/internal/telephony/ims/IMSInterface;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    .line 519
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    .line 520
    sget-boolean v1, Lcom/android/internal/telephony/ims/IMSInterface;->bImsRegisterDone:Z

    if-nez v1, :cond_0

    .line 521
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;->getIMSInstance(Landroid/content/Context;)V

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/IMSService;->registerListener(Lcom/sec/android/ims/IMSEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    sput-boolean v3, Lcom/android/internal/telephony/ims/IMSInterface;->bImsRegisterDone:Z

    .line 542
    :cond_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .parameter "context"
    .parameter "sCommandsInterface"

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;-><init>(Landroid/content/Context;)V

    .line 513
    iput-object p2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 514
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ims/IMSInterface;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ims/IMSInterface;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/IMSInterface;->updateCallsList(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/internal/telephony/ims/IMSInterface;->mVTHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/ims/IMSInterface;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;->deleteFromCallsList(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/ims/IMSInterface;Ljava/lang/String;IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ims/IMSInterface;->addToCallsList(Ljava/lang/String;IZI)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/ims/IMSInterface;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->isVideoCall:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;

    return-object v0
.end method

.method private addToCallsList(Ljava/lang/String;IZI)V
    .locals 7
    .parameter "address"
    .parameter "state"
    .parameter "callType"
    .parameter "callId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 954
    const-string v2, "IMSPhone/IMSInterface"

    const-string v3, "  addToCallsList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 956
    .local v0, dc:Lcom/android/internal/telephony/DriverCall;
    invoke-static {p2}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 957
    iput p4, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 958
    iput v5, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 959
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 960
    iput-boolean p3, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 961
    iput v5, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 963
    iput-boolean v5, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 964
    iput-boolean v5, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 965
    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->isVideoCall:Z

    iput-boolean v2, v0, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 966
    const/4 v1, 0x0

    .line 967
    .local v1, np:I
    invoke-static {v1}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 968
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 969
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    const-string v2, "IMSPhone/IMSInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  addToCallsList : Address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_0
    const-string v2, "anonymous"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 974
    iput v6, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 975
    iput v6, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 984
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 986
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    return-void

    .line 979
    :cond_1
    iput-object p1, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 980
    iput v5, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    goto :goto_0
.end method

.method private declared-synchronized deleteFromCallsList(I)Z
    .locals 7
    .parameter "callId"

    .prologue
    .line 473
    monitor-enter p0

    const/4 v2, 0x0

    .line 474
    .local v2, call:Lcom/android/internal/telephony/DriverCall;
    const/4 v1, 0x0

    .line 475
    .local v1, bRetVal:Z
    :try_start_0
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, " deleteFromCallsList"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 477
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    move-object v2, v0

    .line 478
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " deleteFromCallsList    callID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  callindex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne p1, v4, :cond_1

    .line 481
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    const/4 v1, 0x1

    .line 487
    :cond_0
    monitor-exit p0

    return v1

    .line 476
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getIMSInstance(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    if-nez v0, :cond_0

    .line 556
    invoke-static {p1}, Lcom/sec/android/internal/ims/IMSService;->getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, " already obtained the IMSInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static registerVideoEventListener(Landroid/os/Handler;)V
    .locals 0
    .parameter "VTHandler"

    .prologue
    .line 1693
    sput-object p0, Lcom/android/internal/telephony/ims/IMSInterface;->mVTHandler:Landroid/os/Handler;

    .line 1694
    return-void
.end method

.method private stateFromEventType(I)Lcom/android/internal/telephony/DriverCall$State;
    .locals 1
    .parameter "eventType"

    .prologue
    .line 492
    sparse-switch p1, :sswitch_data_0

    .line 506
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 494
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 496
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 498
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 500
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 502
    :sswitch_4
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 504
    :sswitch_5
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    goto :goto_0

    .line 492
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_5
        0xca -> :sswitch_4
        0xcb -> :sswitch_2
        0xcd -> :sswitch_3
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static unregisterVideoEventListener(Landroid/os/Handler;)V
    .locals 3
    .parameter "VTHandler"

    .prologue
    .line 1698
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterVideoEventListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/ims/IMSInterface;->mVTHandler:Landroid/os/Handler;

    .line 1700
    return-void
.end method

.method private updateCallList(IZ)V
    .locals 0
    .parameter "state"
    .parameter "callType"

    .prologue
    .line 952
    return-void
.end method

.method private declared-synchronized updateCallsList(II)Z
    .locals 7
    .parameter "eventType"
    .parameter "callID"

    .prologue
    .line 458
    monitor-enter p0

    const/4 v2, 0x0

    .line 459
    .local v2, call:Lcom/android/internal/telephony/DriverCall;
    const/4 v1, 0x0

    .line 460
    .local v1, bRetVal:Z
    :try_start_0
    const-string v4, "IMSPhone/IMSInterface"

    const-string v5, " updateCallsList"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 462
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    move-object v2, v0

    .line 463
    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne p2, v4, :cond_1

    .line 464
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;->stateFromEventType(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 465
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  present call state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    const/4 v1, 0x1

    .line 470
    :cond_0
    monitor-exit p0

    return v1

    .line 461
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 458
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public ClientStartSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "id"
    .parameter "alertType"
    .parameter "AlertFormat"
    .parameter "AlertSrc"
    .parameter "AlertCorrel"
    .parameter "AlertMark"
    .parameter "AlertData"
    .parameter "response"

    .prologue
    .line 1561
    return-void
.end method

.method public OmaDmSendData(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "id"
    .parameter "Data"
    .parameter "Len"
    .parameter "response"

    .prologue
    .line 1567
    return-void
.end method

.method public ServerStartSession(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "type"
    .parameter "sessionId"
    .parameter "ID"
    .parameter "response"

    .prologue
    .line 1573
    return-void
.end method

.method public SetupSession(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "CB1_ID"
    .parameter "CB2_ID"
    .parameter "CB3_ID"
    .parameter "ENC"
    .parameter "VER"
    .parameter "maxMsgSize"
    .parameter "Max_obj_size"
    .parameter "Cookie"
    .parameter "Disp_Name"
    .parameter "response"

    .prologue
    .line 1580
    return-void
.end method

.method public acceptCall(Landroid/os/Message;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 589
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-virtual {v1, v2, v3, v3}, Lcom/sec/android/internal/ims/IMSService;->acceptCall(III)V

    .line 591
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 592
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 593
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 595
    return-void
.end method

.method public accessPhoneBookEntry(IIILcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1038
    return-void
.end method

.method public accessPhoneBookEntry(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "alphTag"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1587
    return-void
.end method

.method public acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "ackPdu"
    .parameter "response"

    .prologue
    .line 1802
    return-void
.end method

.method public acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "response"

    .prologue
    .line 1078
    return-void
.end method

.method public acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 0
    .parameter "success"
    .parameter "cause"
    .parameter "response"

    .prologue
    .line 1087
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 734
    return-void
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1095
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1104
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "result"

    .prologue
    .line 1593
    return-void
.end method

.method public changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 1112
    return-void
.end method

.method public changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1120
    return-void
.end method

.method public changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin2"
    .parameter "newPin2"
    .parameter "aidPtr"
    .parameter "result"

    .prologue
    .line 1780
    return-void
.end method

.method public changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"
    .parameter "aidPtr"
    .parameter "result"

    .prologue
    .line 1782
    return-void
.end method

.method public changeIccSimPerso(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPass"
    .parameter "newPass"
    .parameter "result"

    .prologue
    .line 1031
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 609
    return-void
.end method

.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "reason"
    .parameter "result"

    .prologue
    .line 1753
    return-void
.end method

.method public deactivateDataCall(ILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "result"

    .prologue
    .line 1127
    return-void
.end method

.method public deactivateDefaultPDP(ILandroid/os/Message;)V
    .locals 0
    .parameter "cid"
    .parameter "response"

    .prologue
    .line 1135
    return-void
.end method

.method public deflect(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1598
    return-void
.end method

.method public deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1142
    return-void
.end method

.method public deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1150
    return-void
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 633
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3, p1, v6}, Lcom/sec/android/internal/ims/IMSService;->makeCall(Ljava/lang/String;I)I

    move-result v2

    .line 634
    .local v2, tmpCallid:I
    const-string v3, "IMSPhone/IMSInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  dial  makeCall callid returned as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 636
    .local v0, message:Landroid/os/Message;
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 638
    iput v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    .line 639
    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/ims/IMSInterface;->addToCallsList(Ljava/lang/String;IZI)V

    .line 641
    iput v7, v0, Landroid/os/Message;->what:I

    .line 642
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    :goto_0
    return-void

    .line 648
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 650
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 651
    const/16 v3, 0xd4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 655
    :goto_1
    iput v7, v0, Landroid/os/Message;->what:I

    .line 656
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 657
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSInterface;->notifyIMSCallChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 653
    :cond_1
    const/16 v3, 0xde

    iput v3, v1, Landroid/os/Message;->what:I

    goto :goto_1
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/Call$CallType;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "callType"
    .parameter "result"

    .prologue
    .line 1726
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "result"

    .prologue
    .line 1724
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Lcom/android/internal/telephony/Call$CallType;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "uusInfo"
    .parameter "callType"
    .parameter "result"

    .prologue
    .line 1728
    return-void
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "callType"
    .parameter "result"

    .prologue
    .line 1729
    return-void
.end method

.method public dialConferenceCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 730
    return-void
.end method

.method public dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1043
    return-void
.end method

.method public dialVideoCall(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "result"

    .prologue
    .line 1603
    return-void
.end method

.method public dialVideoCall(Ljava/lang/String;ILcom/android/internal/telephony/Call$CallType;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "clirMode"
    .parameter "calltype"
    .parameter "result"

    .prologue
    .line 1607
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    .line 549
    return-void
.end method

.method public exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1157
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1165
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1173
    return-void
.end method

.method public getBasebandVersion(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1181
    return-void
.end method

.method public getCDMASubscription(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1189
    return-void
.end method

.method public getCLIR(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1197
    return-void
.end method

.method public getCbConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1613
    return-void
.end method

.method public getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1205
    return-void
.end method

.method public getCdmaDataProfile(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1618
    return-void
.end method

.method public getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1761
    return-void
.end method

.method public getCdmaSystemProperties(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "sysPorpertyID"
    .parameter "response"

    .prologue
    .line 1623
    return-void
.end method

.method public getCurrentCalls(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 672
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  getCurrentCalls   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 674
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "  getCurrentCalls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1212
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1775
    return-void
.end method

.method public getDeviceIdentity(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1220
    return-void
.end method

.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1228
    return-void
.end method

.method public getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1236
    return-void
.end method

.method public getIMEI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1244
    return-void
.end method

.method public getIMEISV(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1252
    return-void
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1260
    return-void
.end method

.method public getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1278
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1268
    return-void
.end method

.method public getLastCallFailCause(Landroid/os/Message;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 681
    const-string v3, "IMSPhone/IMSInterface"

    const-string v4, "  getLastCallFailCause"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 683
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0xa

    new-array v1, v3, [I

    .line 684
    .local v1, cause:[I
    const/4 v3, 0x0

    const/16 v4, 0x10

    aput v4, v1, v3

    .line 685
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v5, v1, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 686
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 687
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 688
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 689
    return-void
.end method

.method public getLastDataCallFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1275
    return-void
.end method

.method public getLastPdpFailCause(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1301
    return-void
.end method

.method public getMute(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 695
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "IMS getMute..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1306
    return-void
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 705
    return-void
.end method

.method public getOperator(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1311
    return-void
.end method

.method public getPDPContextList(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1316
    return-void
.end method

.method public getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "index"
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1629
    return-void
.end method

.method public getPhoneBookStorageInfo(ILandroid/os/Message;)V
    .locals 0
    .parameter "fileid"
    .parameter "result"

    .prologue
    .line 1634
    return-void
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1287
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 715
    return-void
.end method

.method public getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1321
    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 724
    return-void
.end method

.method public getSIMLockInfo(IILandroid/os/Message;)V
    .locals 0
    .parameter "numLockType"
    .parameter "lockType"
    .parameter "result"

    .prologue
    .line 1639
    return-void
.end method

.method public getSignalStrength(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1326
    return-void
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1331
    return-void
.end method

.method public getStoredMessageCount(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1046
    return-void
.end method

.method public getTimeInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1705
    return-void
.end method

.method public getUsimPBCapa(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1644
    return-void
.end method

.method public getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1731
    return-void
.end method

.method public getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1778
    return-void
.end method

.method public getWipiSysInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1707
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 0
    .parameter "accept"
    .parameter "response"

    .prologue
    .line 1336
    return-void
.end method

.method public hangupConnection(ILandroid/os/Message;)V
    .locals 4
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    const/16 v3, 0x3ea

    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    const-string v1, "IMSPhone/IMSInterface"

    const-string v2, "DIALING timer  removed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1, p1}, Lcom/sec/android/internal/ims/IMSService;->endCall(I)V

    .line 754
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 755
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 756
    iget v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 757
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 759
    return-void
.end method

.method public hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 778
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/IMSService;->endCall(I)V

    .line 779
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 780
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 781
    iget v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 782
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 784
    return-void
.end method

.method public hangupVT(ILandroid/os/Message;)V
    .locals 0
    .parameter "errCause"
    .parameter "result"

    .prologue
    .line 1730
    return-void
.end method

.method public hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 790
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ims/IMSInterface;->rejectCall(Landroid/os/Message;)V

    .line 791
    return-void
.end method

.method public iccCloseChannel(ILandroid/os/Message;)V
    .locals 0
    .parameter "channel"
    .parameter "response"

    .prologue
    .line 1737
    return-void
.end method

.method public iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1799
    return-void
.end method

.method public iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 1342
    return-void
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "command"
    .parameter "fileid"
    .parameter "path"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"
    .parameter "pin2"
    .parameter "aid"
    .parameter "response"

    .prologue
    .line 1291
    return-void
.end method

.method public iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "AID"
    .parameter "response"

    .prologue
    .line 1740
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 2
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1345
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "invokeOemRilRequestRaw()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mRilCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1348
    :cond_0
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 1357
    return-void
.end method

.method public notifyIMSCallChanged(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 946
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "  notifyIMSCallChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 949
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1362
    return-void
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1367
    return-void
.end method

.method public queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "response"

    .prologue
    .line 800
    return-void
.end method

.method public queryCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 808
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1372
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1378
    return-void
.end method

.method public queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 1772
    return-void
.end method

.method public queryLineId(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1713
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1383
    return-void
.end method

.method public readSmsFromSim(ILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "response"

    .prologue
    .line 1649
    return-void
.end method

.method public registerCallTrackerHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 938
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    .line 940
    return-void
.end method

.method public registerForIMSCallChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 934
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 935
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 936
    return-void
.end method

.method public rejectCall()V
    .locals 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/internal/ims/IMSService;->acceptCall(III)V

    .line 601
    return-void
.end method

.method public rejectCall(Landroid/os/Message;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x2

    .line 814
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;

    iget v3, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-virtual {v2, v3, v4, v4}, Lcom/sec/android/internal/ims/IMSService;->acceptCall(III)V

    .line 816
    const-string v2, "IMSPhone/IMSInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " rejectCall: callId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 818
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x13

    iput v2, v1, Landroid/os/Message;->what:I

    .line 819
    iget v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->callid:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 820
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 823
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 824
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 825
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 827
    return-void
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 1352
    return-void
.end method

.method public reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 0
    .parameter "available"
    .parameter "result"

    .prologue
    .line 1388
    return-void
.end method

.method public reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1393
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "nonce"
    .parameter "result"

    .prologue
    .line 1750
    return-void
.end method

.method public resetRadio(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 835
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "result"

    .prologue
    .line 1398
    return-void
.end method

.method public sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "FeatureCode"
    .parameter "response"

    .prologue
    .line 1403
    return-void
.end method

.method public sendCdmaSms([BIILandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "result"

    .prologue
    .line 1412
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 0
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1408
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 843
    return-void
.end method

.method public sendEncodedUSSD([BIILandroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "length"
    .parameter "dcsCode"
    .parameter "response"

    .prologue
    .line 1655
    return-void
.end method

.method public sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 1418
    return-void
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 1795
    return-void
.end method

.method public sendMobileTrackerSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1661
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 852
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "result"

    .prologue
    .line 1050
    return-void
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "smscPDU"
    .parameter "pdu"
    .parameter "curIndex"
    .parameter "totalCnt"
    .parameter "prefMode"
    .parameter "result"

    .prologue
    .line 1743
    return-void
.end method

.method public sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "contents"
    .parameter "response"

    .prologue
    .line 1423
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "ussdString"
    .parameter "response"

    .prologue
    .line 1428
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 0
    .parameter "gsmIndex"
    .parameter "result"

    .prologue
    .line 860
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "bandMode"
    .parameter "response"

    .prologue
    .line 1433
    return-void
.end method

.method public setCLIR(ILandroid/os/Message;)V
    .locals 0
    .parameter "clirMode"
    .parameter "response"

    .prologue
    .line 1438
    return-void
.end method

.method public setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "action"
    .parameter "cfReason"
    .parameter "serviceClass"
    .parameter "number"
    .parameter "timeSeconds"
    .parameter "response"

    .prologue
    .line 869
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 878
    return-void
.end method

.method public setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V
    .locals 0
    .parameter "cb"
    .parameter "result"

    .prologue
    .line 1666
    return-void
.end method

.method public setCbsOnOff([BLandroid/os/Message;)V
    .locals 0
    .parameter "data"
    .parameter "response"

    .prologue
    .line 1747
    return-void
.end method

.method public setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "result"

    .prologue
    .line 1443
    return-void
.end method

.method public setCdmaBroadcastConfig([ILandroid/os/Message;)V
    .locals 0
    .parameter "configValuesArray"
    .parameter "result"

    .prologue
    .line 1448
    return-void
.end method

.method public setCdmaDataProfile(ILandroid/os/Message;)V
    .locals 0
    .parameter "dataConnection"
    .parameter "response"

    .prologue
    .line 1671
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaRoamingType"
    .parameter "response"

    .prologue
    .line 1453
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1458
    return-void
.end method

.method public setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0
    .parameter "cdmaSubscriptionType"
    .parameter "response"

    .prologue
    .line 1764
    return-void
.end method

.method public setCdmaSystemProperties(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "sysPorpertyID"
    .parameter "sysPropertyValue"
    .parameter "response"

    .prologue
    .line 1677
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "response"

    .prologue
    .line 1464
    return-void
.end method

.method public setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "appId"
    .parameter "response"

    .prologue
    .line 1768
    return-void
.end method

.method public setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0
    .parameter "activate"
    .parameter "result"

    .prologue
    .line 1469
    return-void
.end method

.method public setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0
    .parameter "config"
    .parameter "response"

    .prologue
    .line 1475
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .locals 0
    .parameter "line"
    .parameter "response"

    .prologue
    .line 1716
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "response"

    .prologue
    .line 1480
    return-void
.end method

.method public setModemPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "response"

    .prologue
    .line 1682
    return-void
.end method

.method public setMute(ZLandroid/os/Message;)V
    .locals 4
    .parameter "enableMute"
    .parameter "response"

    .prologue
    .line 886
    const-string v1, "IMSPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setMicrophoneMute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 890
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 892
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 893
    :cond_2
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1485
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 1491
    return-void
.end method

.method public setPhoneType(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    .line 900
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "mode"
    .parameter "response"

    .prologue
    .line 1283
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .parameter "networkType"
    .parameter "response"

    .prologue
    .line 908
    return-void
.end method

.method public setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1496
    return-void
.end method

.method public setRadioPower(ZLandroid/os/Message;)V
    .locals 0
    .parameter "on"
    .parameter "response"

    .prologue
    .line 1501
    return-void
.end method

.method public setSimInitEvent(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1687
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1506
    return-void
.end method

.method public setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 0
    .parameter "enable"
    .parameter "result"

    .prologue
    .line 1511
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 0
    .parameter "ttyMode"
    .parameter "response"

    .prologue
    .line 1516
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "result"

    .prologue
    .line 1523
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "radioTechnology"
    .parameter "profile"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "protocol"
    .parameter "result"

    .prologue
    .line 1758
    return-void
.end method

.method public setupDefaultPDP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "response"

    .prologue
    .line 1529
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 0
    .parameter "c"
    .parameter "result"

    .prologue
    .line 916
    return-void
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 924
    return-void
.end method

.method public supplyIccPerso(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "passwd"
    .parameter "result"

    .prologue
    .line 1735
    return-void
.end method

.method public supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "result"

    .prologue
    .line 1534
    return-void
.end method

.method public supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin2"
    .parameter "result"

    .prologue
    .line 1539
    return-void
.end method

.method public supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1789
    return-void
.end method

.method public supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "pin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1785
    return-void
.end method

.method public supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "result"

    .prologue
    .line 1544
    return-void
.end method

.method public supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "result"

    .prologue
    .line 1549
    return-void
.end method

.method public supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1791
    return-void
.end method

.method public supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "puk"
    .parameter "newPin"
    .parameter "aid"
    .parameter "result"

    .prologue
    .line 1787
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "netpin"
    .parameter "result"

    .prologue
    .line 1554
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 932
    return-void
.end method

.method public unregisterForIMSCallChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 943
    return-void
.end method

.method public writeErrorData(IIIILjava/lang/String;)V
    .locals 7
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"

    .prologue
    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, errString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 332
    .local v0, errCode:Ljava/lang/String;
    const/4 v2, 0x0

    .line 334
    .local v2, flag:I
    const-string v4, "IMSPhone/IMSInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Error Event ---Entering function"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sparse-switch p2, :sswitch_data_0

    .line 442
    :goto_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 445
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 446
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.android.reciever.activities.ERROR_TABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v4, "IMS_ERROR_CODE"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v4, "IMS_ERROR_STRING"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 454
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 339
    :sswitch_0
    const-string v0, "101"

    .line 340
    const/4 v2, 0x1

    .line 341
    const-string v1, "PPP open failed"

    .line 344
    goto :goto_0

    .line 348
    :sswitch_1
    const-string v0, "116"

    .line 349
    const/4 v2, 0x1

    .line 350
    const-string v1, "PPP Closed"

    .line 353
    goto :goto_0

    .line 357
    :sswitch_2
    const-string v0, "202"

    .line 358
    const/4 v2, 0x1

    .line 359
    const-string v1, "SIP register failure"

    .line 361
    goto :goto_0

    .line 365
    :sswitch_3
    const-string v0, "203"

    .line 366
    const/4 v2, 0x1

    .line 367
    const-string v1, "SIP register tx failure"

    .line 369
    goto :goto_0

    .line 373
    :sswitch_4
    const-string v0, "206"

    .line 374
    const/4 v2, 0x1

    .line 375
    const-string v1, "403 resp. for registering"

    .line 377
    goto :goto_0

    .line 381
    :sswitch_5
    const-string v0, "301"

    .line 382
    const/4 v2, 0x1

    .line 383
    const-string v1, "Media RTP timeout"

    .line 385
    goto :goto_0

    .line 389
    :sswitch_6
    const-string v0, "302"

    .line 390
    const/4 v2, 0x1

    .line 391
    const-string v1, "Originate wait QOS timeout"

    .line 393
    goto :goto_0

    .line 398
    :sswitch_7
    const-string v0, "303"

    .line 399
    const/4 v2, 0x1

    .line 400
    const-string v1, "Invite failure"

    .line 402
    goto :goto_0

    .line 407
    :sswitch_8
    const-string v0, "304"

    .line 408
    const/4 v2, 0x1

    .line 409
    const-string v1, "User canceled call"

    .line 411
    goto :goto_0

    .line 415
    :sswitch_9
    const-string v0, "305"

    .line 416
    const/4 v2, 0x1

    .line 417
    const-string v1, "QOS failure"

    .line 419
    goto :goto_0

    .line 423
    :sswitch_a
    const-string v0, "307"

    .line 424
    const/4 v2, 0x1

    .line 425
    const-string v1, "Ack for 200 OK but call terminated"

    .line 427
    goto :goto_0

    .line 431
    :sswitch_b
    const-string v0, "308"

    .line 432
    const/4 v2, 0x1

    .line 433
    const-string v1, "ACK wait timer timeout"

    goto :goto_0

    .line 335
    nop

    :sswitch_data_0
    .sparse-switch
        0x6d -> :sswitch_3
        0x71 -> :sswitch_4
        0xd1 -> :sswitch_a
        0xd2 -> :sswitch_8
        0xd6 -> :sswitch_7
        0xdb -> :sswitch_b
        0xde -> :sswitch_0
        0xe1 -> :sswitch_2
        0xe2 -> :sswitch_6
        0xe4 -> :sswitch_9
        0xea -> :sswitch_1
        0xeb -> :sswitch_5
    .end sparse-switch
.end method

.method public writeIndexSmsToSim(IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "index"
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1721
    return-void
.end method

.method public writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1059
    return-void
.end method

.method public writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "status"
    .parameter "smsc"
    .parameter "pdu"
    .parameter "response"

    .prologue
    .line 1068
    return-void
.end method
