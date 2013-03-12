.class Lcom/samsung/commonimsservice/SamsungAPCommonService$3;
.super Lcom/sec/android/ims/IMSEventListener;
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
    .line 170
    iput-object p1, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    invoke-direct {p0}, Lcom/sec/android/ims/IMSEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V
    .locals 8
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"
    .parameter "param"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS event received EventType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AppType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg1 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg2 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 184
    if-eqz p6, :cond_0

    .line 185
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMS event received EventType["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AppType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg1 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Arg2 ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\nPDATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getPLettering()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[\nHistoryDATA ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getHistoryInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]\nModify Supported : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getModifyHeader()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 190
    :cond_0
    const/16 v5, 0xa

    if-ne p1, v5, :cond_1

    .line 191
    packed-switch p2, :pswitch_data_0

    .line 218
    :cond_1
    const/16 v5, 0x8

    if-eq p1, v5, :cond_2

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    const/4 v5, 0x6

    if-eq p1, v5, :cond_2

    const/4 v5, 0x5

    if-ne p1, v5, :cond_70

    .line 223
    :cond_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallState listener list size ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 224
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EventType recieved["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] call register len ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 226
    sparse-switch p2, :sswitch_data_0

    .line 1310
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "Default case entered"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x1

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 201
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 202
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 203
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    if-eqz v3, :cond_4

    .line 205
    if-eqz p5, :cond_5

    .line 206
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 210
    .local v4, str:Ljava/lang/String;
    :goto_2
    int-to-long v5, p3

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 201
    .end local v4           #str:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 208
    :cond_5
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_2

    .line 229
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :sswitch_0
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 230
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 231
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    invoke-interface {v3, p3, p4}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onNetworkTransition(II)V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 238
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    :sswitch_1
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_REMOTE_CAPTURE_SUCCESS"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 241
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 242
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 243
    if-eqz v3, :cond_6

    .line 244
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 245
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    .line 240
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 253
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_REMOTE_CAPTURE_FAILURE"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 255
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 256
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 257
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 258
    if-eqz v3, :cond_7

    .line 259
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 260
    const/4 v5, 0x0

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureFailure(IZ)V

    .line 255
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 267
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_LOCAL_CAPTURE_SUCCESS"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 269
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 270
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 271
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 272
    if-eqz v3, :cond_8

    .line 273
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 274
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureSuccess(IZLjava/lang/String;)V

    .line 269
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 283
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "VideoListener: Received Event:IMS_CALL_LOCAL_CAPTURE_FAILURE"

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 285
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 286
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 287
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 288
    if-eqz v3, :cond_9

    .line 289
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 290
    const/4 v5, 0x1

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCaptureFailure(IZ)V

    .line 285
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 297
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoListener: Received Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 300
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 301
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 302
    if-eqz v3, :cond_a

    .line 303
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 304
    const/4 v5, 0x0

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCameraEvent(IZ)V

    .line 299
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 310
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_6
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoListener: Received Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 312
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_9
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 313
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 314
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 315
    if-eqz v3, :cond_b

    .line 316
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 317
    const/4 v5, 0x1

    invoke-interface {v3, p3, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCameraEvent(IZ)V

    .line 312
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 324
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_7
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v0

    .line 336
    .local v0, callType:I
    if-eqz p5, :cond_d

    .line 337
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 341
    .restart local v4       #str:Ljava/lang/String;
    :goto_a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SessionID ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] RemoteURI ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] CallType ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 342
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 343
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 344
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 345
    if-eqz v3, :cond_c

    .line 346
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 347
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v4, p6, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onRinging(ILjava/lang/String;Lcom/sec/android/internal/ims/IIMSParams;I)V

    .line 342
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 339
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_d
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto/16 :goto_a

    .line 356
    .end local v0           #callType:I
    .end local v4           #str:Ljava/lang/String;
    :sswitch_8
    if-eqz p5, :cond_f

    .line 357
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 361
    .restart local v4       #str:Ljava/lang/String;
    :goto_c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->regExpiry:I
    invoke-static {v5, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$902(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)I

    .line 362
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->regUri:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1002(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 364
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 365
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 366
    if-eqz v3, :cond_e

    .line 367
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 368
    int-to-long v5, p3

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationDone(Ljava/lang/String;J)V

    .line 363
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 359
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_f
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_c

    .line 375
    .end local v4           #str:Ljava/lang/String;
    :sswitch_9
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 377
    if-eqz p5, :cond_11

    .line 378
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 382
    .restart local v4       #str:Ljava/lang/String;
    :goto_e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 383
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 384
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 385
    if-eqz v3, :cond_10

    .line 386
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 387
    const-string v5, "Registration Failed"

    invoke-interface {v3, v4, p3, v5}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 380
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_11
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_e

    .line 395
    .end local v4           #str:Ljava/lang/String;
    :sswitch_a
    if-eqz p5, :cond_13

    .line 396
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 400
    .restart local v4       #str:Ljava/lang/String;
    :goto_10
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 401
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_11
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 402
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 403
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 404
    if-eqz v3, :cond_12

    .line 405
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 406
    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 401
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 398
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_13
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_10

    .line 414
    .end local v4           #str:Ljava/lang/String;
    :sswitch_b
    if-eqz p5, :cond_15

    .line 415
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 419
    .restart local v4       #str:Ljava/lang/String;
    :goto_12
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 420
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_13
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 421
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 422
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 423
    if-eqz v3, :cond_14

    .line 424
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 425
    const/4 v5, -0x4

    const/4 v6, -0x4

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 417
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_15
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_12

    .line 433
    .end local v4           #str:Ljava/lang/String;
    :sswitch_c
    if-eqz p5, :cond_17

    .line 434
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 438
    .restart local v4       #str:Ljava/lang/String;
    :goto_14
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 439
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_15
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 440
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 441
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 442
    if-eqz v3, :cond_16

    .line 443
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 444
    const/16 v5, -0xc

    const/16 v6, -0xc

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 439
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 436
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_17
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_14

    .line 452
    .end local v4           #str:Ljava/lang/String;
    :sswitch_d
    if-eqz p5, :cond_19

    .line 453
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 457
    .restart local v4       #str:Ljava/lang/String;
    :goto_16
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 458
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_17
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 459
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 460
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 461
    if-eqz v3, :cond_18

    .line 462
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 463
    const/4 v5, -0x4

    const/4 v6, -0x4

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 458
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 455
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_19
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_16

    .line 471
    .end local v4           #str:Ljava/lang/String;
    :sswitch_e
    if-eqz p5, :cond_1b

    .line 472
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 476
    .restart local v4       #str:Ljava/lang/String;
    :goto_18
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 477
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_19
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1c

    .line 478
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 479
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 480
    if-eqz v3, :cond_1a

    .line 481
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 482
    const/4 v5, -0x5

    const/4 v6, -0x5

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 477
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 474
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_1b
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_18

    .line 485
    .restart local v2       #i:I
    :cond_1c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "203"

    const/4 v7, -0x5

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 181
    .end local v2           #i:I
    .end local v4           #str:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 491
    :sswitch_f
    if-eqz p5, :cond_1e

    .line 492
    :try_start_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p5}, Ljava/lang/String;-><init>([B)V

    .line 496
    .restart local v4       #str:Ljava/lang/String;
    :goto_1a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const/4 v6, 0x0

    #setter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->registrationStatus:Z
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$502(Lcom/samsung/commonimsservice/SamsungAPCommonService;Z)Z

    .line 497
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1f

    .line 498
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSRegListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$600(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;

    .line 499
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 500
    if-eqz v3, :cond_1d

    .line 501
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 502
    const/16 v5, -0x32

    const/16 v6, -0x32

    invoke-static {v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/commonimsservice/IIMSRegisterStateListener;->onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 494
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSRegisterStateListener;
    .end local v4           #str:Ljava/lang/String;
    :cond_1e
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_1a

    .line 505
    .restart local v2       #i:I
    :cond_1f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "206"

    const/16 v7, -0x32

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 510
    .end local v2           #i:I
    .end local v4           #str:Ljava/lang/String;
    :sswitch_10
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 511
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 512
    .local v3, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 513
    if-eqz v3, :cond_20

    .line 514
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 515
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onRingingBack(I)V

    .line 510
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 522
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_11
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 523
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 524
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 525
    if-eqz v3, :cond_21

    .line 526
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 528
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onEarlyMediaStart(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 522
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 535
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_12
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 536
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 537
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 538
    if-eqz v3, :cond_22

    .line 539
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 540
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->stopAlertTone(I)V

    .line 535
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 547
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_13
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_24

    .line 548
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 549
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 550
    if-eqz v3, :cond_23

    .line 551
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 552
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEnded(I)V

    .line 547
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 555
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_24
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "307"

    const/16 v7, -0x31

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    .end local v2           #i:I
    :sswitch_14
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_20
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 561
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 562
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 563
    if-eqz v3, :cond_25

    .line 564
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 565
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCalling(I)V

    .line 560
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 573
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_15
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_21
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 574
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 575
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 576
    if-eqz v3, :cond_26

    .line 577
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 578
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEnded(I)V

    .line 573
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 585
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_16
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_22
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 586
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 587
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_27

    .line 588
    const/16 v5, -0x1a

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 585
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 595
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_17
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_23
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 596
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 597
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_28

    .line 598
    const/16 v5, -0x1b

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 595
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 605
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_18
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_24
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 606
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 607
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_29

    .line 608
    const/16 v5, -0x1c

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 605
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 615
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_19
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_25
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 616
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 617
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2a

    .line 618
    const/16 v5, -0x1d

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 615
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 625
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_26
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2c

    .line 626
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 627
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2b

    .line 628
    const/16 v5, -0x1e

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 625
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 631
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_2c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "116"

    const/16 v7, -0x1e

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 636
    .end local v2           #i:I
    :sswitch_1b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_27
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2e

    .line 637
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 638
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2d

    .line 639
    const/16 v5, -0x26

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 636
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 642
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_2e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "101"

    const/16 v7, -0x26

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    .end local v2           #i:I
    :sswitch_1c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_28
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 648
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 649
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_2f

    .line 650
    const/16 v5, -0x1f

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 647
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 657
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_29
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 658
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 659
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_30

    .line 660
    const/16 v5, -0x20

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 657
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 667
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 668
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 669
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_31

    .line 670
    const/16 v5, -0xa

    const-string v6, "Network Lost"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 667
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 677
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_1f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 678
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 679
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_32

    .line 680
    const/16 v5, 0x19f

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 677
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 687
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_20
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 688
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 689
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_33

    .line 690
    const/16 v5, -0x21

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 687
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 697
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_21
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_35

    .line 698
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 699
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_34

    .line 700
    const/16 v5, -0x19

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 697
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 703
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_35
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "303"

    const/16 v7, -0x19

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 712
    .end local v2           #i:I
    :sswitch_22
    const/4 v1, 0x0

    .line 714
    .local v1, errCode:I
    const/16 v5, 0x162

    if-ne p2, v5, :cond_38

    .line 715
    const/16 v1, -0x28

    .line 727
    :cond_36
    :goto_2e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3b

    .line 728
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 729
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_37

    .line 730
    const-string v5, "Call failed"

    invoke-interface {v3, p3, v1, v5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 727
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 717
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_38
    const/16 v5, 0x163

    if-ne p2, v5, :cond_39

    .line 718
    const/16 v1, -0x29

    goto :goto_2e

    .line 720
    :cond_39
    const/16 v5, 0x160

    if-ne p2, v5, :cond_3a

    .line 722
    const/16 v1, -0x2b

    goto :goto_2e

    .line 724
    :cond_3a
    const/16 v5, 0x161

    if-ne p2, v5, :cond_36

    .line 725
    const/16 v1, -0x2a

    goto :goto_2e

    .line 733
    .restart local v2       #i:I
    :cond_3b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "303"

    invoke-static {v1}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 738
    .end local v1           #errCode:I
    .end local v2           #i:I
    :sswitch_23
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_30
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 739
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 740
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3c

    .line 741
    const/16 v5, -0x18

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 738
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 748
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_24
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_31
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 749
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 750
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3d

    .line 751
    const/16 v5, -0x17

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 748
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 758
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_25
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_32
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 759
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 760
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3e

    .line 761
    const/16 v5, -0x25

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 758
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 768
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_26
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_33
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 769
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 770
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_3f

    .line 771
    const/16 v5, -0x16

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 768
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 778
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_27
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_34
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 779
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 780
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_40

    .line 781
    const/16 v5, -0x15

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 778
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 788
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_28
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_35
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 789
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 790
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_41

    .line 791
    const/16 v5, -0x14

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 788
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 798
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_29
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_36
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 799
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 800
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_42

    .line 801
    const/16 v5, -0x13

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 798
    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 808
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_37
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 809
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 810
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_43

    .line 811
    const/16 v5, -0x2d

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 808
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 818
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_38
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_45

    .line 819
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 820
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_44

    .line 821
    const/16 v5, -0x12

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 818
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 824
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_45
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "304"

    const/16 v7, -0x12

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 829
    .end local v2           #i:I
    :sswitch_2c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_39
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_47

    .line 830
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 831
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_46

    .line 832
    const/16 v5, -0x11

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 829
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 835
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_47
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "202"

    const/16 v7, -0x11

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 840
    .end local v2           #i:I
    :sswitch_2d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 841
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 842
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    if-eqz v3, :cond_48

    .line 843
    const/16 v5, -0x10

    const-string v6, "Bad Request"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 840
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 850
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_2e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->onBadRequest(I)V
    invoke-static {v5, p3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$1100(Lcom/samsung/commonimsservice/SamsungAPCommonService;I)V

    goto/16 :goto_0

    .line 855
    :sswitch_2f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 856
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 857
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 858
    if-eqz v3, :cond_49

    .line 859
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 860
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallBusy(I)V

    .line 855
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 868
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_30
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 869
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 870
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 871
    if-eqz v3, :cond_4a

    .line 872
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 873
    const/4 v5, -0x7

    const-string v6, "Called party not in LTE area"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 868
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 880
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_31
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 881
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 882
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 883
    if-eqz v3, :cond_4b

    .line 884
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 885
    const/16 v5, -0x2f

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 880
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 893
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_32
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 894
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 895
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 896
    if-eqz v3, :cond_4c

    .line 897
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 898
    const/16 v5, -0x34

    const-string v6, "Cannot connect call, Divert to normal call"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 893
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 905
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_33
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 906
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 907
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 908
    if-eqz v3, :cond_4d

    .line 909
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 910
    const/4 v5, -0x6

    const-string v6, "Called party does not exist"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 905
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 918
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_34
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_40
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 919
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 920
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 921
    if-eqz v3, :cond_4e

    .line 922
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 923
    const/16 v5, -0x2c

    const-string v6, "Called party has only VoLte Alternative Services"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 918
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 930
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_35
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_41
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 931
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 932
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 933
    if-eqz v3, :cond_4f

    .line 934
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 935
    const/16 v5, -0x22

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 930
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 943
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_36
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_42
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_51

    .line 944
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 945
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "reason code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 946
    if-eqz v3, :cond_50

    .line 947
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 948
    const/16 v5, -0x30

    invoke-virtual {p6}, Lcom/sec/android/internal/ims/IIMSParams;->getErrorReasonCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 943
    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 951
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_51
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "308"

    const/16 v7, -0x30

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 956
    .end local v2           #i:I
    :sswitch_37
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_43
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_53

    .line 957
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 958
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 959
    if-eqz v3, :cond_52

    .line 960
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 961
    const/16 v5, -0x27

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 956
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 964
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_53
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "301"

    const/16 v7, -0x27

    invoke-static {v7}, Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->writeErrorData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 970
    .end local v2           #i:I
    :sswitch_38
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_44
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 971
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 972
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 973
    if-eqz v3, :cond_54

    .line 974
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 975
    const/4 v5, -0x5

    const-string v6, "Call Failed"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 970
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 982
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_39
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_45
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 983
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 984
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 985
    if-eqz v3, :cond_55

    .line 986
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 987
    const/16 v5, 0x19f

    const-string v6, "Called party does not support media"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 982
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 994
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_46
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 995
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 996
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 997
    if-eqz v3, :cond_56

    .line 998
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 999
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallHeld(I)V

    .line 994
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1006
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_47
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1007
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1008
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1009
    if-eqz v3, :cond_57

    .line 1010
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1011
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallResumed(I)V

    .line 1006
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 1020
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_48
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1021
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1022
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1023
    if-eqz v3, :cond_58

    .line 1024
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1025
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onConferenceEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1020
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 1031
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_49
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1032
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1033
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1034
    if-eqz v3, :cond_59

    .line 1035
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1036
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->getCallType(II)I
    invoke-static {v5, p1, p4}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$800(Lcom/samsung/commonimsservice/SamsungAPCommonService;II)I

    move-result v5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1031
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 1043
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1044
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1045
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1046
    if-eqz v3, :cond_5a

    .line 1047
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1048
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCalling(I)V

    .line 1043
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 1055
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_3f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1056
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1057
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1058
    if-eqz v3, :cond_5b

    .line 1059
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1060
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1055
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1067
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_40
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1068
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1069
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1070
    if-eqz v3, :cond_5c

    .line 1071
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1072
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1067
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 1079
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_41
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1080
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1081
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1082
    if-eqz v3, :cond_5d

    .line 1083
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1084
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1079
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 1091
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_42
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1092
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1093
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1094
    if-eqz v3, :cond_5e

    .line 1095
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1096
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1091
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 1103
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_43
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1104
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1105
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1106
    if-eqz v3, :cond_5f

    .line 1107
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1108
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1103
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1115
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_44
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_50
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1116
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1117
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1118
    if-eqz v3, :cond_60

    .line 1119
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1120
    const/4 v5, 0x5

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1115
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 1127
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_45
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_51
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1128
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1129
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1130
    if-eqz v3, :cond_61

    .line 1131
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1133
    const/16 v5, 0x14e

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallSwitched(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1127
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 1140
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_46
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_52
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1141
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1142
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1143
    if-eqz v3, :cond_62

    .line 1144
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1146
    const/16 v5, 0x14d

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallSwitched(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1140
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 1153
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_47
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_53
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1154
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1155
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1156
    if-eqz v3, :cond_63

    .line 1157
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1158
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1153
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 1165
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_48
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_54
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1166
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1167
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1168
    if-eqz v3, :cond_64

    .line 1169
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1170
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1165
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 1177
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_49
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_55
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1178
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1179
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1180
    if-eqz v3, :cond_65

    .line 1181
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1182
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1177
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 1189
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4a
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_56
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1190
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1191
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1192
    if-eqz v3, :cond_66

    .line 1193
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1194
    const/4 v5, 0x2

    invoke-interface {v3, p3, v5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V

    .line 1189
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 1201
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4b
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_57
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1202
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1203
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1204
    if-eqz v3, :cond_67

    .line 1205
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1206
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1201
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1213
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4c
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_58
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1214
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1215
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1216
    if-eqz v3, :cond_68

    .line 1217
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1218
    const/4 v5, 0x3

    invoke-interface {v3, p3, v5, p5}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onChangeRequest(II[B)V

    .line 1213
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 1225
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4d
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_59
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1226
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1227
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1228
    if-eqz v3, :cond_69

    .line 1229
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1230
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoHeld(I)V

    .line 1225
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 1237
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4e
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5a
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1238
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1239
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1240
    if-eqz v3, :cond_6a

    .line 1241
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1242
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoResumed(I)V

    .line 1237
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 1249
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_4f
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5b
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1250
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1251
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1252
    if-eqz v3, :cond_6b

    .line 1253
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1254
    const/16 v5, 0x2bc

    const-string v6, "Upgrade/downgrade rejected"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1249
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 1260
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_50
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5c
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1261
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1262
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1263
    if-eqz v3, :cond_6c

    .line 1264
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1265
    const/16 v5, 0x2bd

    const-string v6, "Upgrade/downgrade rejected"

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1260
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 1272
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_51
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5d
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1273
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1274
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1275
    if-eqz v3, :cond_6d

    .line 1276
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1277
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "IMS_CALL_HOLD_FAILED_IND.."

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1278
    const/16 v5, 0x2be

    const-string v6, "Hold has failed "

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1272
    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 1284
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_52
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5e
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1285
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1286
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1287
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    const-string v6, "IMS_CALL_RETRIEVE_FAILED_IND..."

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1288
    if-eqz v3, :cond_6e

    .line 1289
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1290
    const/16 v5, 0x2bf

    const-string v6, "Resume has failed "

    invoke-interface {v3, p3, v5, v6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onError(IILjava/lang/String;)V

    .line 1284
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 1298
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :sswitch_53
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5f
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1299
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1300
    .restart local v3       #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1301
    if-eqz v3, :cond_6f

    .line 1302
    iget-object v5, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying listener["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1303
    invoke-interface {v3, p3}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onVideoAvailable(I)V

    .line 1298
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 1314
    .end local v2           #i:I
    .end local v3           #listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    :cond_70
    const-string v5, "SamsungAPCommonService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event listener invalid app type ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_8
        0x67 -> :sswitch_b
        0x68 -> :sswitch_9
        0x6d -> :sswitch_e
        0x6e -> :sswitch_c
        0x6f -> :sswitch_a
        0x70 -> :sswitch_d
        0x71 -> :sswitch_f
        0xca -> :sswitch_7
        0xcb -> :sswitch_3e
        0xcc -> :sswitch_14
        0xcd -> :sswitch_10
        0xcf -> :sswitch_15
        0xd0 -> :sswitch_3d
        0xd1 -> :sswitch_13
        0xd2 -> :sswitch_2b
        0xd4 -> :sswitch_2d
        0xd5 -> :sswitch_2e
        0xd6 -> :sswitch_29
        0xd7 -> :sswitch_33
        0xd8 -> :sswitch_30
        0xd9 -> :sswitch_2f
        0xda -> :sswitch_38
        0xdb -> :sswitch_36
        0xde -> :sswitch_1b
        0xe1 -> :sswitch_2c
        0xe4 -> :sswitch_16
        0xe5 -> :sswitch_17
        0xe6 -> :sswitch_18
        0xe7 -> :sswitch_19
        0xea -> :sswitch_1a
        0xeb -> :sswitch_37
        0xed -> :sswitch_1c
        0xee -> :sswitch_39
        0x107 -> :sswitch_51
        0x108 -> :sswitch_52
        0x109 -> :sswitch_3a
        0x10a -> :sswitch_3b
        0x12a -> :sswitch_3
        0x12b -> :sswitch_4
        0x12c -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_53
        0x12f -> :sswitch_21
        0x130 -> :sswitch_23
        0x131 -> :sswitch_24
        0x132 -> :sswitch_1f
        0x133 -> :sswitch_28
        0x134 -> :sswitch_26
        0x135 -> :sswitch_20
        0x136 -> :sswitch_30
        0x137 -> :sswitch_1d
        0x138 -> :sswitch_6
        0x139 -> :sswitch_5
        0x13d -> :sswitch_27
        0x13e -> :sswitch_35
        0x13f -> :sswitch_3c
        0x141 -> :sswitch_2a
        0x142 -> :sswitch_3c
        0x147 -> :sswitch_3c
        0x14b -> :sswitch_3f
        0x14c -> :sswitch_41
        0x14d -> :sswitch_46
        0x14e -> :sswitch_45
        0x14f -> :sswitch_4f
        0x150 -> :sswitch_50
        0x151 -> :sswitch_40
        0x152 -> :sswitch_49
        0x153 -> :sswitch_42
        0x154 -> :sswitch_47
        0x155 -> :sswitch_48
        0x156 -> :sswitch_4a
        0x157 -> :sswitch_43
        0x158 -> :sswitch_44
        0x159 -> :sswitch_4b
        0x15a -> :sswitch_4d
        0x15b -> :sswitch_4c
        0x15c -> :sswitch_4e
        0x15f -> :sswitch_0
        0x160 -> :sswitch_22
        0x161 -> :sswitch_22
        0x162 -> :sswitch_22
        0x163 -> :sswitch_22
        0x164 -> :sswitch_11
        0x165 -> :sswitch_34
        0x166 -> :sswitch_12
        0x167 -> :sswitch_1e
        0x168 -> :sswitch_31
        0x169 -> :sswitch_32
        0x16b -> :sswitch_25
    .end sparse-switch
.end method

.method public notifyEvent(IIII[I[Ljava/lang/String;)V
    .locals 5
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "participantList"
    .parameter "uriList"

    .prologue
    .line 1319
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMS event received EventType["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AppType ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Arg1 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Arg2 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]\n "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1321
    packed-switch p2, :pswitch_data_0

    .line 1335
    :cond_0
    return-void

    .line 1323
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1324
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    #getter for: Lcom/samsung/commonimsservice/SamsungAPCommonService;->mIMSCallStateListener:Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$700(Lcom/samsung/commonimsservice/SamsungAPCommonService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsservice/IIMSCallStateListener;

    .line 1325
    .local v1, listener:Lcom/samsung/commonimsservice/IIMSCallStateListener;
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1326
    if-eqz v1, :cond_1

    .line 1327
    iget-object v2, p0, Lcom/samsung/commonimsservice/SamsungAPCommonService$3;->this$0:Lcom/samsung/commonimsservice/SamsungAPCommonService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying listener["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/samsung/commonimsservice/SamsungAPCommonService;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/commonimsservice/SamsungAPCommonService;->access$200(Lcom/samsung/commonimsservice/SamsungAPCommonService;Ljava/lang/String;)V

    .line 1328
    invoke-interface {v1, p3, p5, p6}, Lcom/samsung/commonimsservice/IIMSCallStateListener;->onNotifyReceived(I[I[Ljava/lang/String;)V

    .line 1323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1321
    nop

    :pswitch_data_0
    .packed-switch 0x145
        :pswitch_0
    .end packed-switch
.end method
