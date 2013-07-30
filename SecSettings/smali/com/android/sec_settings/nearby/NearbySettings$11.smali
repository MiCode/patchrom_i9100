.class Lcom/android/sec_settings/nearby/NearbySettings$11;
.super Landroid/os/Handler;
.source "NearbySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/nearby/NearbySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/sec_settings/nearby/NearbySettings$11;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1165
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: handleMessage() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1184
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Undefined handler message :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1170
    :pswitch_0
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: HANDLER_RESET_FUNCTION_STATE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v1, p0, Lcom/android/sec_settings/nearby/NearbySettings$11;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    #getter for: Lcom/android/sec_settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/sec_settings/nearby/NearbySettings;->access$300(Lcom/android/sec_settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: handleMessage EXCEPTION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1174
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/sec_settings/nearby/NearbySettings$11;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    #getter for: Lcom/android/sec_settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/sec_settings/nearby/NearbySettings;->access$1400(Lcom/android/sec_settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/android/sec_settings/nearby/NearbySettings$11;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    #getter for: Lcom/android/sec_settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/sec_settings/nearby/NearbySettings;->access$1400(Lcom/android/sec_settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 1179
    :pswitch_2
    iget-object v1, p0, Lcom/android/sec_settings/nearby/NearbySettings$11;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    invoke-virtual {v1}, Lcom/android/sec_settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1180
    iget-object v1, p0, Lcom/android/sec_settings/nearby/NearbySettings$11;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    const/4 v2, 0x1

    #setter for: Lcom/android/sec_settings/nearby/NearbySettings;->bSelfFinish:Z
    invoke-static {v1, v2}, Lcom/android/sec_settings/nearby/NearbySettings;->access$2302(Lcom/android/sec_settings/nearby/NearbySettings;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1168
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
