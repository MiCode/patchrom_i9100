.class Lcom/sec/android/app/fm/NotificationReceiver$3;
.super Lcom/samsung/media/fmradio/FMEventListener;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/NotificationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private offCode:I

.field final synthetic this$0:Lcom/sec/android/app/fm/NotificationReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/NotificationReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public earPhoneDisconnected()V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->offCode:I

    .line 299
    return-void
.end method

.method public onAFReceived(J)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 168
    return-void
.end method

.method public onAFStarted()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onOff(I)V
    .locals 8
    .parameter "reasonCode"

    .prologue
    const-wide/32 v6, 0x1d4c0

    const/4 v5, 0x0

    .line 221
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[NotificationReceiver] onOff"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 223
    const-string v1, " NotificationReceiver "

    const-string v2, " onOff start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 225
    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    .line 227
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[NotificationReceiver] paused"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #calls: Lcom/sec/android/app/fm/NotificationReceiver;->sendOFFBroadcast()V
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$700(Lcom/sec/android/app/fm/NotificationReceiver;)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    if-eqz v1, :cond_2

    .line 233
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification()V

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 238
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 239
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    invoke-static {}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->cancel()V

    .line 290
    :goto_0
    return-void

    .line 248
    :cond_3
    iget v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->offCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 250
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    if-nez v1, :cond_4

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    .line 252
    :cond_4
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 253
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->mEarphoneToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 255
    :cond_5
    iput v5, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->offCode:I

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V

    goto :goto_0

    .line 263
    :cond_7
    const/4 v1, 0x4

    if-ne p1, v1, :cond_9

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->removeNotification()V

    goto :goto_0

    .line 269
    :cond_9
    const/16 v1, 0xa

    if-ne p1, v1, :cond_b

    .line 270
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    if-nez v1, :cond_a

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0018

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0062

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    .line 272
    :cond_a
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->toastTvout:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 274
    :cond_b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 275
    .restart local v0       #msg:Landroid/os/Message;
    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/fm/FMNotificationManager;->isNotified:Z

    if-eqz v1, :cond_d

    .line 280
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_d

    .line 281
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification()V

    .line 283
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #calls: Lcom/sec/android/app/fm/NotificationReceiver;->sendOFFBroadcast()V
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$700(Lcom/sec/android/app/fm/NotificationReceiver;)V

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 288
    :cond_e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Notification Receiver on Off"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/sec/android/app/fm/ui/MyProgressDialog;->cancel()V

    goto/16 :goto_0
.end method

.method public onOn()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 174
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[NotificationReceiver] onOn"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    iput v5, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->offCode:I

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$000(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/fm/NotificationReceiver;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #calls: Lcom/sec/android/app/fm/NotificationReceiver;->sendONBroadcast()V
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$300(Lcom/sec/android/app/fm/NotificationReceiver;)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #calls: Lcom/sec/android/app/fm/NotificationReceiver;->getCurrentChannel()F
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$400(Lcom/sec/android/app/fm/NotificationReceiver;)F

    move-result v1

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/fm/FMNotificationManager;->updatePlayButtonState(Z)V

    .line 183
    const/high16 v0, -0x4080

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_4

    .line 184
    const-string v0, ""

    .line 185
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 186
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 191
    :cond_1
    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 192
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 194
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_3
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v0

    const/16 v3, 0x32

    if-ne v0, v3, :cond_5

    .line 198
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.2f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :goto_0
    const-string v0, " MHz"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/fm/NotificationReceiver;->access$600(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/fm/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 212
    return-void

    .line 200
    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "freq"
    .parameter "channelName"
    .parameter "radioText"

    .prologue
    const/4 v5, 0x0

    .line 357
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 358
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #calls: Lcom/sec/android/app/fm/NotificationReceiver;->getCurrentChannel()F
    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$400(Lcom/sec/android/app/fm/NotificationReceiver;)F

    move-result v1

    .line 359
    .local v1, mFreq:F
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 362
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    const-string v4, "com.sec.android.app.fm.MainActivity"

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 366
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 367
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const-string v3, ""

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 369
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 373
    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 380
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #mFreq:F
    .end local v2           #strBuilder:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public onTune(J)V
    .locals 8
    .parameter "frequency"

    .prologue
    const/4 v7, 0x0

    .line 307
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    iget-object v3, v3, Lcom/sec/android/app/fm/NotificationReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    iget-object v3, v3, Lcom/sec/android/app/fm/NotificationReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 309
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/app/fm/NotificationReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 312
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #calls: Lcom/sec/android/app/fm/NotificationReceiver;->getCurrentChannel()F
    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$400(Lcom/sec/android/app/fm/NotificationReceiver;)F

    move-result v1

    .line 323
    .local v1, mFreq:F
    const/high16 v3, -0x4080

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_5

    .line 324
    const-string v0, ""

    .line 325
    .local v0, curChName:Ljava/lang/String;
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 326
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v3

    iget-object v0, v3, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 330
    :cond_1
    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/MainActivity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 331
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 333
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_3
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_6

    .line 337
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :goto_0
    const-string v3, " MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/fm/FMNotificationManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/FMNotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/sec/android/app/fm/FMNotificationManager;->showNotification(Ljava/lang/String;Z)V

    .line 345
    .end local v2           #strBuilder:Ljava/lang/StringBuilder;
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    const/high16 v4, 0x447a

    mul-float/2addr v4, v1

    float-to-long v4, v4

    #setter for: Lcom/sec/android/app/fm/NotificationReceiver;->mCurrentChannel:J
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/fm/NotificationReceiver;->access$802(Lcom/sec/android/app/fm/NotificationReceiver;J)J

    .line 347
    iget-object v3, p0, Lcom/sec/android/app/fm/NotificationReceiver$3;->this$0:Lcom/sec/android/app/fm/NotificationReceiver;

    #getter for: Lcom/sec/android/app/fm/NotificationReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/fm/NotificationReceiver;->access$500(Lcom/sec/android/app/fm/NotificationReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sec/android/app/fm/MainActivity;->saveCurrentFreq(Landroid/content/Context;F)V

    .line 351
    .end local v0           #curChName:Ljava/lang/String;
    :cond_5
    return-void

    .line 339
    .restart local v0       #curChName:Ljava/lang/String;
    .restart local v2       #strBuilder:Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
