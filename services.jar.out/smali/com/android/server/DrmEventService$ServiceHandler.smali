.class final Lcom/android/server/DrmEventService$ServiceHandler;
.super Landroid/os/Handler;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmEventService;


# direct methods
.method public constructor <init>(Lcom/android/server/DrmEventService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/server/DrmEventService$ServiceHandler;->this$0:Lcom/android/server/DrmEventService;

    .line 291
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 292
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 298
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_0

    .line 299
    const-string v3, "DrmEventService"

    const-string v4, "DrmEventService : handleMessage msg received"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    if-eqz p1, :cond_4

    .line 301
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 302
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_7

    .line 303
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, action:Ljava/lang/String;
    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action event :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz v0, :cond_6

    .line 306
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 309
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_1

    .line 310
    const-string v3, "DrmEventService"

    const-string v4, "calling handleDbOperation : HANDLE_DRM_INIT "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1
    iget-object v3, p0, Lcom/android/server/DrmEventService$ServiceHandler;->this$0:Lcom/android/server/DrmEventService;

    const/4 v4, 0x7

    #calls: Lcom/android/server/DrmEventService;->handleDbOperation(ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I
    invoke-static {v3, v4, v6, v6, v1}, Lcom/android/server/DrmEventService;->access$000(Lcom/android/server/DrmEventService;ILandroid/drm/DrmInfo;Landroid/drm/DrmInfoRequest;Landroid/content/Intent;)I

    move-result v2

    .line 312
    .local v2, ret:I
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_2

    .line 313
    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDbOperation : HANDLE_DRM_INIT ret  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2
    iget-object v3, p0, Lcom/android/server/DrmEventService$ServiceHandler;->this$0:Lcom/android/server/DrmEventService;

    #getter for: Lcom/android/server/DrmEventService;->isRegisteredBootTime:Z
    invoke-static {v3}, Lcom/android/server/DrmEventService;->access$100(Lcom/android/server/DrmEventService;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 316
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_3

    .line 317
    const-string v3, "DrmEventService"

    const-string v4, "Registering broadcast receivers from handlemessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_3
    iget-object v3, p0, Lcom/android/server/DrmEventService$ServiceHandler;->this$0:Lcom/android/server/DrmEventService;

    #calls: Lcom/android/server/DrmEventService;->registerReceiever()V
    invoke-static {v3}, Lcom/android/server/DrmEventService;->access$200(Lcom/android/server/DrmEventService;)V

    .line 333
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #ret:I
    :cond_4
    :goto_0
    return-void

    .line 320
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #ret:I
    :cond_5
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_4

    .line 321
    const-string v3, "DrmEventService"

    const-string v4, " already registered .. not doing again in handlemessage "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    .end local v2           #ret:I
    :cond_6
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_4

    .line 326
    const-string v3, "DrmEventService"

    const-string v4, "Intent Action is Null :"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    .end local v0           #action:Ljava/lang/String;
    :cond_7
    sget-boolean v3, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v3, :cond_4

    .line 330
    const-string v3, "DrmEventService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent is Null : msg.what :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
