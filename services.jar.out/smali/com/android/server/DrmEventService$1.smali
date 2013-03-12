.class Lcom/android/server/DrmEventService$1;
.super Landroid/content/BroadcastReceiver;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmEventService;


# direct methods
.method constructor <init>(Lcom/android/server/DrmEventService;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/server/DrmEventService$1;->this$0:Lcom/android/server/DrmEventService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_0

    .line 392
    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######SISODAction :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 397
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 399
    .local v1, isHDMIPlugged:Z
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_1

    .line 400
    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHDMIPlugged :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    if-eqz v1, :cond_4

    .line 404
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0xb

    const-string v4, "application"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 405
    .local v2, request:Landroid/drm/DrmInfoRequest;
    const-string v3, "dummy"

    const-string v4, "dummydata"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_2

    .line 407
    const-string v3, "DrmEventService"

    const-string v4, "SISODAction :TVOUT intent is sent to Plugin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_2
    iget-object v3, p0, Lcom/android/server/DrmEventService$1;->this$0:Lcom/android/server/DrmEventService;

    iget-object v3, v3, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    .line 420
    .end local v1           #isHDMIPlugged:Z
    .end local v2           #request:Landroid/drm/DrmInfoRequest;
    :cond_3
    :goto_0
    return-void

    .line 412
    .restart local v1       #isHDMIPlugged:Z
    :cond_4
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0xc

    const-string v4, "application"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 413
    .restart local v2       #request:Landroid/drm/DrmInfoRequest;
    const-string v3, "dummy1"

    const-string v4, "dummydata1"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_5

    .line 415
    const-string v3, "DrmEventService"

    const-string v4, "SISODAction :TVOUT Unplugged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_5
    iget-object v3, p0, Lcom/android/server/DrmEventService$1;->this$0:Lcom/android/server/DrmEventService;

    iget-object v3, v3, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    goto :goto_0
.end method
