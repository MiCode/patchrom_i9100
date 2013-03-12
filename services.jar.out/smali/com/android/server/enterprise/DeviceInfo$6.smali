.class Lcom/android/server/enterprise/DeviceInfo$6;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 2636
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 2640
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-static {p2}, Landroid/app/enterprise/IEnterpriseSysScopeInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseSysScopeInterface;

    move-result-object v1

    #setter for: Lcom/android/server/enterprise/DeviceInfo;->mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->access$1602(Lcom/android/server/enterprise/DeviceInfo;Landroid/app/enterprise/IEnterpriseSysScopeInterface;)Landroid/app/enterprise/IEnterpriseSysScopeInterface;

    .line 2642
    const-string v0, "DeviceInfo"

    const-string v1, "SysScope Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2644
    monitor-exit p0

    return-void

    .line 2640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 2649
    monitor-enter p0

    :try_start_0
    const-string v0, "DeviceInfo"

    const-string v1, "SysScope Service has unexpectedly disconnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/enterprise/DeviceInfo;->mSysScopeService:Landroid/app/enterprise/IEnterpriseSysScopeInterface;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->access$1602(Lcom/android/server/enterprise/DeviceInfo;Landroid/app/enterprise/IEnterpriseSysScopeInterface;)Landroid/app/enterprise/IEnterpriseSysScopeInterface;

    .line 2653
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$100(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/DeviceInfo;->access$1700(Lcom/android/server/enterprise/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2655
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$100(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceBind:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/enterprise/DeviceInfo;->access$1700(Lcom/android/server/enterprise/DeviceInfo;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2657
    monitor-exit p0

    return-void

    .line 2649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
