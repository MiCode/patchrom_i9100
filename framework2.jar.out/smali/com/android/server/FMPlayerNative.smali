.class public Lcom/android/server/FMPlayerNative;
.super Ljava/lang/Object;
.source "FMPlayerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMPlayerNative$RTPlusData;,
        Lcom/android/server/FMPlayerNative$RDSData;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static mService:Lcom/android/server/FMRadioService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    const-string v2, "fmradio_jni"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "FMRadio lib loaded"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/FMRadioService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sput-object p1, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    .line 25
    return-void
.end method

.method public static notifyAFDataReceived(J)V
    .locals 3
    .parameter "af"

    .prologue
    .line 75
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAFDataReceived :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 78
    :cond_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xe

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static notifyAFStarted()V
    .locals 3

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isAFEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, "NotifyAFStarted :"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static notifyRDSEvent(Lcom/android/server/FMPlayerNative$RDSData;)V
    .locals 2
    .parameter "ob"

    .prologue
    .line 41
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got Events :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 45
    :cond_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static notifyRTPlusEvent(Lcom/android/server/FMPlayerNative$RTPlusData;)V
    .locals 2
    .parameter "ob"

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    invoke-virtual {v0}, Lcom/android/server/FMRadioService;->isRDSEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-boolean v0, Lcom/android/server/FMPlayerNative;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got notifyRTPlusEvents :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 55
    :cond_1
    sget-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public native cancelAFSwitching()V
.end method

.method public native cancelSeek()V
.end method

.method public native disableAF()V
.end method

.method public native disableRDS()V
.end method

.method public native enableAF()V
.end method

.method public native enableRDS()V
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FMPlayerNative;->mService:Lcom/android/server/FMRadioService;

    .line 31
    return-void
.end method

.method public native getAFValid_th()I
.end method

.method public native getAF_th()I
.end method

.method public native getCnt_th()I
.end method

.method public native getCurrentChannel()J
.end method

.method public native getCurrentRSSI()J
.end method

.method public native getMaxVolume()J
.end method

.method public native getRSSI_th()I
.end method

.method public native getSNR_th()I
.end method

.method public native getVolume()J
.end method

.method public native muteOff()V
.end method

.method public native muteOn()V
.end method

.method public native off()V
.end method

.method public native on()J
.end method

.method public native searchAll()J
.end method

.method public native searchDown()J
.end method

.method public native searchUp()J
.end method

.method public native seekDown()J
.end method

.method public native seekUp()J
.end method

.method public native setAFValid_th(I)V
.end method

.method public native setAF_th(I)V
.end method

.method public native setBand(I)V
.end method

.method public native setChannelSpacing(I)V
.end method

.method public native setCnt_th(I)V
.end method

.method public native setDEConstant(J)V
.end method

.method public native setFMIntenna(Z)V
.end method

.method public native setMono()V
.end method

.method public native setRSSI_th(I)V
.end method

.method public native setRecordMode(I)V
.end method

.method public native setSNR_th(I)V
.end method

.method public native setSeekRSSI(J)V
.end method

.method public native setSeekSNR(J)V
.end method

.method public native setSpeakerOn(Z)V
.end method

.method public native setStereo()V
.end method

.method public native setVolume(J)V
.end method

.method public native tune(J)V
.end method
