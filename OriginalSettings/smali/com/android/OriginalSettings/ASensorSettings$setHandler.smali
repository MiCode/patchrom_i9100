.class Lcom/android/settings/ASensorSettings$setHandler;
.super Landroid/os/Handler;
.source "ASensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "setHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ASensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ASensorSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ASensorSettings;Lcom/android/settings/ASensorSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/android/settings/ASensorSettings$setHandler;-><init>(Lcom/android/settings/ASensorSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/high16 v4, 0x4220

    const-wide/16 v8, 0x32

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 405
    new-array v1, v6, [F

    .line 406
    .local v1, position:[F
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 408
    .local v0, message:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 454
    :goto_0
    return-void

    .line 410
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1400(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0908ba

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 411
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->getPoint([F)[F

    .line 412
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v2, v6}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    .line 413
    aget v2, v1, v5

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_X:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$500(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sput v2, Lcom/android/settings/ASensorSettings;->ani_gap_x:F

    .line 414
    aget v2, v1, v7

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->CENTER_Y:I
    invoke-static {v3}, Lcom/android/settings/ASensorSettings;->access$700(Lcom/android/settings/ASensorSettings;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    sput v2, Lcom/android/settings/ASensorSettings;->ani_gap_y:F

    .line 415
    const/16 v2, 0x28

    sput v2, Lcom/android/settings/ASensorSettings;->ani_count:I

    .line 417
    iput v6, v0, Landroid/os/Message;->what:I

    .line 418
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 419
    invoke-virtual {p0, v7}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    goto :goto_0

    .line 423
    :pswitch_1
    sget v2, Lcom/android/settings/ASensorSettings;->ani_count:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/settings/ASensorSettings;->ani_count:I

    if-ltz v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/settings/ASensorSettings;->ani_gap_x:F

    sget v4, Lcom/android/settings/ASensorSettings;->ani_count:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sget v4, Lcom/android/settings/ASensorSettings;->ani_gap_y:F

    neg-float v4, v4

    sget v5, Lcom/android/settings/ASensorSettings;->ani_count:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->setPoint(FF)V

    .line 427
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->invalidate()V

    .line 428
    invoke-virtual {p0, v6}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    .line 429
    iput v6, v0, Landroid/os/Message;->what:I

    .line 430
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    .line 433
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 434
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/settings/ASensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 435
    const/16 v2, 0x28

    sput v2, Lcom/android/settings/ASensorSettings;->ani_count:I

    goto/16 :goto_0

    .line 440
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/settings/ASensorSettings$setHandler;->removeMessages(I)V

    .line 442
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1600(Lcom/android/settings/ASensorSettings;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    iget-object v3, v3, Lcom/android/settings/ASensorSettings;->mSensorListner:Lcom/android/settings/ASensorSettings$handlersensor;

    iget-object v4, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;
    invoke-static {v4}, Lcom/android/settings/ASensorSettings;->access$1500(Lcom/android/settings/ASensorSettings;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 445
    invoke-static {v5}, Lcom/android/settings/ASensorSettings;->access$302(I)I

    .line 446
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->drawView:Lcom/android/settings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$400(Lcom/android/settings/ASensorSettings;)Lcom/android/settings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    #calls: Lcom/android/settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v2, v7}, Lcom/android/settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings/ASensorSettings$ASensorSettingsView;I)V

    .line 447
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #getter for: Lcom/android/settings/ASensorSettings;->text:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1400(Lcom/android/settings/ASensorSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0908b9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 449
    iget-object v2, p0, Lcom/android/settings/ASensorSettings$setHandler;->this$0:Lcom/android/settings/ASensorSettings;

    #calls: Lcom/android/settings/ASensorSettings;->diplayCompleted()V
    invoke-static {v2}, Lcom/android/settings/ASensorSettings;->access$1700(Lcom/android/settings/ASensorSettings;)V

    goto/16 :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
