.class Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService$OverTurnPlayer;-><init>(Lcom/android/server/NotificationManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

.field final synthetic val$this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService$OverTurnPlayer;Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1916
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->val$this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    .line 1918
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1934
    :goto_0
    return-void

    .line 1921
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$400(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 1922
    .local v0, player:Landroid/media/IRingtonePlayer;
    if-eqz v0, :cond_0

    .line 1923
    invoke-interface {v0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1927
    :cond_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1928
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 1930
    :cond_1
    const-string v1, "STATUSBAR-NotificationService"

    const-string v2, "MREvent.FLIP_TOP_TO_BOTTOM"

    .end local v0           #player:Landroid/media/IRingtonePlayer;
    :goto_1
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1927
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1928
    iget-object v2, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v2, v2, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 1930
    :cond_2
    const-string v2, "STATUSBAR-NotificationService"

    const-string v3, "MREvent.FLIP_TOP_TO_BOTTOM"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    throw v1

    .line 1925
    :catch_0
    move-exception v1

    .line 1927
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1928
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$1;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v1}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 1930
    :cond_3
    const-string v1, "STATUSBAR-NotificationService"

    const-string v2, "MREvent.FLIP_TOP_TO_BOTTOM"

    goto :goto_1

    .line 1918
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
