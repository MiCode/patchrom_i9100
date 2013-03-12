.class public Landroid/hardware/contextaware/utilbundle/CAAutoTest;
.super Ljava/lang/Object;
.source "CAAutoTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;
    }
.end annotation


# static fields
.field public static final CA_ALL_TEST:I = 0x2

.field public static final CA_MANAGER_TEST:I = 0x1


# instance fields
.field private isTesting:Z

.field private final mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

.field private mScenario:Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;

.field private mTestMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->isTesting:Z

    .line 51
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;-><init>(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mScenario:Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;

    .line 52
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mTestMode:I

    return v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)Landroid/hardware/sensorhub/SensorHubManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mContextManager:Landroid/hardware/sensorhub/SensorHubManager;

    return-object v0
.end method


# virtual methods
.method public isRun()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->isTesting:Z

    return v0
.end method

.method public setPacketList([BI)V
    .locals 1
    .parameter "packet"
    .parameter "delayTime"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mScenario:Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;-><init>(Landroid/hardware/contextaware/utilbundle/CAAutoTest;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mScenario:Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mScenario:Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->setPacketList([BI)V

    .line 106
    return-void
.end method

.method public startAutoTest(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->isTesting:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "Auto Test is already started."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mTestMode:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->isTesting:Z

    .line 68
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mScenario:Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->start()V

    goto :goto_0
.end method

.method public stopAutoTest()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->isTesting:Z

    .line 76
    iput v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mTestMode:I

    .line 78
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mScenario:Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mScenario:Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;->stopThread()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CAAutoTest;->mScenario:Landroid/hardware/contextaware/utilbundle/CAAutoTest$ScenarioThread;

    .line 82
    :cond_0
    return-void
.end method
