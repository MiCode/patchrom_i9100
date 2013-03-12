.class Lcom/android/server/NotificationManagerService$OverTurnPlayer$2;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService$OverTurnPlayer;->registerObs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService$OverTurnPlayer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1965
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$2;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$OverTurnPlayer$2;->this$1:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    #calls: Lcom/android/server/NotificationManagerService$OverTurnPlayer;->update()V
    invoke-static {v0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->access$2900(Lcom/android/server/NotificationManagerService$OverTurnPlayer;)V

    .line 1969
    return-void
.end method
