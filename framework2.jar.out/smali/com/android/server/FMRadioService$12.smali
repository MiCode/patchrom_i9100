.class Lcom/android/server/FMRadioService$12;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    const/4 v3, 0x0

    .line 700
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 701
    .local v0, motion:I
    packed-switch v0, :pswitch_data_0

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 703
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mIsMute:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$1000(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 704
    const-string v1, "FLIP_TOP_TO_BOTTOM : mute"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/android/server/FMRadioService$12;->this$0:Lcom/android/server/FMRadioService;

    #getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$500(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 701
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
