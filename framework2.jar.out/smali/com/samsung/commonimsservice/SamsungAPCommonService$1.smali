.class Lcom/samsung/commonimsservice/SamsungAPCommonService$1;
.super Landroid/os/Handler;
.source "SamsungAPCommonService.java"


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
    .line 88
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->onImsServiceConnected()V
    invoke-static {v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$000(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$1;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->onImsServiceDisconnected()V
    invoke-static {v0}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$100(Lcom/samsung/commonimsservice/SamsungAPCommonService;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
