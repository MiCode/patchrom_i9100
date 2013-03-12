.class Lcom/samsung/commonimsservice/SamsungAPCommonService$2;
.super Ljava/lang/Object;
.source "SamsungAPCommonService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/commonimsservice/SamsungAPCommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;


# direct methods
.method constructor <init>(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v1, "IMS service connection connected"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    invoke-static {p2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v1

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mImsInterface:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v0, v1}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$302(Lcom/samsung/commonimsservice/SamsungAPCommonService;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;

    .line 119
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->H:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$400(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 123
    const-string v0, "SamsungAPCommonService"

    const-string v1, "IMS service connection disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$2;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->H:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$400(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    return-void
.end method
