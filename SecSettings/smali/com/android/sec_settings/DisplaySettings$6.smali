.class Lcom/android/sec_settings/DisplaySettings$6;
.super Landroid/os/Handler;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/sec_settings/DisplaySettings$6;->this$0:Lcom/android/sec_settings/DisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 276
    :goto_0
    return-void

    .line 273
    :pswitch_0
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings$6;->this$0:Lcom/android/sec_settings/DisplaySettings;

    #calls: Lcom/android/sec_settings/DisplaySettings;->updateAnimation()V
    invoke-static {v0}, Lcom/android/sec_settings/DisplaySettings;->access$500(Lcom/android/sec_settings/DisplaySettings;)V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
