.class public Lcom/samsung/media/fmradio/FMEventListener;
.super Ljava/lang/Object;
.source "FMEventListener.java"


# static fields
.field private static final EVENT_AF_RECEIVED:I = 0xe

.field private static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field private static final EVENT_RDS_EVENT:I = 0xa

.field private static final EVENT_REC_FINISH:I = 0x11

.field private static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field private static final EVENT_VOLUME_LOCK:I = 0xf


# instance fields
.field callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/samsung/media/fmradio/FMEventListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/media/fmradio/FMEventListener$1;-><init>(Lcom/samsung/media/fmradio/FMEventListener;)V

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener;->callback:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .line 191
    new-instance v0, Lcom/samsung/media/fmradio/FMEventListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/media/fmradio/FMEventListener$2;-><init>(Lcom/samsung/media/fmradio/FMEventListener;)V

    iput-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public earPhoneConnected()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public earPhoneDisconnected()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onAFReceived(J)V
    .locals 0
    .parameter "freq"

    .prologue
    .line 86
    return-void
.end method

.method public onAFStarted()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onChannelFound(J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 28
    return-void
.end method

.method public onOff(I)V
    .locals 0
    .parameter "reasonCode"

    .prologue
    .line 48
    return-void
.end method

.method public onOn()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onRDSDisabled()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onRDSEnabled()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "freq"
    .parameter "channelName"
    .parameter "radioText"

    .prologue
    .line 66
    return-void
.end method

.method public onRTPlusReceived(IIIIII)V
    .locals 0
    .parameter "contentType1"
    .parameter "startPos1"
    .parameter "additionalLen1"
    .parameter "contentType2"
    .parameter "startPos2"
    .parameter "additionalLen2"

    .prologue
    .line 70
    return-void
.end method

.method public onScanFinished([J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 40
    return-void
.end method

.method public onScanStarted()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onScanStopped([J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 36
    return-void
.end method

.method public onTune(J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 52
    return-void
.end method

.method public recFinish()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public volumeLock()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
