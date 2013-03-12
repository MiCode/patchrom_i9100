.class Lcom/sec/android/internal/ims/IMSService$13;
.super Ljava/lang/Object;
.source "IMSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/internal/ims/IMSService;->handleHiPriNWConnect()V
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
    .line 2871
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$13;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$13;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2874
    const-string v0, "IMS/IMSService"

    const-string v1, "StopHirpiNetwork: 2 sec passed no response from IMS stack... Stop HiPri Network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$13;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->stopHiPriNetwork()I

    .line 2877
    :cond_0
    return-void
.end method
