.class public Lcom/android/server/VoIPInterfaceManager;
.super Landroid/os/IVoIPInterface$Stub;
.source "VoIPInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VoIPInterfaceManager$1;,
        Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;,
        Lcom/android/server/VoIPInterfaceManager$CallState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_INDEX:I = -0x1

.field private static final TAG:Ljava/lang/String; = "VoIPInterfaceManager"


# instance fields
.field private callTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dbg_exception:Z

.field private dbg_level:I

.field private mContext:Landroid/content/Context;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/os/IVoIPInterface$Stub;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    .line 220
    const-string v0, "VoIPInterfaceManager()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    .line 225
    const-string v0, "START VOIPINTERFACE SRVICE"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VoIPInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 1426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1427
    const/4 v1, 0x0

    .line 1432
    :goto_0
    return-object v1

    .line 1430
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1431
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private dump_calltype_w_index(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1698
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1700
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    .line 1701
    const-string v1, "###########################"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PKG NAME     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION NAME  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getactionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL NUMBER  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->callNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$300(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL STATE   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->mCurrCallState:Lcom/android/server/VoIPInterfaceManager$CallState;
    invoke-static {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$400(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;)Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOTE NUM   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRemotePartyNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1708
    :cond_0
    return-void
.end method

.method private existValidCall()Z
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1437
    const-string v0, "    Not exist call session"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1438
    const/4 v0, 0x0

    .line 1441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 1471
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .line 1473
    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getCallSessionInfo_w_pkgName() : Can not find session index with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1475
    const/4 v1, 0x0

    .line 1481
    :goto_0
    return-object v1

    .line 1478
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getCallSessionInfo_w_pkgName() : Find session index with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1480
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1481
    .local v1, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    goto :goto_0
.end method

.method private getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I
    .locals 3
    .parameter "callState"

    .prologue
    const/4 v2, -0x1

    .line 1486
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1573
    :goto_0
    return v0

    .line 1490
    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_2

    .line 1491
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1492
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDialing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1491
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1498
    .end local v0           #i:I
    :cond_2
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_4

    .line 1499
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1500
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallRinging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1499
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1506
    .end local v0           #i:I
    :cond_4
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_6

    .line 1507
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1508
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1507
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1514
    .end local v0           #i:I
    :cond_6
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_8

    .line 1515
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1516
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallIdle()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1515
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1522
    .end local v0           #i:I
    :cond_8
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_a

    .line 1523
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1524
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallHold()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1523
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1531
    .end local v0           #i:I
    :cond_a
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_c

    .line 1532
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1533
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallAlerting()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1532
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1539
    .end local v0           #i:I
    :cond_c
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_e

    .line 1540
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_7
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1541
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallIncoming()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1540
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1547
    .end local v0           #i:I
    :cond_e
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_10

    .line 1548
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_8
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1549
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallWaiting()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1548
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1556
    .end local v0           #i:I
    :cond_10
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_12

    .line 1557
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_9
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1558
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDisconnecting()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1557
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1564
    .end local v0           #i:I
    :cond_12
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p1, v1, :cond_14

    .line 1565
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_a
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1566
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->isCallDisconnected()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Find session for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1565
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v0           #i:I
    :cond_14
    move v0, v2

    .line 1573
    goto/16 :goto_0
.end method

.method private getCallTypeIndex_w_pkgName(Ljava/lang/String;)I
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 1452
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1453
    .local v1, listSize:I
    const/4 v2, -0x1

    .line 1455
    .local v2, matchedIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1456
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v3}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    getCallTypeIndex_w_pkgName() : Find session index with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1458
    move v2, v0

    .line 1455
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1462
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    getCallTypeIndex_w_pkgName() : Can not find session index with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1467
    :cond_2
    return v2
.end method

.method private isVoIPRunningAndDeregi()Z
    .locals 10

    .prologue
    .line 1393
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_0

    .line 1394
    const/4 v8, 0x0

    .line 1422
    :goto_0
    return v8

    .line 1396
    :cond_0
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1397
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 1399
    .local v7, processList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1400
    .local v5, packagePid:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1401
    .local v3, item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_2

    .line 1402
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v8, v8, v1

    iget v9, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1404
    :cond_2
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1405
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v9, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1409
    .end local v1           #i:I
    .end local v3           #item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1411
    .local v4, listSize:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v4, :cond_4

    .line 1412
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v8}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1413
    .local v6, pid:Ljava/lang/Integer;
    if-nez v6, :cond_5

    .line 1414
    const-string v8, "The session is in DB. but, process is not running.. It will be destroyed.."

    invoke-direct {p0, v8}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1415
    iget-boolean v8, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    if-nez v8, :cond_5

    .line 1416
    iget-object v8, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v8}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/VoIPInterfaceManager;->destroyCallSession(Ljava/lang/String;)Z

    .line 1422
    .end local v6           #pid:Ljava/lang/Integer;
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1411
    .restart local v6       #pid:Ljava/lang/Integer;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1712
    const-string v0, "VoIPInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    return-void
.end method

.method private log(Ljava/lang/String;I)V
    .locals 1
    .parameter "s"
    .parameter "setdbg_level"

    .prologue
    .line 1717
    iget v0, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    if-ge p2, v0, :cond_0

    .line 1718
    const-string v0, "VoIPInterfaceManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_0
    return-void
.end method

.method private notifyVoIPCallStateChangeIntoTelephony()V
    .locals 4

    .prologue
    .line 934
    const-string v2, "    notifyVoIPCallStateChangeIntoTelephony()...notify to BT"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 936
    :try_start_0
    const-string v2, "phoneext"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 937
    .local v1, phone:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_0

    .line 938
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->notifyVoIPCallStateChangeIntoBT()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephonyExt;
    :cond_0
    :goto_0
    return-void

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    notifyVoIPCallStateChangeIntoTelephony()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendVoIPBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"
    .parameter "actionName"
    .parameter "extraDataValue"

    .prologue
    .line 1445
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1446
    .local v0, voipActivity:Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1447
    :cond_0
    const-string v1, "VOIP_ACTION"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1449
    return-void
.end method

.method private updateStatusBar(ZZ)V
    .locals 5
    .parameter "disableExpand"
    .parameter "disableAlerts"

    .prologue
    .line 1228
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1231
    .local v0, ident:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1234
    const/4 v2, 0x0

    .line 1236
    .local v2, state:I
    if-eqz p1, :cond_0

    .line 1237
    const/high16 v3, 0x1

    or-int/2addr v2, v3

    .line 1240
    :cond_0
    if-eqz p2, :cond_1

    .line 1241
    const/high16 v3, 0x4

    or-int/2addr v2, v3

    .line 1244
    :cond_1
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v2}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1248
    return-void

    .line 1246
    .end local v2           #state:I
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public answerVoIPCall()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 370
    const-string v4, "answerVoIPCall()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    .line 398
    :goto_0
    return v3

    .line 375
    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, index:I
    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 380
    :cond_1
    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 382
    .local v0, callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->answerVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 383
    const-string v4, "    answerVoIPCall() : answerVoIPCall() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 384
    const/4 v3, 0x1

    goto :goto_0

    .line 387
    :cond_2
    const-string v4, "    answerVoIPCall() : answerVoIPCall() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 395
    .end local v0           #callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v4, "    Can not find RINGING session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callInVoIP(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 1335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callInVoIP()... : number is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1337
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1338
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1339
    const-string v2, "    callInVoIP() : url == null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1346
    :goto_0
    return-void

    .line 1343
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1344
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1345
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public canUseBTInVoIP(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUseBTInVoIP()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 869
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 871
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    .line 872
    const-string v1, "    canUseBTInVoIP() : session != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    .line 877
    :goto_0
    return v1

    .line 876
    :cond_0
    const-string v1, "    canUseBTInVoIP() : session == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 877
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canUseHoldInVoIP()Z
    .locals 3

    .prologue
    .line 975
    const-string v2, "canUseHoldInVoIP()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 978
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v0

    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 979
    .end local v0           #index:I
    :cond_0
    const-string v2, "    canUseHoldInVoIP() : There is no valid active voip call"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 980
    const/4 v2, 0x0

    .line 985
    :goto_0
    return v2

    .line 983
    .restart local v0       #index:I
    :cond_1
    const-string v2, "    canUseHoldInVoIP() : session == null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 985
    .local v1, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getHoldStatus()Z

    move-result v2

    goto :goto_0
.end method

.method public convertVoIPStateToCallState(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1622
    const/4 v0, 0x0

    .line 1623
    .local v0, state:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertVoIPStateToCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1624
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$1;->$SwitchMap$com$android$server$VoIPInterfaceManager$CallState:[I

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1647
    :goto_0
    return v0

    .line 1626
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1628
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1630
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1632
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1634
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1636
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 1638
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 1640
    :pswitch_7
    const/4 v0, 0x6

    goto :goto_0

    .line 1642
    :pswitch_8
    const/4 v0, 0x7

    goto :goto_0

    .line 1644
    :pswitch_9
    const/16 v0, 0x8

    goto :goto_0

    .line 1624
    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method public createCallSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)Z
    .locals 6
    .parameter "apkName"
    .parameter "actionName"
    .parameter "voipPhoneNumber"
    .parameter "cb"

    .prologue
    const/4 v3, 0x0

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCallSession()... apkName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actionName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", voipPhoneNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 249
    const/4 v1, 0x0

    .line 251
    .local v1, newCallSessionInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    monitor-enter p0

    .line 252
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, idxCallType:I
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t This session already exists !! delete the same session !! apkName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", idxCallType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callTypeList.count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->getSessionCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 257
    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 262
    :cond_0
    new-instance v2, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-direct {v2, p0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;-><init>(Lcom/android/server/VoIPInterfaceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    .end local v1           #newCallSessionInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .local v2, newCallSessionInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-nez v2, :cond_1

    .line 264
    :try_start_1
    const-string v4, "    createCallSession() : newCallSessionInfo == null"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 265
    monitor-exit p0

    .line 278
    :goto_1
    return v3

    .line 268
    :cond_1
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v2, v4}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 269
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallSessionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoIPCallbackInterface;)V

    .line 271
    invoke-virtual {v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->isValidSessionInfo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 272
    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const-string v3, "    createCallSession() : newCallSessionInfo.isValidSessionInfo() is true"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 274
    const/4 v3, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 280
    :catchall_0
    move-exception v3

    move-object v1, v2

    .end local v0           #idxCallType:I
    .end local v2           #newCallSessionInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .restart local v1       #newCallSessionInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 277
    .end local v1           #newCallSessionInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .restart local v0       #idxCallType:I
    .restart local v2       #newCallSessionInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_2
    :try_start_3
    const-string v4, "    Fail adding callSession"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 278
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 280
    .end local v0           #idxCallType:I
    .end local v2           #newCallSessionInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .restart local v1       #newCallSessionInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :catchall_1
    move-exception v3

    goto :goto_2
.end method

.method public destroyCallSession(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 290
    const-string v1, "destroyCallSession()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 293
    monitor-enter p0

    .line 294
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .line 296
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 297
    const-string v1, "    destroyCallSession() : Invalid packageName. Please check the package.."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x0

    monitor-exit p0

    .line 303
    :goto_0
    return v1

    .line 301
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    destroyCallSession() : find session with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 305
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableStatusBarforVoIP()V
    .locals 2

    .prologue
    .line 1251
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/VoIPInterfaceManager;->updateStatusBar(ZZ)V

    .line 1252
    return-void
.end method

.method public dumpCallSessionInfoDB(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 1358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SESSION DB SIZE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1360
    if-nez p1, :cond_0

    .line 1361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1362
    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->dump_calltype_w_index(I)V

    .line 1361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1366
    .end local v0           #i:I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v1

    .line 1367
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 1373
    .end local v1           #index:I
    :cond_1
    :goto_1
    return-void

    .line 1371
    .restart local v1       #index:I
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->dump_calltype_w_index(I)V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 229
    const-string v0, "finalize()... "

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 233
    invoke-super {p0}, Landroid/os/IVoIPInterface$Stub;->finalize()V

    .line 235
    return-void
.end method

.method public getActiveCallIndex()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 1653
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1668
    :goto_0
    return v0

    .line 1656
    :cond_0
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1657
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_2

    .line 1664
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActiveCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1656
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 1668
    goto/16 :goto_0
.end method

.method public getActiveFgCallState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1577
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1589
    :goto_0
    return v1

    .line 1581
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1582
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_2

    .line 1585
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActiveCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    goto :goto_0

    .line 1581
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1589
    goto :goto_0
.end method

.method public getCurrentRemoteCallNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1295
    const-string v3, "getCurrentRemoteCallNumber()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1298
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1326
    :goto_0
    return-object v2

    .line 1302
    :cond_0
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    .local v1, index:I
    if-eq v1, v4, :cond_2

    .line 1323
    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1324
    .local v0, callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Return remote party number for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRemotePartyNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1305
    .end local v0           #callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_2
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1307
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1309
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1312
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1314
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1316
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1319
    const-string v3, "    Call with IDLE voip state or DISCONNECT voip state"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentVoIPNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1265
    const-string v3, "getCurrentVoIPNumber()..."

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1268
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1286
    :goto_0
    return-object v2

    .line 1272
    :cond_0
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    .local v1, index:I
    if-eq v1, v4, :cond_2

    .line 1283
    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1284
    .local v0, callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Return voip number for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getRegisteredCallNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1275
    .end local v0           #callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :cond_2
    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1279
    const-string v3, "    No call with ACTIVE voip state or HOLDING voip state"

    invoke-direct {p0, v3}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFirstActiveBgCallState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1592
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1602
    :goto_0
    return v1

    .line 1596
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1597
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_1

    .line 1598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HodingCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    goto :goto_0

    .line 1596
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1602
    goto :goto_0
.end method

.method public getFirstActiveRingingCallState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1606
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1618
    :goto_0
    return v1

    .line 1610
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1611
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCurrentCallState()Lcom/android/server/VoIPInterfaceManager$CallState;

    move-result-object v1

    sget-object v3, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne v1, v3, :cond_2

    .line 1614
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RingingCallState index("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    goto :goto_0

    .line 1610
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1618
    goto :goto_0
.end method

.method public getSessionCount()I
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 4

    .prologue
    .line 1672
    const-string v2, "getState()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1674
    const/4 v1, 0x0

    .line 1676
    .local v1, state:I
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->getActiveCallIndex()I

    move-result v0

    .line 1677
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1678
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    invoke-virtual {v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1679
    invoke-virtual {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->convertVoIPStateToCallState(I)I

    move-result v1

    .line 1681
    :cond_0
    return v1
.end method

.method public getVoIPCallCount(Ljava/lang/String;)I
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 573
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 575
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    .line 576
    const-string v1, "    setVoIPCallCount() : temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getCallCountInThisSession()I

    move-result v1

    .line 581
    :goto_0
    return v1

    .line 580
    :cond_0
    const-string v1, "    setVoIPCallCount() : temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 581
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoIPInCallAlert()Z
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 361
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_voip_alert_on_call"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public hangupVoIPCall()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 407
    const-string v4, "hangupVoIPCall()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    .line 441
    :goto_0
    return v3

    .line 413
    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, index:I
    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 423
    :cond_1
    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 425
    .local v0, callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->hangupVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    const-string v4, "    hangupVoIPCall() : hangupVoIPCall() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 427
    const/4 v3, 0x1

    goto :goto_0

    .line 430
    :cond_2
    const-string v4, "    hangupVoIPCall() : hangupVoIPCall() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 438
    .end local v0           #callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v4, "    Can not find DIALING/RINGING/ACTIVE  session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public holdVoIPCall()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 450
    const-string v4, "holdVoIPCall()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    .line 475
    :goto_0
    return v3

    .line 456
    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, index:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 457
    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 459
    .local v0, callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->holdVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 460
    const-string v4, "    holdVoIPCall() : holdVoIPCall() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 461
    const/4 v3, 0x1

    goto :goto_0

    .line 464
    :cond_1
    const-string v4, "    holdVoIPCall() : holdVoIPCall() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 472
    .end local v0           #callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v4, "    Can not find ACTIVE session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isIncoming()Z
    .locals 4

    .prologue
    .line 1684
    const-string v2, "isIncoming()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {p0}, Lcom/android/server/VoIPInterfaceManager;->getActiveCallIndex()I

    move-result v1

    .line 1688
    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1689
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 1690
    .local v0, callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIncoming get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getDirection()Z

    move-result v2

    .line 1693
    .end local v0           #callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isVoIPActivated()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1211
    const-string v1, "isVoIPActivated()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1212
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1214
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1222
    :goto_0
    return v0

    .line 1217
    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1218
    const/4 v0, 0x1

    goto :goto_0

    .line 1221
    :cond_1
    const-string v1, "    Can not find the session with ACTIVE state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPAlerting()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1123
    const-string v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1124
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1126
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    :goto_0
    return v0

    .line 1130
    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1131
    const/4 v0, 0x1

    goto :goto_0

    .line 1134
    :cond_1
    const-string v1, "    Can not find the session with ALERTING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPDialing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1079
    const-string v1, "isVoIPDialing()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1080
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1082
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1090
    :goto_0
    return v0

    .line 1085
    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1086
    const/4 v0, 0x1

    goto :goto_0

    .line 1089
    :cond_1
    const-string v1, "    Can not find the session with DIALING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPDisconnecting()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1189
    const-string v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1190
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1192
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1201
    :goto_0
    return v0

    .line 1196
    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1197
    const/4 v0, 0x1

    goto :goto_0

    .line 1200
    :cond_1
    const-string v1, "    Can not find the session with DISCONNECTING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPHolding()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1100
    const-string v1, "isVoIPHolding()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1101
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1103
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1112
    :goto_0
    return v0

    .line 1107
    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1108
    const/4 v0, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    const-string v1, "    Can not find the session with HOLDING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPIdle()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 995
    const-string v2, "isVoIPIdle()..."

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 996
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 998
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-nez v2, :cond_1

    .line 999
    const-string v1, "    isVoIPIdle() : No session in db "

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1026
    :cond_0
    :goto_0
    return v0

    .line 1003
    :cond_1
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 1004
    goto :goto_0

    .line 1006
    :cond_2
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1007
    goto :goto_0

    .line 1009
    :cond_3
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 1010
    goto :goto_0

    .line 1012
    :cond_4
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 1013
    goto :goto_0

    .line 1016
    :cond_5
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 1017
    goto :goto_0

    .line 1019
    :cond_6
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 1020
    goto :goto_0

    .line 1022
    :cond_7
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 1023
    goto :goto_0
.end method

.method public isVoIPIncoming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1145
    const-string v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1146
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1148
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1157
    :goto_0
    return v0

    .line 1152
    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1153
    const/4 v0, 0x1

    goto :goto_0

    .line 1156
    :cond_1
    const-string v1, "    Can not find the session with INCOMING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPRingOrDialing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 1035
    const-string v1, "isVoIPRingOrDialing()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1037
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1039
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1047
    :goto_0
    return v0

    .line 1042
    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 1044
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1046
    :cond_2
    const-string v1, "    Can not find the session with RINGING or DIALING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPRinging()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1057
    const-string v1, "isVoIPRinging()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1058
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1060
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1069
    :goto_0
    return v0

    .line 1064
    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1065
    const/4 v0, 0x1

    goto :goto_0

    .line 1068
    :cond_1
    const-string v1, "    Can not find the session with RINGING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVoIPWaiting()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1167
    const-string v1, "isVoIPDisconnecting()..."

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1168
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->isVoIPRunningAndDeregi()Z

    .line 1170
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1179
    :goto_0
    return v0

    .line 1174
    :cond_0
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1175
    const/4 v0, 0x1

    goto :goto_0

    .line 1178
    :cond_1
    const-string v1, "    Can not find the session with WAITING state"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public moveVoIPToTop()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 314
    const-string v4, "moveVoIPToTop()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    .line 348
    :goto_0
    return v3

    .line 321
    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, index:I
    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-ne v2, v5, :cond_1

    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 328
    :cond_1
    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 331
    .local v0, callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->moveVoIPToTop()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    const-string v4, "    moveVoIPToTop() : moveVoIPToTop() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 333
    const/4 v3, 0x1

    goto :goto_0

    .line 336
    :cond_2
    const-string v4, "    moveVoIPToTop() : moveVoIPToTop() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v1

    .line 340
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 344
    .end local v0           #callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v4, "    Can not find DIALING/RINGING/ACTIVE  session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 347
    const-string v4, ""

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public muteVoIPCall()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 518
    const-string v4, "muteVoIPCall()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    .line 542
    :goto_0
    return v3

    .line 523
    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, index:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 524
    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 526
    .local v0, callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->muteVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 527
    const-string v4, "    muteVoIPCall() : muteVoIPCall() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 528
    const/4 v3, 0x1

    goto :goto_0

    .line 531
    :cond_1
    const-string v4, "    muteVoIPCall() : muteVoIPCall() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v1

    .line 535
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 539
    .end local v0           #callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v4, "    Can not find holding session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyCallStateforVoIP(ILjava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 916
    const-string v3, "telephony.registry"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v2

    .line 918
    .local v2, mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 920
    .local v0, ident:J
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 926
    return-void

    .line 923
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 921
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public notifyMissedCallforVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"

    .prologue
    .line 903
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 905
    .local v0, mTel:Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, ident:J
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 907
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    return-void

    .line 910
    :catchall_0
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 908
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public reenableStatusBarforVoIP()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1255
    invoke-direct {p0, v0, v0}, Lcom/android/server/VoIPInterfaceManager;->updateStatusBar(ZZ)V

    .line 1256
    return-void
.end method

.method public resumeVoIPCall()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 484
    const-string v4, "resumeVoIPCall()..."

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v4

    if-nez v4, :cond_0

    .line 508
    :goto_0
    return v3

    .line 489
    :cond_0
    sget-object v4, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_callstate(Lcom/android/server/VoIPInterfaceManager$CallState;)I

    move-result v2

    .local v2, index:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 490
    iget-object v4, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 492
    .local v0, callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getClientCallbackInstance()Landroid/os/IVoIPCallbackInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IVoIPCallbackInterface;->resumeVoIPCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 493
    const-string v4, "    resumeVoIPCall() : resumeVoIPCall() is true in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 494
    const/4 v3, 0x1

    goto :goto_0

    .line 497
    :cond_1
    const-string v4, "    resumeVoIPCall() : resumeVoIPCall() is false in callback"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v1

    .line 501
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 505
    .end local v0           #callInfo:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v4, "    Can not find holding session"

    invoke-direct {p0, v4}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBTUserWantsAudioOn(Z)Z
    .locals 4
    .parameter "flag"

    .prologue
    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBTUserWantsAudioOn()... : audion on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 890
    :try_start_0
    const-string v2, "phoneext"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 891
    .local v1, phone:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_0

    .line 892
    const-string v2, "    setBTUserWantsAudioOn(): ITelephony != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 893
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephonyExt;->setBTUserWantsAudioOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :cond_0
    const/4 v2, 0x1

    .end local v1           #phone:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_0
    return v2

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setEngMode(Ljava/lang/String;I)V
    .locals 2
    .parameter "hiddenkey"
    .parameter "debugLevel"

    .prologue
    const/4 v1, 0x0

    .line 1376
    const-string v0, "setEngMode()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1378
    if-nez p1, :cond_0

    .line 1379
    iput p2, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    .line 1380
    iput-boolean v1, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    .line 1390
    :goto_0
    return-void

    .line 1382
    :cond_0
    const-string v0, "147268321478969"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1383
    const-string v0, "    you can use debug mode"

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 1384
    iput p2, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_level:I

    .line 1385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    goto :goto_0

    .line 1388
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/VoIPInterfaceManager;->dbg_exception:Z

    goto :goto_0
.end method

.method public setUseBTInVoIP(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "pkgName"
    .parameter "btEnable"

    .prologue
    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUseBTInVoIP()... : pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", btEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 847
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 848
    .end local v0           #index:I
    :cond_0
    const-string v2, "    setUseBTInVoIP() : Can not access session db with this apk"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 849
    const/4 v2, 0x0

    .line 856
    :goto_0
    return v2

    .line 852
    .restart local v0       #index:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 853
    .local v1, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useBTCall:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$102(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 855
    const-string v2, "    setUseBTInVoIP() : set BT flag in the session"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 856
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setUseHoldInVoIP(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "pkgName"
    .parameter "holdEnable"

    .prologue
    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUseHoldInVoIP()... : pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", holdEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 956
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->existValidCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallTypeIndex_w_pkgName(Ljava/lang/String;)I

    move-result v0

    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 957
    .end local v0           #index:I
    :cond_0
    const-string v2, "    setUseHoldInVoIP() : Can not access session db with this apk"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 958
    const/4 v2, 0x0

    .line 965
    :goto_0
    return v2

    .line 961
    .restart local v0       #index:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->callTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    .line 962
    .local v1, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->useHoldCall:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->access$202(Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 964
    const-string v2, "    setUseHoldInVoIP() : set hold flag in the session"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 965
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setVoIPActive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .parameter "activatedNumber"

    .prologue
    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPActive()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 661
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 662
    const-string v1, "    setVoIPActive() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 663
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 664
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 668
    :cond_0
    const/4 v1, 0x1

    .line 672
    :goto_0
    return v1

    .line 671
    :cond_1
    const-string v1, "    setVoIPActive() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 672
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPAlerting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .parameter "alertingNumber"

    .prologue
    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPAlerting()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 712
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 714
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 715
    const-string v1, "    setVoIPAlerting() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 716
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 717
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 721
    :cond_0
    const/4 v1, 0x1

    .line 725
    :goto_0
    return v1

    .line 724
    :cond_1
    const-string v1, "    setVoIPAlerting() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 725
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPCallCount(Ljava/lang/String;I)Z
    .locals 3
    .parameter "pkgName"
    .parameter "count"

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 555
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_0

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    setVoIPCallCount() : temp != null, count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallCountInThisSession(I)V

    .line 558
    const/4 v1, 0x1

    .line 562
    :goto_0
    return v1

    .line 561
    :cond_0
    const-string v1, "    setVoIPCallCount() : temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 562
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPDialing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"
    .parameter "calleeNumber"

    .prologue
    const/4 v1, 0x0

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoIPDialing()... : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 632
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 634
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 635
    const-string v2, "    setVoIPDialing() :temp != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 636
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 637
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    .line 639
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 642
    :cond_0
    const/4 v1, 0x1

    .line 646
    :goto_0
    return v1

    .line 645
    :cond_1
    const-string v2, "    setVoIPDialing() :temp == null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVoIPDisconnected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .parameter "disconnectedNumber"

    .prologue
    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPDisconnected()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 819
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 821
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 822
    const-string v1, "    setVoIPDisconnected() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 823
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 824
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 828
    :cond_0
    const/4 v1, 0x1

    .line 832
    :goto_0
    return v1

    .line 831
    :cond_1
    const-string v1, "    setVoIPDisconnected() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 832
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPDisconnecting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .parameter "disconnectingNumber"

    .prologue
    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPDisconnecting()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 793
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 795
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 796
    const-string v1, "    setVoIPDisconnecting() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 797
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 798
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 802
    :cond_0
    const/4 v1, 0x1

    .line 806
    :goto_0
    return v1

    .line 805
    :cond_1
    const-string v1, "    setVoIPDisconnecting() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 806
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPHolding(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .parameter "holdNumber"

    .prologue
    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPHolding()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 685
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 687
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 688
    const-string v1, "    setVoIPHolding() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 689
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 690
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 694
    :cond_0
    const/4 v1, 0x1

    .line 698
    :goto_0
    return v1

    .line 697
    :cond_1
    const-string v1, "    setVoIPHolding() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 698
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPIdle(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 592
    const-string v0, "setVoIPIdle()..."

    invoke-direct {p0, v0}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 593
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method public setVoIPInCallAlert(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 352
    iget-object v2, p0, Lcom/android/server/VoIPInterfaceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 353
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 355
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_voip_alert_on_call"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 356
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    return-void
.end method

.method public setVoIPIncoming(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x1

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoIPIncoming()... : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 738
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 740
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 741
    const-string v2, "    setVoIPIncoming() :temp != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 742
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 743
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    .line 745
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 752
    :cond_0
    :goto_0
    return v1

    .line 751
    :cond_1
    const-string v1, "    setVoIPIncoming() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 752
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPRinging(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .parameter "callerNumber"

    .prologue
    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoIPRinging()... : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 606
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 608
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 609
    const-string v1, "    setVoIPRinging() :temp != null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 610
    sget-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 611
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 615
    :cond_0
    const/4 v1, 0x1

    .line 619
    :goto_0
    return v1

    .line 618
    :cond_1
    const-string v1, "    setVoIPRinging() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 619
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVoIPWaiting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"
    .parameter "waitingNumber"

    .prologue
    const/4 v1, 0x1

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoIPWaiting()... : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 765
    invoke-direct {p0, p1}, Lcom/android/server/VoIPInterfaceManager;->getCallSessionInfo_w_pkgName(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;

    move-result-object v0

    .line 767
    .local v0, temp:Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;
    if-eqz v0, :cond_1

    .line 768
    const-string v2, "    setVoIPWaiting() :temp != null"

    invoke-direct {p0, v2}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 769
    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0, v2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setCallState(Lcom/android/server/VoIPInterfaceManager$CallState;)V

    .line 770
    invoke-virtual {v0, p2}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setRemotePartyNumber(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, v1}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->setDirection(Z)V

    .line 772
    invoke-virtual {v0}, Lcom/android/server/VoIPInterfaceManager$CallSessionInfo;->getBTStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    invoke-direct {p0}, Lcom/android/server/VoIPInterfaceManager;->notifyVoIPCallStateChangeIntoTelephony()V

    .line 779
    :cond_0
    :goto_0
    return v1

    .line 778
    :cond_1
    const-string v1, "    setVoIPWaiting() :temp == null"

    invoke-direct {p0, v1}, Lcom/android/server/VoIPInterfaceManager;->log(Ljava/lang/String;)V

    .line 779
    const/4 v1, 0x0

    goto :goto_0
.end method
