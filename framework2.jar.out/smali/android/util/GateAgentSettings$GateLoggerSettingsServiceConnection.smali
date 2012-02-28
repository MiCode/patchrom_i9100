.class Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;
.super Ljava/lang/Object;
.source "GateAgentSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/GateAgentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GateLoggerSettingsServiceConnection"
.end annotation


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mService:Landroid/util/IGateLoggerSettingsService;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mService:Landroid/util/IGateLoggerSettingsService;

    .line 37
    iput-object p1, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mLock:Ljava/lang/Object;

    .line 38
    return-void
.end method


# virtual methods
.method public getService()Landroid/util/IGateLoggerSettingsService;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mService:Landroid/util/IGateLoggerSettingsService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 45
    const-string v0, "GateAgentSettings"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p2}, Landroid/util/IGateLoggerSettingsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/util/IGateLoggerSettingsService;

    move-result-object v0

    iput-object v0, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mService:Landroid/util/IGateLoggerSettingsService;

    .line 47
    iget-object v1, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Landroid/util/GateAgentSettings$GateLoggerSettingsServiceConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 53
    const-string v0, "GateAgentSettings"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
