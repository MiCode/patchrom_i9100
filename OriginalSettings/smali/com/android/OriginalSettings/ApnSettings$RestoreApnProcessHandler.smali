.class Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/OriginalSettings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "looper"
    .parameter "restoreApnUiHandler"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    .line 362
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 363
    iput-object p3, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    .line 364
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 368
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 380
    :goto_0
    return-void

    .line 370
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 371
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/OriginalSettings/ApnSettings;->access$400()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 373
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CSC_MODEM_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v1, wbamr_intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/OriginalSettings/ApnSettings;

    const-string v3, "MODE"

    const-string v4, "SET_MODEM_INFO"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/ApnSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    iget-object v2, p0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
