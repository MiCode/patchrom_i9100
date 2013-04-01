.class abstract Lcom/sec/android/app/fm/MainActivity$Callback;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Callback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public earPhoneConnected()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public earPhoneDisconnected()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public notifyUI()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onChannelFound(J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 165
    return-void
.end method

.method public onOff(I)V
    .locals 0
    .parameter "reasonCode"

    .prologue
    .line 167
    return-void
.end method

.method public onOn()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onScanFinished([J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 171
    return-void
.end method

.method public onScanStarted()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onScanStopped([J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 175
    return-void
.end method

.method public onTune(J)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 177
    return-void
.end method
