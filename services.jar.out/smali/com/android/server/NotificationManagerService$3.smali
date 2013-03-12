.class Lcom/android/server/NotificationManagerService$3;
.super Landroid/app/INotificationPlayerOnCompletionListener$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/app/INotificationPlayerOnCompletionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 1293
    :cond_0
    return-void
.end method
