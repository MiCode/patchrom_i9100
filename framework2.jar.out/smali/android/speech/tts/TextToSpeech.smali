.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$EngineInfo;,
        Landroid/speech/tts/TextToSpeech$Action;,
        Landroid/speech/tts/TextToSpeech$Connection;,
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$OnInitListener;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final ERROR:I = -0x1

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field public static final QUEUE_ADD:I = 0x1

.field static final QUEUE_DESTROY:I = 0x2

.field public static final QUEUE_FLUSH:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TextToSpeech"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentEngine:Ljava/lang/String;

.field private final mEarcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final mPackageName:Ljava/lang/String;

.field private final mParams:Landroid/os/Bundle;

.field private mRequestedEngine:Ljava/lang/String;

.field private mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final mStartLock:Ljava/lang/Object;

.field private final mUseFallback:Z

.field private volatile mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final mUtterances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "engine"

    .prologue
    .line 527
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 528
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "engine"
    .parameter "packageName"
    .parameter "useFallback"

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    .line 496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    .line 499
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 538
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 539
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 540
    iput-object p3, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    .line 541
    iput-boolean p5, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    .line 543
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    .line 545
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 547
    new-instance v0, Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 548
    if-eqz p4, :cond_0

    .line 549
    iput-object p4, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 553
    :goto_0
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    .line 554
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/speech/tts/TextToSpeech;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/speech/tts/TextToSpeech;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object v0
.end method

.method static synthetic access$202(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object p1
.end method

.method static synthetic access$302(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Landroid/speech/tts/TextToSpeech;Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->getParams(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$800(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    return-object v0
.end method

.method private connectToEngine(Ljava/lang/String;)Z
    .locals 7
    .parameter "engine"

    .prologue
    const/4 v3, 0x1

    .line 624
    new-instance v1, Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/speech/tts/TextToSpeech$Connection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$1;)V

    .line 625
    .local v1, connection:Landroid/speech/tts/TextToSpeech$Connection;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.TTS_SERVICE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 628
    .local v0, bound:Z
    if-nez v0, :cond_0

    .line 629
    const-string v3, "TextToSpeech"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v3, 0x0

    .line 633
    :goto_0
    return v3

    .line 632
    :cond_0
    const-string v4, "TextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sucessfully bound to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .parameter "bundle"
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1167
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1168
    .local v1, valueString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1170
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1171
    .local v0, value:F
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    .end local v0           #value:F
    :cond_0
    :goto_0
    return-void

    .line 1172
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .parameter "bundle"
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1155
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1156
    .local v1, valueString:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1158
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1159
    .local v0, value:I
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    .end local v0           #value:I
    :cond_0
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .parameter "bundle"
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1148
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1149
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {p1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :cond_0
    return-void
.end method

.method private dispatchOnInit(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 638
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 639
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 643
    :cond_0
    monitor-exit v1

    .line 644
    return-void

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCallerIdentity()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private getParams(Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 1118
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1119
    new-instance v0, Landroid/os/Bundle;

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1120
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "streamType"

    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1121
    const-string v4, "utteranceId"

    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1122
    const-string v4, "volume"

    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1123
    const-string v4, "pan"

    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1126
    const-string v4, "networkTts"

    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1127
    const-string v4, "embeddedTts"

    invoke-direct {p0, v0, p1, v4}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 1132
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1133
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1134
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1135
    .local v3, key:Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1143
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    :cond_2
    return-object v0
.end method

.method private initTts()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 576
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 577
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 578
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 579
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    iput-object v3, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 620
    :goto_0
    return v2

    .line 581
    :cond_0
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    if-nez v4, :cond_2

    .line 582
    iput-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 583
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    move v2, v3

    .line 584
    goto :goto_0

    .line 586
    :cond_1
    iget-boolean v4, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    if-nez v4, :cond_2

    .line 587
    const-string v2, "TextToSpeech"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested engine not installed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iput-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 589
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    move v2, v3

    .line 590
    goto :goto_0

    .line 595
    :cond_2
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, defaultEngine:Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 597
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 598
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    goto :goto_0

    .line 605
    :cond_3
    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, highestRanked:Ljava/lang/String;
    if-eqz v1, :cond_4

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 608
    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 609
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    goto :goto_0

    .line 618
    :cond_4
    iput-object v6, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 619
    invoke-direct {p0, v3}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    move v2, v3

    .line 620
    goto :goto_0
.end method

.method private makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .parameter "packageName"
    .parameter "resourceId"

    .prologue
    .line 788
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, action:Landroid/speech/tts/TextToSpeech$Action;,"Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, errorResult:Ljava/lang/Object;,"TR;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter "method"
    .parameter "reconnect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, action:Landroid/speech/tts/TextToSpeech$Action;,"Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, errorResult:Ljava/lang/Object;,"TR;"
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    if-nez v0, :cond_0

    .line 567
    const-string v0, "TextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed: not bound to TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    monitor-exit v1

    .line 570
    .end local p2           #errorResult:Ljava/lang/Object;,"TR;"
    :goto_0
    return-object p2

    .restart local p2       #errorResult:Ljava/lang/Object;,"TR;"
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeech$Connection;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #errorResult:Ljava/lang/Object;,"TR;"
    monitor-exit v1

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action",
            "<TR;>;TR;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, action:Landroid/speech/tts/TextToSpeech$Action;,"Landroid/speech/tts/TextToSpeech$Action<TR;>;"
    .local p2, errorResult:Ljava/lang/Object;,"TR;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "earcon"
    .parameter "filename"

    .prologue
    .line 781
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 782
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .parameter "earcon"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    .line 759
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 760
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "text"
    .parameter "filename"

    .prologue
    .line 726
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 727
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .parameter "text"
    .parameter "packagename"
    .parameter "resourceId"

    .prologue
    .line 704
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public areDefaultsEnforced()Z
    .locals 1

    .prologue
    .line 1244
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentEngine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEngines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures(Ljava/util/Locale;)Ljava/util/Set;
    .locals 3
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    new-instance v0, Landroid/speech/tts/TextToSpeech$5;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$5;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    const/4 v1, 0x0

    const-string v2, "getFeatures"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getLanguage()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 1059
    new-instance v0, Landroid/speech/tts/TextToSpeech$9;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$9;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "getLanguage"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 3
    .parameter "loc"

    .prologue
    .line 1081
    new-instance v0, Landroid/speech/tts/TextToSpeech$10;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$10;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isLanguageAvailable"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isSpeaking()Z
    .locals 3

    .prologue
    .line 928
    new-instance v0, Landroid/speech/tts/TextToSpeech$6;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$6;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isSpeaking"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 3
    .parameter "earcon"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 849
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/speech/tts/TextToSpeech$3;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeech$3;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILjava/util/HashMap;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "playEarcon"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .locals 6
    .parameter "durationInMs"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 880
    .local p4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/speech/tts/TextToSpeech$4;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech$4;-><init>(Landroid/speech/tts/TextToSpeech;JILjava/util/HashMap;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "playSilence"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .locals 1
    .parameter "enginePackageName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1224
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    .line 1225
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .locals 3
    .parameter "loc"

    .prologue
    .line 1021
    new-instance v0, Landroid/speech/tts/TextToSpeech$8;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$8;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "setLanguage"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1190
    invoke-static {p1}, Landroid/speech/tts/UtteranceProgressListener;->from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 1191
    const/4 v0, 0x0

    return v0
.end method

.method public setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I
    .locals 1
    .parameter "listener"

    .prologue
    .line 1205
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 1206
    const/4 v0, 0x0

    return v0
.end method

.method public setPitch(F)I
    .locals 4
    .parameter "pitch"

    .prologue
    .line 987
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 988
    const/high16 v1, 0x42c8

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 989
    .local v0, intPitch:I
    if-lez v0, :cond_0

    .line 990
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 991
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v3, "pitch"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 992
    monitor-exit v2

    .line 993
    const/4 v1, 0x0

    .line 996
    .end local v0           #intPitch:I
    :goto_0
    return v1

    .line 992
    .restart local v0       #intPitch:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 996
    .end local v0           #intPitch:I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setSpeechRate(F)I
    .locals 4
    .parameter "speechRate"

    .prologue
    .line 963
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 964
    const/high16 v1, 0x42c8

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 965
    .local v0, intRate:I
    if-lez v0, :cond_0

    .line 966
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v2

    .line 967
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v3, "rate"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 968
    monitor-exit v2

    .line 969
    const/4 v1, 0x0

    .line 972
    .end local v0           #intRate:I
    :goto_0
    return v1

    .line 968
    .restart local v0       #intRate:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 972
    .end local v0           #intRate:I
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 656
    new-instance v0, Landroid/speech/tts/TextToSpeech$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$1;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "shutdown"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 674
    return-void
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 3
    .parameter "text"
    .parameter "queueMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 815
    .local p3, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/speech/tts/TextToSpeech$2;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/speech/tts/TextToSpeech$2;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILjava/util/HashMap;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "speak"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public stop()I
    .locals 3

    .prologue
    .line 943
    new-instance v0, Landroid/speech/tts/TextToSpeech$7;

    invoke-direct {v0, p0}, Landroid/speech/tts/TextToSpeech$7;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stop"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 3
    .parameter "text"
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1108
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/speech/tts/TextToSpeech$11;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/speech/tts/TextToSpeech$11;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "synthesizeToFile"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public tryReconnectIfDead()V
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    :cond_0
    return-void
.end method
