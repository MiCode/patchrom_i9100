.class public Lcom/vlingo/client/phrasespotter/SensoryJNI;
.super Ljava/lang/Object;
.source "SensoryJNI.java"


# static fields
.field public static GRAMMAR_FORMALITY_DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/vlingo/client/phrasespotter/SensoryJNI;->GRAMMAR_FORMALITY_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    const-string v1, "SensoryJNI"

    const-string v2, "Trying to load libWakeUpSensory.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "WakeUpSensory"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 84
    const-string v1, "SensoryJNI"

    const-string v2, "Loading libWakeUpSensory.so done"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 87
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 89
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SensoryJNI"

    const-string v2, "WARNING: Could not load libWakeUpSensory.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public native Initialize(Ljava/lang/String;Ljava/lang/String;IFFFFLjava/lang/String;I)Z
.end method

.method public native MakeReady()Z
.end method

.method public native ProcessShortArray([SI)I
.end method
