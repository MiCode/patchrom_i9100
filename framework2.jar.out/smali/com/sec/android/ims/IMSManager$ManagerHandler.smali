.class final Lcom/sec/android/ims/IMSManager$ManagerHandler;
.super Landroid/os/Handler;
.source "IMSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/ims/IMSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/ims/IMSManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/ims/IMSManager;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/ims/IMSManager;Lcom/sec/android/ims/IMSManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/sec/android/ims/IMSManager$ManagerHandler;-><init>(Lcom/sec/android/ims/IMSManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 164
    const-string v1, "IMSManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS ServiceSender handleMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v1}, Lcom/sec/android/ims/IMSManager;->access$100(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 167
    const-string v1, "IMSManager"

    const-string v2, "<<<<<<<Not Yet Connected to IMS service>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 170
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v1}, Lcom/sec/android/ims/IMSManager;->access$100(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->pcscfAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/ims/IMSManager;->access$200(Lcom/sec/android/ims/IMSManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->isIt3gNetwork:Z
    invoke-static {v3}, Lcom/sec/android/ims/IMSManager;->access$300(Lcom/sec/android/ims/IMSManager;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService;->register(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 185
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v1}, Lcom/sec/android/ims/IMSManager;->access$100(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->pcscfAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/ims/IMSManager;->access$200(Lcom/sec/android/ims/IMSManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->isimResponse:[B
    invoke-static {v3}, Lcom/sec/android/ims/IMSManager;->access$400(Lcom/sec/android/ims/IMSManager;)[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService;->registerWithISIMResponse(Ljava/lang/String;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    .line 188
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_3
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v1}, Lcom/sec/android/ims/IMSManager;->access$100(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/internal/ims/IIMSService;->unregister()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 197
    :catch_2
    move-exception v0

    .line 199
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_4
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v1}, Lcom/sec/android/ims/IMSManager;->access$100(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v1}, Lcom/sec/android/ims/IMSManager;->access$100(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->listener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v2}, Lcom/sec/android/ims/IMSManager;->access$500(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/ims/IMSEventListener;->callback:Lcom/sec/android/internal/ims/IIMSEventListener;

    iget-object v3, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->events:I
    invoke-static {v3}, Lcom/sec/android/ims/IMSManager;->access$600(Lcom/sec/android/ims/IMSManager;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/internal/ims/IIMSService;->registerListener(Lcom/sec/android/internal/ims/IIMSEventListener;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 221
    :catch_3
    move-exception v0

    .line 223
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_5
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v1}, Lcom/sec/android/ims/IMSManager;->access$100(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v1}, Lcom/sec/android/ims/IMSManager;->access$100(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->listener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v2}, Lcom/sec/android/ims/IMSManager;->access$500(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/ims/IMSEventListener;->callback:Lcom/sec/android/internal/ims/IIMSEventListener;

    invoke-interface {v1, v2}, Lcom/sec/android/internal/ims/IIMSService;->unregisterListener(Lcom/sec/android/internal/ims/IIMSEventListener;)V

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/sec/android/ims/IMSManager$ManagerHandler;->this$0:Lcom/sec/android/ims/IMSManager;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/ims/IMSManager;->listener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v1, v2}, Lcom/sec/android/ims/IMSManager;->access$502(Lcom/sec/android/ims/IMSManager;Lcom/sec/android/ims/IMSEventListener;)Lcom/sec/android/ims/IMSEventListener;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 237
    :catch_4
    move-exception v0

    .line 239
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
