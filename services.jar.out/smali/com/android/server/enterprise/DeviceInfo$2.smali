.class Lcom/android/server/enterprise/DeviceInfo$2;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 245
    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 249
    const-string v0, "DeviceInfo"

    const-string v1, "Trying to connect to SysScope Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mSysScopeServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$100(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$300(Lcom/android/server/enterprise/DeviceInfo;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.enterprise.SYSSCOPE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    #getter for: Lcom/android/server/enterprise/DeviceInfo;->connSysScope:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/android/server/enterprise/DeviceInfo;->access$200(Lcom/android/server/enterprise/DeviceInfo;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 257
    return-void
.end method
