.class Lcom/android/settings/GSensorSettings$setHandler;
.super Landroid/os/Handler;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorSettings;Lcom/android/settings/GSensorSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$setHandler;-><init>(Lcom/android/settings/GSensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4248

    const-wide/16 v6, 0x32

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 397
    new-array v1, v4, [F

    .line 398
    .local v1, position:[F
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 399
    .local v0, message:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 444
    :goto_0
    return-void

    .line 401
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1200(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0908b3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 402
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getPoint([F)[F

    .line 403
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v2, v4}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 404
    aget v2, v1, v9

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_X:I
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$300(Lcom/android/settings/GSensorSettings;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    sput v2, Lcom/android/settings/GSensorSettings;->ani_gap_x:F

    .line 405
    aget v2, v1, v5

    iget-object v3, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->CENTER_Y:I
    invoke-static {v3}, Lcom/android/settings/GSensorSettings;->access$500(Lcom/android/settings/GSensorSettings;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    sput v2, Lcom/android/settings/GSensorSettings;->ani_gap_y:F

    .line 406
    const/16 v2, 0x32

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    .line 407
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/GSensorSettings;->ani_count:I

    invoke-virtual {v2, v3}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setImage(I)V

    .line 408
    iput v4, v0, Landroid/os/Message;->what:I

    .line 409
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 410
    invoke-virtual {p0, v5}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    goto :goto_0

    .line 413
    :pswitch_1
    sget v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    if-ltz v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/GSensorSettings;->ani_count:I

    invoke-virtual {v2, v3}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->setImage(I)V

    .line 415
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    .line 416
    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 417
    iput v4, v0, Landroid/os/Message;->what:I

    .line 418
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 421
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 422
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/settings/GSensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 423
    const/16 v2, 0x32

    sput v2, Lcom/android/settings/GSensorSettings;->ani_count:I

    goto/16 :goto_0

    .line 427
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/GSensorSettings$setHandler;->removeMessages(I)V

    .line 428
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1400(Lcom/android/settings/GSensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->runGyroCalibration(I)I

    move-result v2

    sput v2, Lcom/android/settings/GSensorSettings;->file:I

    .line 430
    const-string v2, "GSensorSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animation end -- file ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/GSensorSettings;->file:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {v9}, Lcom/android/settings/GSensorSettings;->access$1502(I)I

    .line 432
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v2, v5}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V

    .line 433
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1200(Lcom/android/settings/GSensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0908b2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 434
    sget v2, Lcom/android/settings/GSensorSettings;->file:I

    if-lez v2, :cond_1

    .line 435
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #calls: Lcom/android/settings/GSensorSettings;->diplayCompleted()V
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1600(Lcom/android/settings/GSensorSettings;)V

    .line 439
    :goto_1
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #getter for: Lcom/android/settings/GSensorSettings;->drawView:Lcom/android/settings/GSensorSettings$GSensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1300(Lcom/android/settings/GSensorSettings;)Lcom/android/settings/GSensorSettings$GSensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->invalidate()V

    goto/16 :goto_0

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/android/settings/GSensorSettings$setHandler;->this$0:Lcom/android/settings/GSensorSettings;

    #calls: Lcom/android/settings/GSensorSettings;->diplayError()V
    invoke-static {v2}, Lcom/android/settings/GSensorSettings;->access$1700(Lcom/android/settings/GSensorSettings;)V

    goto :goto_1

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
