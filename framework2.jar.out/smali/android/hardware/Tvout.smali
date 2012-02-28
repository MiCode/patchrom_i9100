.class public Landroid/hardware/Tvout;
.super Ljava/lang/Object;
.source "Tvout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tvout_Java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "tvout_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "Tvout_Java"

    const-string v1, "Tvout +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {p0}, Landroid/hardware/Tvout;->_native_setup()V

    .line 32
    const-string v0, "Tvout_Java"

    const-string v1, "Tvout -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method private native _TvoutGetCableStatus()Z
.end method

.method private native _TvoutGetResolution()I
.end method

.method private native _TvoutGetStatus()Z
.end method

.method private native _TvoutGetSubtitleStatus()Z
.end method

.method private native _TvoutGetSuspendStatus()Z
.end method

.method private native _TvoutPostSubtitle(Ljava/lang/String;I)Z
.end method

.method private native _TvoutPostSuspend(Ljava/lang/String;)Z
.end method

.method private native _TvoutSetCableStatus(Z)Z
.end method

.method private native _TvoutSetDefaultString(Ljava/lang/String;)Z
.end method

.method private native _TvoutSetOutputMode(I)Z
.end method

.method private native _TvoutSetResolution(I)Z
.end method

.method private native _TvoutSetStatus(Z)Z
.end method

.method private native _TvoutSetSubtitleStatus(Z)Z
.end method

.method private native _TvoutSetSuspendStatus(Z)Z
.end method

.method private final native _native_setup()V
.end method

.method private final native _release()V
.end method


# virtual methods
.method public TvoutGetCableStatus()Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetCableStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetResolution()I
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetResolution()I

    move-result v0

    return v0
.end method

.method public TvoutGetStatus()Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetSubtitleStatus()Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetSubtitleStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetSuspendStatus()Z
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetSuspendStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutPostSubtitle(Ljava/lang/String;I)Z
    .locals 1
    .parameter "strSubtitle"
    .parameter "nFontSize"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/hardware/Tvout;->_TvoutPostSubtitle(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public TvoutPostSuspend(Ljava/lang/String;)Z
    .locals 1
    .parameter "strSuspend"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutPostSuspend(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public TvoutSetCableStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetCableStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetDefaultString(Ljava/lang/String;)Z
    .locals 1
    .parameter "strDefault"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetDefaultString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public TvoutSetOutputMode(I)Z
    .locals 1
    .parameter "nOutputMode"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetResolution(I)Z
    .locals 1
    .parameter "nResolution"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetResolution(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetSubtitleStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetSubtitleStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetSuspendStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetSuspendStatus(Z)Z

    move-result v0

    return v0
.end method
