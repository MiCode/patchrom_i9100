.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemVibrator$MagnitudeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    .line 34
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    .line 36
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 206
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 207
    const-string v1, "Vibrator"

    const-string v2, "Vibrator.cancel()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMaxMagnitude()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 187
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return v0

    .line 190
    :cond_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->getMaxMagnitude()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 67
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return v0

    .line 71
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->hasVibrator()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public resetMagnitude()V
    .locals 1

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0}, Landroid/os/IVibratorService;->resetMagnitude()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMagnitude(I)V
    .locals 1
    .parameter "magnitude"

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->setMagnitude(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrate(J)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 56
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/SystemVibrator;->vibrate(JI)V

    .line 57
    return-void
.end method

.method public vibrate(JI)V
    .locals 3
    .parameter "milliseconds"
    .parameter "magnitude"

    .prologue
    .line 84
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 85
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2, p3}, Landroid/os/IVibratorService;->vibrateMagnitude(JLandroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public vibrate(JLandroid/os/SystemVibrator$MagnitudeType;)V
    .locals 3
    .parameter "milliseconds"
    .parameter "magnitudeType"

    .prologue
    .line 96
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_0

    .line 97
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v1, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {p3}, Landroid/os/SystemVibrator$MagnitudeType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IVibratorService;->vibrateMagnitudeType(JLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrate([JI)V
    .locals 3
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 126
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 127
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_0
    return-void

    .line 133
    :cond_0
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IVibratorService;->vibratePattern([JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public vibrate([JII)V
    .locals 3
    .parameter "pattern"
    .parameter "repeat"
    .parameter "magnitude"

    .prologue
    .line 145
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 146
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 152
    :cond_0
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 154
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, p2, v2, p3}, Landroid/os/IVibratorService;->vibratePatternByMagnitude([JILandroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 159
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V
    .locals 4
    .parameter "pattern"
    .parameter "repeat"
    .parameter "magnitudeType"

    .prologue
    .line 166
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_0

    .line 167
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 173
    :cond_0
    array-length v1, p1

    if-ge p2, v1, :cond_1

    .line 175
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {p3}, Landroid/os/SystemVibrator$MagnitudeType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/os/IVibratorService;->vibratePatternByMagnitudeType([JILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 180
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public vibrateCall(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->vibrateCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateImmVibe(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 214
    sget-object v0, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {p0, p1, v0}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 215
    return-void
.end method

.method public vibrateImmVibe(II)V
    .locals 1
    .parameter "type"
    .parameter "magnitude"

    .prologue
    .line 219
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1, p2}, Landroid/os/IVibratorService;->vibrateImmVibe(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V
    .locals 2
    .parameter "type"
    .parameter "magnitudeType"

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-virtual {p2}, Landroid/os/SystemVibrator$MagnitudeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/os/IVibratorService;->vibrateImmVibeMagnitudeType(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateImmVibe([B)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 232
    sget-object v0, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {p0, p1, v0}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    .line 233
    return-void
.end method

.method public vibrateImmVibe([BI)V
    .locals 1
    .parameter "pattern"
    .parameter "magnitude"

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1, p2}, Landroid/os/IVibratorService;->vibrateImmVibePattern([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V
    .locals 2
    .parameter "pattern"
    .parameter "magnitudeType"

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-virtual {p2}, Landroid/os/SystemVibrator$MagnitudeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/os/IVibratorService;->vibrateImmVibePatternMagnitudeType([BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public vibrateNotification(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->vibrateNotification(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method
