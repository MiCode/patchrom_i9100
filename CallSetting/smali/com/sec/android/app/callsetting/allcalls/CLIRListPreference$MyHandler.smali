.class Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;-><init>(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;)V

    return-void
.end method

.method private handleGetCLIRResponse(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 195
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 197
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v7, :cond_0

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    #calls: Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->deleteBusyDialog()V
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->access$300(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;)V

    .line 205
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->clirArray:[I

    .line 206
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 207
    const-string v3, "CLIRListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCLIRResponse: ar.exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    invoke-virtual {v3}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "clir_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 210
    .local v2, clirModeIndex:I
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->responseResult(I)V

    .line 225
    .end local v2           #clirModeIndex:I
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 213
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    invoke-virtual {v3}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "clir_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 214
    .restart local v2       #clirModeIndex:I
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->responseResult(I)V

    goto :goto_0

    .line 216
    .end local v2           #clirModeIndex:I
    :cond_3
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 217
    .local v1, clirArray:[I
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 220
    const-string v3, "CLIRListPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCLIRResponse: CLIR successfully queried, clirArray[0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clirArray[1]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_0
.end method

.method private handleSetCLIRResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 228
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 230
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "CLIRListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCallWaitingResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    const-string v1, "CLIRListPreference"

    const-string v2, "handleSetCallWaitingResponse: re get"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "clir_mode"

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mSelectedCLIRValue:I
    invoke-static {v3}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->access$100(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->this$0:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 240
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 186
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->handleGetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->handleSetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
