.class public abstract Landroid/view/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowOrientationListener$SensorEventListenerImpl;,
        Landroid/view/WindowOrientationListener$SContextListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final localLOGV:Z

.field private static mfdforSContextRotation:Lcom/sec/android/facedetection/FaceDetectionManager;

.field private static sCurrentAppAngle:I

.field private static sCurrentAppOrientation:I

.field private static sCurrentRotation:I


# instance fields
.field private mContext:Landroid/content/Context;

.field mCurrentRotation:I

.field private mEnabled:Z

.field mLogEnabled:Z

.field private mRate:I

.field private mSContextAutoRotationListener:Landroid/view/WindowOrientationListener$SContextListenerImpl;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mbResultFaceDectection:Z

.field private mbSContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, -0x1

    sput v0, Landroid/view/WindowOrientationListener;->sCurrentAppAngle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;I)V

    .line 100
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "rate"

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v4, p0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 116
    .local v1, packageMgr:Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    .line 117
    iput-object p1, p0, Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 118
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 119
    iget-boolean v2, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_1

    .line 121
    const-string/jumbo v2, "scontext"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 122
    new-instance v2, Landroid/view/WindowOrientationListener$SContextListenerImpl;

    invoke-direct {v2, p0}, Landroid/view/WindowOrientationListener$SContextListenerImpl;-><init>(Landroid/view/WindowOrientationListener;)V

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSContextAutoRotationListener:Landroid/view/WindowOrientationListener$SContextListenerImpl;

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string/jumbo v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 127
    iput p2, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 128
    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 129
    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2}, Landroid/hardware/SensorManager;->getSupportedFunction()I

    move-result v0

    .line 130
    .local v0, nfeature:I
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    and-int/lit8 v2, v0, 0x2

    if-ne v2, v5, :cond_4

    .line 133
    :cond_2
    if-ne p2, v4, :cond_3

    .line 134
    iput v5, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 141
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    .line 144
    new-instance v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v2, p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;-><init>(Landroid/view/WindowOrientationListener;I)V

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_0

    .line 138
    :cond_4
    if-ne p2, v4, :cond_3

    .line 139
    const/4 v2, 0x3

    iput v2, p0, Landroid/view/WindowOrientationListener;->mRate:I

    goto :goto_1
.end method

.method static synthetic access$100(Landroid/view/WindowOrientationListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 66
    sget v0, Landroid/view/WindowOrientationListener;->sCurrentAppAngle:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput p0, Landroid/view/WindowOrientationListener;->sCurrentAppAngle:I

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 66
    sget v0, Landroid/view/WindowOrientationListener;->sCurrentAppOrientation:I

    return v0
.end method

.method static synthetic access$400()Lcom/sec/android/facedetection/FaceDetectionManager;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/view/WindowOrientationListener;->mfdforSContextRotation:Lcom/sec/android/facedetection/FaceDetectionManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/facedetection/FaceDetectionManager;)Lcom/sec/android/facedetection/FaceDetectionManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Landroid/view/WindowOrientationListener;->mfdforSContextRotation:Lcom/sec/android/facedetection/FaceDetectionManager;

    return-object p0
.end method

.method public static getCurrentRotation()I
    .locals 1

    .prologue
    .line 1152
    sget v0, Landroid/view/WindowOrientationListener;->sCurrentRotation:I

    return v0
.end method

.method public static setCurrentAppOrientation(I)V
    .locals 0
    .parameter "appOrientation"

    .prologue
    .line 1147
    sput p0, Landroid/view/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 1148
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 251
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    if-eqz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 187
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSContextAutoRotationListener:Landroid/view/WindowOrientationListener$SContextListenerImpl;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 195
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_2
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 199
    const-string v0, "WindowOrientationListener"

    const-string v1, "WindowOrientationListener disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 201
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    #calls: Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V
    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->access$000(Landroid/view/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_0
.end method

.method public enable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    const-string v0, "WindowOrientationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable register mbSContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSContextAutoRotationListener:Landroid/view/WindowOrientationListener$SContextListenerImpl;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;II)Z

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iput-boolean v3, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 171
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 172
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_2
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 176
    const-string v0, "WindowOrientationListener"

    const-string v1, "WindowOrientationListener enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/WindowOrientationListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_0
.end method

.method public getProposedRotation()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 226
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    if-eqz v1, :cond_1

    .line 227
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSContextAutoRotationListener:Landroid/view/WindowOrientationListener$SContextListenerImpl;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SContextListenerImpl;->getProposedRotation()I

    move-result v0

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 230
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 232
    const-string v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProposedRotation facedetection :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotation()I

    move-result v0

    goto :goto_0
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public setCurrentRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 213
    iput p1, p0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 214
    sput p1, Landroid/view/WindowOrientationListener;->sCurrentRotation:I

    .line 215
    return-void
.end method

.method public setFaceDetectionResult(Z)V
    .locals 0
    .parameter "ResultFaceDectection"

    .prologue
    .line 244
    iput-boolean p1, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 245
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 277
    iput-boolean p1, p0, Landroid/view/WindowOrientationListener;->mLogEnabled:Z

    .line 278
    return-void
.end method
