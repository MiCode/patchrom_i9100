.class Lcom/android/server/am/ServiceRecord$2;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->cancelNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 393
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 394
    .local v1, inm:Landroid/app/INotificationManager;
    if-nez v1, :cond_0

    .line 404
    :goto_0
    return-void

    .line 398
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    const-string v3, "Error canceling notification for service"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 402
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
