.class public interface abstract Lcom/samsung/commonimsservice/ICommonIMSService;
.super Ljava/lang/Object;
.source "ICommonIMSService.java"


# virtual methods
.method public abstract acceptChangeRequest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract addUserForConferenceCall(ILjava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract answerCall(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract answerCallAudioOnly(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract cancelCall(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract captureSurfaceImage(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract changeCall(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract continueVideo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract deRegisterForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
.end method

.method public abstract deRegisterForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
.end method

.method public abstract deRegisterForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
.end method

.method public abstract deinitSurface(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract downgradeCall(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract endCall(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract endCall(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract getCurrentLatchedNetwork()Ljava/lang/String;
.end method

.method public abstract getMaxVolume(I)I
.end method

.method public abstract holdCall(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract holdVideo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract isDeviceOnEHRPD()Z
.end method

.method public abstract isDeviceOnLTE()Z
.end method

.method public abstract isFrontCamInUse()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract isIMSEnabledOnWifi()Z
.end method

.method public abstract isImsForbidden()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract isMuted(I)Z
.end method

.method public abstract makeMediaCall(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract registerForCallStateListener(Lcom/samsung/commonimsservice/IIMSCallStateListener;)V
.end method

.method public abstract registerForRegStateListener(Lcom/samsung/commonimsservice/IIMSRegisterStateListener;)V
.end method

.method public abstract registerForServiceConnectionListener(Lcom/samsung/commonimsservice/IImsServiceConnectionListener;)V
.end method

.method public abstract rejectCall(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract rejectCall(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract rejectChangeRequest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract resetCameraID()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract resumeCall(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract sendDtmf(II)Z
.end method

.method public abstract sendLiveVideo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract sendStillImage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract setAudioMode(I)V
.end method

.method public abstract setAutoResponse(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract setCameraOrientation(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract setDisplay(ILandroid/view/SurfaceHolder;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract setSpeakerMode(IZ)V
.end method

.method public abstract setVolume(II)V
.end method

.method public abstract startAudio(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract startCamera(IILandroid/view/SurfaceHolder;ZZLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract startMedia(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract startVideo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract stopCamera(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract swapVideoSurface(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract switchCamera()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract toggleMute(I)V
.end method

.method public abstract upgradeCall(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method

.method public abstract voiceRecord(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/commonimsservice/IMSException;
        }
    .end annotation
.end method
