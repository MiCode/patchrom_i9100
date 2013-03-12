.class public interface abstract Lcom/samsung/commonimsservice/IIMSCallStateListener;
.super Ljava/lang/Object;
.source "IIMSCallStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/commonimsservice/IIMSCallStateListener$State;,
        Lcom/samsung/commonimsservice/IIMSCallStateListener$IMSErrorCode;
    }
.end annotation


# static fields
.field public static final CALL_TYPE_AUDIO:I = 0x2

.field public static final CALL_TYPE_HDVIDEO:I = 0x5

.field public static final CALL_TYPE_QCIFVIDEO:I = 0x1

.field public static final CALL_TYPE_QVGAVIDEO:I = 0x8

.field public static final CALL_TYPE_QVGA_PORTRAIT:I = 0x9

.field public static final CALL_TYPE_VIDEO_CONFERENCE:I = 0x7

.field public static final CALL_TYPE_VIDEO_SHARE:I = 0x3

.field public static final CAPTURE_TYPE_FAR_END:I = 0x1

.field public static final CAPTURE_TYPE_NEAR_END:I = 0x0

.field public static final INBOUND_ONLY_VIDEO_CALL:I = 0x4

.field public static final INVALID_DATA:I = -0x1


# virtual methods
.method public abstract onCallBusy(I)V
.end method

.method public abstract onCallEnded(I)V
.end method

.method public abstract onCallEnded(II)V
.end method

.method public abstract onCallEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V
.end method

.method public abstract onCallHeld(I)V
.end method

.method public abstract onCallResumed(I)V
.end method

.method public abstract onCallSwitched(IILcom/sec/android/internal/ims/IIMSParams;)V
.end method

.method public abstract onCalling(I)V
.end method

.method public abstract onCameraEvent(IZ)V
.end method

.method public abstract onCameraStartFailure(I)V
.end method

.method public abstract onCaptureFailure(IZ)V
.end method

.method public abstract onCaptureSuccess(IZLjava/lang/String;)V
.end method

.method public abstract onChangeRequest(II[B)V
.end method

.method public abstract onConferenceEstablished(IILcom/sec/android/internal/ims/IIMSParams;)V
.end method

.method public abstract onEarlyMediaStart(IILcom/sec/android/internal/ims/IIMSParams;)V
.end method

.method public abstract onError(IILjava/lang/String;)V
.end method

.method public abstract onNotifyReceived(I[I[Ljava/lang/String;)V
.end method

.method public abstract onRinging(ILjava/lang/String;I)V
.end method

.method public abstract onRinging(ILjava/lang/String;Lcom/sec/android/internal/ims/IIMSParams;I)V
.end method

.method public abstract onRingingBack(I)V
.end method

.method public abstract onVideoAvailable(I)V
.end method

.method public abstract onVideoHeld(I)V
.end method

.method public abstract onVideoResumed(I)V
.end method

.method public abstract stopAlertTone(I)V
.end method
