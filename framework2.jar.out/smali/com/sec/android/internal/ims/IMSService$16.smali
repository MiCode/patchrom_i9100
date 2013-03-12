.class Lcom/sec/android/internal/ims/IMSService$16;
.super Ljava/lang/Object;
.source "IMSService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/internal/ims/IMSService;->performConnectOperation()V
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
    .line 3296
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$16;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3300
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->LTE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v0, v1, :cond_0

    .line 3302
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$16;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string v1, "MOBILE"

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleLTENetworkConneted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->access$1800(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V

    .line 3318
    :goto_0
    return-void

    .line 3304
    :cond_0
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v0, v1, :cond_1

    .line 3306
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$16;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string v1, "MOBILE"

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleEVDONetworkConneted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->access$1100(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V

    goto :goto_0

    .line 3309
    :cond_1
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v0, v1, :cond_2

    .line 3311
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$16;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string v1, "WIFI"

    #calls: Lcom/sec/android/internal/ims/IMSService;->handleWIFINetworkConneted(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->access$1900(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V

    goto :goto_0

    .line 3316
    :cond_2
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$16;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto :goto_0
.end method
