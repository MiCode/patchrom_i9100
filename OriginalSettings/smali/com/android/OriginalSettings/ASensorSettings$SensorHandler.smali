.class Lcom/android/OriginalSettings/ASensorSettings$SensorHandler;
.super Ljava/lang/Object;
.source "ASensorSettings.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/ASensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/ASensorSettings;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/ASensorSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/OriginalSettings/ASensorSettings$SensorHandler;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/ASensorSettings;Lcom/android/OriginalSettings/ASensorSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/ASensorSettings$SensorHandler;-><init>(Lcom/android/OriginalSettings/ASensorSettings;)V

    return-void
.end method

.method private changeAcceleroMeter(Landroid/hardware/Sensor;[F)V
    .locals 8
    .parameter "sensor"
    .parameter "values"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    const/4 v2, 0x3

    new-array v0, v2, [F

    .line 198
    .local v0, data:[F
    const/high16 v1, 0x4120

    .line 200
    .local v1, m_Rev_Convert:F
    aget v2, p2, v4

    cmpg-float v2, v2, v6

    if-gez v2, :cond_0

    .line 201
    aget v2, p2, v4

    aget v3, p2, v4

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    neg-float v2, v2

    aput v2, v0, v4

    .line 205
    :goto_0
    aget v2, p2, v5

    cmpg-float v2, v2, v6

    if-gez v2, :cond_1

    .line 206
    aget v2, p2, v5

    aget v3, p2, v5

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    neg-float v2, v2

    aput v2, v0, v5

    .line 211
    :goto_1
    invoke-static {}, Lcom/android/OriginalSettings/ASensorSettings;->access$300()I

    move-result v2

    if-nez v2, :cond_2

    .line 212
    aget v2, v0, v4

    sput v2, Lcom/android/OriginalSettings/ASensorSettings;->mSampleDataX:F

    .line 213
    aget v2, v0, v5

    sput v2, Lcom/android/OriginalSettings/ASensorSettings;->mSampleDataY:F

    .line 214
    invoke-static {}, Lcom/android/OriginalSettings/ASensorSettings;->access$308()I

    .line 226
    :goto_2
    return-void

    .line 203
    :cond_0
    aget v2, p2, v4

    aget v3, p2, v4

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    aput v2, v0, v4

    goto :goto_0

    .line 208
    :cond_1
    aget v2, p2, v5

    aget v3, p2, v5

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    aput v2, v0, v5

    goto :goto_1

    .line 216
    :cond_2
    invoke-static {}, Lcom/android/OriginalSettings/ASensorSettings;->access$304()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_3

    .line 217
    sget v2, Lcom/android/OriginalSettings/ASensorSettings;->mSampleDataX:F

    aget v3, v0, v4

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    sput v2, Lcom/android/OriginalSettings/ASensorSettings;->mSampleDataX:F

    .line 218
    sget v2, Lcom/android/OriginalSettings/ASensorSettings;->mSampleDataY:F

    aget v3, v0, v5

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    sput v2, Lcom/android/OriginalSettings/ASensorSettings;->mSampleDataY:F

    goto :goto_2

    .line 221
    :cond_3
    invoke-static {v4}, Lcom/android/OriginalSettings/ASensorSettings;->access$302(I)I

    .line 222
    iget-object v2, p0, Lcom/android/OriginalSettings/ASensorSettings$SensorHandler;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->mDrawView:Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/OriginalSettings/ASensorSettings;->access$400(Lcom/android/OriginalSettings/ASensorSettings;)Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    sget v3, Lcom/android/OriginalSettings/ASensorSettings;->mSampleDataX:F

    sget v4, Lcom/android/OriginalSettings/ASensorSettings;->mSampleDataY:F

    invoke-virtual {v2, v3, v4}, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->setPoint(FF)V

    .line 223
    iget-object v2, p0, Lcom/android/OriginalSettings/ASensorSettings$SensorHandler;->this$0:Lcom/android/OriginalSettings/ASensorSettings;

    #getter for: Lcom/android/OriginalSettings/ASensorSettings;->mDrawView:Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;
    invoke-static {v2}, Lcom/android/OriginalSettings/ASensorSettings;->access$400(Lcom/android/OriginalSettings/ASensorSettings;)Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/OriginalSettings/ASensorSettings$ASensorSettingsView;->invalidate()V

    goto :goto_2
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 184
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 187
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/ASensorSettings$SensorHandler;->changeAcceleroMeter(Landroid/hardware/Sensor;[F)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
