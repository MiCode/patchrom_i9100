.class public Lcom/samsung/voiceshell/VoiceEngine;
.super Ljava/lang/Object;
.source "VoiceEngine.java"


# static fields
.field public static final AL_ENROLL:I = 0x0

.field public static final AL_VERIFY:I = 0x1

.field public static final VR_RECOGNITON:I = 0x2

.field public static isEarMic:I = 0x0

.field private static isRunningAdaptation:Z = false

.field private static isRunningVoiceEngine:Z = false

.field public static final typeDefine:Ljava/lang/String; = "/data/data/com.vlingo.midas/typeDefine.bin"


# instance fields
.field public final ROOT:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private m_UBMpath:Ljava/lang/String;

.field public m_UBMpath_default:Ljava/lang/String;

.field private volatile m_engineMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/samsung/voiceshell/VoiceEngine;->isRunningVoiceEngine:Z

    .line 44
    sput-boolean v0, Lcom/samsung/voiceshell/VoiceEngine;->isRunningAdaptation:Z

    .line 52
    sput v0, Lcom/samsung/voiceshell/VoiceEngine;->isEarMic:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    .line 46
    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    .line 47
    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath_default:Ljava/lang/String;

    .line 49
    const-string v0, "/data/data/com.vlingo.midas/"

    iput-object v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    .line 53
    const-string v0, "VoiceEngine"

    iput-object v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    const-string v1, "VoiceEngine"

    const-string v2, "Trying to load libSamsungVoiceEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v1, "SamsungVoiceEngine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 120
    const-string v1, "VoiceEngine"

    const-string v2, "Loading libSamsungVoiceEngine.so done"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 123
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 125
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "VoiceEngine"

    const-string v2, "WARNING: Could not load libSamsungVoiceEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public native checkFileExistence(Ljava/lang/String;I[I)I
.end method

.method public native computeEnergyFrame([SII)I
.end method

.method public native consistencyCheckEnroll(Ljava/lang/String;S)I
.end method

.method public native functionAssignment(Ljava/lang/String;[II)I
.end method

.method public getIsRunningAdaptation()Z
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    sget-boolean v0, Lcom/samsung/voiceshell/VoiceEngine;->isRunningAdaptation:Z

    monitor-exit p0

    return v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIsRunningVoiceEngine()Z
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    sget-boolean v0, Lcom/samsung/voiceshell/VoiceEngine;->isRunningVoiceEngine:Z

    monitor-exit p0

    return v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    return v0
.end method

.method public native getModelStatus(Ljava/lang/String;S)I
.end method

.method public native initializeDRC()I
.end method

.method public native initializeEnroll(Ljava/lang/String;)I
.end method

.method public native initializeNS()I
.end method

.method public native initializeVerify(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native performContinuousAdaptation(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public processBuffer([SILjava/lang/String;[S[S)I
    .locals 8
    .parameter "recordBuffer"
    .parameter "readLength"
    .parameter "ROOT"
    .parameter "frameLeft"
    .parameter "CommandType"

    .prologue
    .line 59
    const/4 v7, 0x0

    .line 61
    .local v7, iResult:I
    iget v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    sget v1, Lcom/samsung/voiceshell/VoiceEngine;->isEarMic:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/voiceshell/VoiceEngine;->processVerifyFrame(I[SILjava/lang/String;[S[S)I

    move-result v7

    .line 70
    :goto_0
    return v7

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/voiceshell/VoiceEngine;->store1chPCM([SI)I

    move-result v7

    .line 68
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public native processDRC([SI)I
.end method

.method public native processEnroll(Ljava/lang/String;S[S)I
.end method

.method public native processNSFrame([SI)I
.end method

.method public native processVerify(I)I
.end method

.method public native processVerifyFrame(I[SILjava/lang/String;[S[S)I
.end method

.method public setAdaptationModelPath(Ljava/lang/String;)V
    .locals 3
    .parameter "UBMpath"

    .prologue
    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iput-object p1, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningAdaptation m_UBMpath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIsRunningAdaptation(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    sput-boolean p1, Lcom/samsung/voiceshell/VoiceEngine;->isRunningAdaptation:Z

    .line 97
    iget-object v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningAdaptation mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIsRunningVoiceEngine(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    sput-boolean p1, Lcom/samsung/voiceshell/VoiceEngine;->isRunningVoiceEngine:Z

    .line 84
    iget-object v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningVoiceEngine mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 74
    iput p1, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    .line 75
    return-void
.end method

.method public native setModelStatus(Ljava/lang/String;IS)I
.end method

.method public native startVerify()I
.end method

.method public native store1chPCM([SI)I
.end method

.method public native terminateEnroll()I
.end method

.method public native terminateVerify()I
.end method
