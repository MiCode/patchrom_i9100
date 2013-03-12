.class Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;
.super Ljava/lang/Object;
.source "RawSensorRunner.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/RawSensorRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 204
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->sysTime:J

    .line 170
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v1, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->timeStamp:J

    .line 172
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->accelerometer:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 173
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->accelerometer:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 174
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->accelerometer:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 175
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v1, v1

    iput v1, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->accAccuracy:F

    .line 177
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    sget v1, Landroid/hardware/contextaware/CAEvent;->RAW_SENSOR:I

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v2}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->notifyListener(ILandroid/hardware/contextaware/IContextBundle;)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->orientation:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 181
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->orientation:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 182
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->orientation:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 183
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v1, v1

    iput v1, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->oriAccuracy:F

    goto/16 :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->magnetic:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 187
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->magnetic:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 188
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->magnetic:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 189
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v1, v1

    iput v1, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->magAccuracy:F

    goto/16 :goto_0

    .line 192
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->gyroscope:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 193
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->gyroscope:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 194
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->gyroscope:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 195
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/RawSensorRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    move-result-object v0

    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    int-to-float v1, v1

    iput v1, v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->gyroAccuracy:F

    goto/16 :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
