.class Lcom/sec/android/internal/ims/IMSService$1;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$1;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 325
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, action:Ljava/lang/String;
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver roamingAreaReceiver action string = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const-string v1, "IMS/IMSService"

    const-string v2, "Inside ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$1;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const-string v1, "IMS/IMSService"

    const-string v2, "Inside Roaming area"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 339
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$1;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 340
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->access$102(Z)Z

    .line 341
    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v1, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 345
    :cond_0
    return-void
.end method
