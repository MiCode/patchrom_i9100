.class Lcom/android/settings/flipfont/FontListPreference$2;
.super Landroid/os/Handler;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipfont/FontListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mThreadIsAlive:Z
    invoke-static {v1}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings/flipfont/FontListPreference;->access$300(Lcom/android/settings/flipfont/FontListPreference;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getDialogFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings/flipfont/FontListPreference;->mProgressDlgAlive:Z
    invoke-static {v1, v2}, Lcom/android/settings/flipfont/FontListPreference;->access$402(Lcom/android/settings/flipfont/FontListPreference;Z)Z

    .line 227
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 230
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v1}, Lcom/android/settings/flipfont/FontListPreference;->dismiss()V

    .line 231
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/flipfont/FontListPreference;->showDialog(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    const-string v1, "FontListPreference"

    const-string v2, "mHandler There is a Bad Token "

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 238
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v1}, Lcom/android/settings/flipfont/FontListPreference;->dismiss()V

    .line 239
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v1}, Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v1}, Lcom/android/settings/flipfont/FontListPreference;->dismiss()V

    goto :goto_0

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/flipfont/FontListPreference;->mProgressDlgAlive:Z
    invoke-static {v1, v2}, Lcom/android/settings/flipfont/FontListPreference;->access$402(Lcom/android/settings/flipfont/FontListPreference;Z)Z

    .line 251
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v1}, Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()V

    .line 253
    :cond_2
    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage mThreadIsAlive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mThreadIsAlive:Z
    invoke-static {v3}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
