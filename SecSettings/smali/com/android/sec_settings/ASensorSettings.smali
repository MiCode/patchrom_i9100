.class public Lcom/android/sec_settings/ASensorSettings;
.super Landroid/app/Activity;
.source "ASensorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/ASensorSettings$1;,
        Lcom/android/sec_settings/ASensorSettings$setHandler;,
        Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;,
        Lcom/android/sec_settings/ASensorSettings$handlersensor;
    }
.end annotation


# static fields
.field private static BackgroundPaint:Landroid/graphics/Paint;

.field static ani_count:I

.field static ani_gap_x:F

.field static ani_gap_y:F

.field private static circlePaint:Landroid/graphics/Paint;

.field private static sampleCount:I

.field static sampleData_x:F

.field static sampleData_y:F


# instance fields
.field private CENTER_X:I

.field private CENTER_Y:I

.field private CIRCLE_RADIUS:I

.field private ICON_RADIUS:I

.field private btn_cal:Landroid/widget/Button;

.field private drawView:Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mBackgroundRadian:I

.field mHandler:Lcom/android/sec_settings/ASensorSettings$setHandler;

.field private mHorizontalLine:I

.field mSensorListner:Lcom/android/sec_settings/ASensorSettings$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mVerticalLine:I

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I

    .line 70
    const/16 v0, 0x172

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I

    .line 71
    iput v1, p0, Lcom/android/sec_settings/ASensorSettings;->mHorizontalLine:I

    .line 72
    iput v1, p0, Lcom/android/sec_settings/ASensorSettings;->mVerticalLine:I

    .line 73
    iput v1, p0, Lcom/android/sec_settings/ASensorSettings;->mBackgroundRadian:I

    .line 75
    const/16 v0, 0x25

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I

    .line 76
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings;->CIRCLE_RADIUS:I

    .line 403
    return-void
.end method

.method static synthetic access$1000()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/sec_settings/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/sec_settings/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings;->mHorizontalLine:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/sec_settings/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings;->mVerticalLine:I

    return v0
.end method

.method static synthetic access$1300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/sec_settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/sec_settings/ASensorSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/sec_settings/ASensorSettings;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/sec_settings/ASensorSettings;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/sec_settings/ASensorSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/sec_settings/ASensorSettings;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/sec_settings/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput p0, Lcom/android/sec_settings/ASensorSettings;->sampleCount:I

    return p0
.end method

.method static synthetic access$304()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/sec_settings/ASensorSettings;->sampleCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/sec_settings/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 54
    sget v0, Lcom/android/sec_settings/ASensorSettings;->sampleCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/sec_settings/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/ASensorSettings;)Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->drawView:Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/sec_settings/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/sec_settings/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/sec_settings/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings;->CIRCLE_RADIUS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/sec_settings/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings;->mBackgroundRadian:I

    return v0
.end method

.method private diplayCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 268
    const v1, 0x7f0908bb

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 270
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    return-void
.end method

.method private getIconRadius()I
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/sec_settings/ASensorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020306

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    .local v0, iconBall:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 116
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ASensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 117
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 119
    const v0, 0x7f0b001e

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 123
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->text:Landroid/widget/TextView;

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/sec_settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    .line 126
    sget-object v0, Lcom/android/sec_settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    sget-object v0, Lcom/android/sec_settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    sget-object v0, Lcom/android/sec_settings/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/sec_settings/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    .line 130
    sget-object v0, Lcom/android/sec_settings/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    sget-object v0, Lcom/android/sec_settings/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    sget-object v0, Lcom/android/sec_settings/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    return-void
.end method

.method private writeToFile()V
    .locals 6

    .prologue
    .line 141
    const-string v4, "ASensorSettings"

    const-string v5, "Start calibration"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v2, 0x0

    .line 145
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/sec/gsensorcal/calibration"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    const/16 v4, 0x31

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 152
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 161
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "ASensorSettings"

    const-string v5, "File not found!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 157
    :catch_2
    move-exception v1

    .line 158
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method public dpToPixel(I)F
    .locals 4
    .parameter "dp"

    .prologue
    .line 306
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 307
    .local v0, outMetris:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/sec_settings/ASensorSettings;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 308
    int-to-float v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v2, v3

    .line 309
    .local v1, pixel:F
    return v1
.end method

.method public getLcdHeight()I
    .locals 3

    .prologue
    .line 279
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/ASensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 280
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 281
    .local v1, height:I
    return v1
.end method

.method public getLcdWidth()I
    .locals 3

    .prologue
    .line 273
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/ASensorSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 274
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 275
    .local v1, width:I
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/android/sec_settings/ASensorSettings;->writeToFile()V

    .line 167
    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/sec_settings/ASensorSettings;->mSensorListner:Lcom/android/sec_settings/ASensorSettings$handlersensor;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 170
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 171
    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings;->mHandler:Lcom/android/sec_settings/ASensorSettings$setHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/sec_settings/ASensorSettings$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b001e
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x32

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/sec_settings/ASensorSettings;->getLcdWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I

    .line 96
    invoke-virtual {p0}, Lcom/android/sec_settings/ASensorSettings;->getLcdHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/ASensorSettings;->dpToPixel(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I

    .line 97
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings;->CENTER_X:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings;->mHorizontalLine:I

    .line 98
    iget v0, p0, Lcom/android/sec_settings/ASensorSettings;->CENTER_Y:I

    mul-int/lit8 v0, v0, 0x42

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings;->mVerticalLine:I

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/sec_settings/ASensorSettings;->dpToPixel(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings;->mBackgroundRadian:I

    .line 100
    invoke-direct {p0}, Lcom/android/sec_settings/ASensorSettings;->getIconRadius()I

    move-result v0

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings;->ICON_RADIUS:I

    .line 101
    const/16 v0, 0x10b

    iput v0, p0, Lcom/android/sec_settings/ASensorSettings;->CIRCLE_RADIUS:I

    .line 103
    new-instance v0, Lcom/android/sec_settings/ASensorSettings$setHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/sec_settings/ASensorSettings$setHandler;-><init>(Lcom/android/sec_settings/ASensorSettings;Lcom/android/sec_settings/ASensorSettings$1;)V

    iput-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->mHandler:Lcom/android/sec_settings/ASensorSettings$setHandler;

    .line 105
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ASensorSettings;->setContentView(I)V

    .line 106
    new-instance v0, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;

    invoke-direct {v0, p0, p0}, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;-><init>(Lcom/android/sec_settings/ASensorSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->drawView:Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;

    .line 107
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/ASensorSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    .line 108
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings;->drawView:Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    invoke-direct {p0}, Lcom/android/sec_settings/ASensorSettings;->init()V

    .line 111
    new-instance v0, Lcom/android/sec_settings/ASensorSettings$handlersensor;

    invoke-direct {v0, p0, v3}, Lcom/android/sec_settings/ASensorSettings$handlersensor;-><init>(Lcom/android/sec_settings/ASensorSettings;Lcom/android/sec_settings/ASensorSettings$1;)V

    iput-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->mSensorListner:Lcom/android/sec_settings/ASensorSettings$handlersensor;

    .line 112
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings;->mSensorListner:Lcom/android/sec_settings/ASensorSettings$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->mHandler:Lcom/android/sec_settings/ASensorSettings$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/ASensorSettings$setHandler;->removeMessages(I)V

    .line 199
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->mHandler:Lcom/android/sec_settings/ASensorSettings$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/ASensorSettings$setHandler;->removeMessages(I)V

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 201
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    sput v3, Lcom/android/sec_settings/ASensorSettings;->sampleCount:I

    .line 180
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->drawView:Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->drawView:Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;

    const/4 v1, 0x1

    #calls: Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/sec_settings/ASensorSettings$ASensorSettingsView;I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->text:Landroid/widget/TextView;

    const v1, 0x7f0908b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/sec_settings/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/sec_settings/ASensorSettings;->mSensorListner:Lcom/android/sec_settings/ASensorSettings$handlersensor;

    iget-object v2, p0, Lcom/android/sec_settings/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 191
    return-void
.end method
