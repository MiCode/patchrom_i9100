.class Lcom/android/server/DrmEventService$6;
.super Ljava/lang/Object;
.source "DrmEventService.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;


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
    .line 1352
    iput-object p1, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .locals 3
    .parameter "client"
    .parameter "event"

    .prologue
    .line 1358
    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v0

    const/16 v1, 0x7d6

    if-ne v0, v1, :cond_1

    .line 1359
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    .line 1360
    const-string v0, "DrmEventService"

    const-string v1, "on Error TYPE_PROCESS_DRM_INFO_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    .line 1370
    const-string v0, "DrmEventService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DRM PUSH RECEIVER :event.getType() is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
