.class public Lcom/samsung/voiceshell/VoiceEngineWrapper;
.super Ljava/lang/Object;
.source "VoiceEngineWrapper.java"


# static fields
.field private static uniqueInstance:Lcom/samsung/voiceshell/VoiceEngine;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/voiceshell/VoiceEngine;
    .locals 3

    .prologue
    .line 12
    const-class v1, Lcom/samsung/voiceshell/VoiceEngineWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/voiceshell/VoiceEngineWrapper;->uniqueInstance:Lcom/samsung/voiceshell/VoiceEngine;

    if-nez v0, :cond_0

    .line 14
    const-string v0, "VoiceEngineWrapper"

    const-string v2, "getInstance() : make new VoiceEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, Lcom/samsung/voiceshell/VoiceEngine;->init()V

    .line 17
    new-instance v0, Lcom/samsung/voiceshell/VoiceEngine;

    invoke-direct {v0}, Lcom/samsung/voiceshell/VoiceEngine;-><init>()V

    sput-object v0, Lcom/samsung/voiceshell/VoiceEngineWrapper;->uniqueInstance:Lcom/samsung/voiceshell/VoiceEngine;

    .line 24
    :goto_0
    sget-object v0, Lcom/samsung/voiceshell/VoiceEngineWrapper;->uniqueInstance:Lcom/samsung/voiceshell/VoiceEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :cond_0
    :try_start_1
    const-string v0, "VoiceEngineWrapper"

    const-string v2, "getInstance() : get existed VoiceEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
