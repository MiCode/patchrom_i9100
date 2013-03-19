.class Lcom/android/settings/motion2013/AirMotionSettings$1;
.super Landroid/os/Handler;
.source "AirMotionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/AirMotionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionSettings$1;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$1;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings/motion2013/AirMotionSettings;->updateAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$000(Lcom/android/settings/motion2013/AirMotionSettings;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
