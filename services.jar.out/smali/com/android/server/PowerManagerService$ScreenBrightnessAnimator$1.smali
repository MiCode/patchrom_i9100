.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 2930
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2932
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v9, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessAnimator:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    move-result-object v10

    monitor-enter v10

    .line 2933
    :try_start_0
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v9, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$7400(Lcom/android/server/PowerManagerService;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v9, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)Z

    move-result v9

    if-nez v9, :cond_0

    move v0, v1

    .line 2936
    .local v0, brightnessMode:I
    :cond_0
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v11, 0xa

    if-ne v9, v11, :cond_7

    .line 2937
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2938
    .local v4, mask:I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 2939
    .local v8, value:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2940
    .local v6, tStart:J
    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_1

    .line 2942
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v9, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$7600(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v9

    invoke-virtual {v9, v8, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 2944
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v2, v11, v6

    .line 2945
    .local v2, elapsed:J
    and-int/lit8 v9, v4, 0x4

    if-eqz v9, :cond_2

    .line 2946
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v9, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$7700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2948
    :cond_2
    and-int/lit8 v9, v4, 0x8

    if-eqz v9, :cond_3

    .line 2949
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v9, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$7800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 2952
    :cond_3
    const-wide/16 v11, 0x64

    cmp-long v9, v2, v11

    if-lez v9, :cond_4

    .line 2953
    const-string v9, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Excessive delay setting brightness: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms, mask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :cond_4
    const-wide/16 v11, 0x10

    cmp-long v9, v2, v11

    if-gez v9, :cond_5

    const/16 v1, 0x10

    .line 2959
    .local v1, delay:I
    :cond_5
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iput v8, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    .line 2960
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    const/4 v11, 0x0

    #calls: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V
    invoke-static {v9, v4, v11, v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$7900(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V

    .line 2965
    .end local v1           #delay:I
    .end local v2           #elapsed:J
    .end local v4           #mask:I
    .end local v6           #tStart:J
    .end local v8           #value:I
    :cond_6
    :goto_0
    monitor-exit v10

    .line 2966
    return-void

    .line 2961
    :cond_7
    iget v9, p1, Landroid/os/Message;->what:I

    const/16 v11, 0xb

    if-ne v9, v11, :cond_6

    .line 2962
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2963
    .local v5, mode:I
    iget-object v9, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v9, v9, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->nativeStartSurfaceFlingerAnimation(I)V
    invoke-static {v9, v5}, Lcom/android/server/PowerManagerService;->access$8000(Lcom/android/server/PowerManagerService;I)V

    goto :goto_0

    .line 2965
    .end local v0           #brightnessMode:I
    .end local v5           #mode:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method
