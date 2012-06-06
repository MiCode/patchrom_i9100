.class Lcom/android/OriginalSettings/IccLockSettings$1;
.super Landroid/os/Handler;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/OriginalSettings/IccLockSettings$1;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 117
    .local v0, ar:Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 120
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_0

    .line 121
    const-string v2, "IccLockSettings"

    const-string v4, "mHandler, /ENABLE_ICC_PIN_COMPLETE/ : GENERIC_FAILURE"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$1;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #calls: Lcom/android/OriginalSettings/IccLockSettings;->iccLockNotAllowed()V
    invoke-static {v2}, Lcom/android/OriginalSettings/IccLockSettings;->access$000(Lcom/android/OriginalSettings/IccLockSettings;)V

    .line 128
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings$1;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    #getter for: Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/OriginalSettings/IccLockSettings;->access$200(Lcom/android/OriginalSettings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 124
    :cond_0
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHandler, ce is null or ar.exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v4, p0, Lcom/android/OriginalSettings/IccLockSettings$1;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_1

    move v2, v3

    :cond_1
    #calls: Lcom/android/OriginalSettings/IccLockSettings;->iccLockChanged(Z)V
    invoke-static {v4, v2}, Lcom/android/OriginalSettings/IccLockSettings;->access$100(Lcom/android/OriginalSettings/IccLockSettings;Z)V

    goto :goto_1

    .line 132
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :pswitch_1
    iget-object v4, p0, Lcom/android/OriginalSettings/IccLockSettings$1;->this$0:Lcom/android/OriginalSettings/IccLockSettings;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    :goto_2
    #calls: Lcom/android/OriginalSettings/IccLockSettings;->iccPinChanged(Z)V
    invoke-static {v4, v3}, Lcom/android/OriginalSettings/IccLockSettings;->access$300(Lcom/android/OriginalSettings/IccLockSettings;Z)V

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_2

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
