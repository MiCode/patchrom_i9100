.class Lcom/android/server/NotificationManagerService$4;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    .line 1295
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 1297
    const-string v0, "STATUSBAR-NotificationService"

    const-string v1, "binderDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1299
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$2502(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1300
    return-void
.end method
