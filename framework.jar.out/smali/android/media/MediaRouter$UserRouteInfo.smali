.class public Landroid/media/MediaRouter$UserRouteInfo;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRouteInfo"
.end annotation


# instance fields
.field mRcc:Landroid/media/RemoteControlClient;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 925
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 926
    const/high16 v0, 0x80

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    .line 927
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 928
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 929
    return-void
.end method

.method private setPlaybackInfoOnRcc(II)V
    .locals 1
    .parameter "what"
    .parameter "value"

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1131
    :cond_0
    return-void
.end method

.method private updatePlaybackInfoOnRcc()V
    .locals 4

    .prologue
    .line 1106
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v1}, Landroid/media/RemoteControlClient;->getRcseId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1107
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x3

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1109
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x2

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1111
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x4

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1113
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x5

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1115
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x1

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackInformation(II)V

    .line 1119
    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v2}, Landroid/media/RemoteControlClient;->getRcseId()I

    move-result v2

    iget-object v3, p0, Landroid/media/MediaRouter$RouteInfo;->mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioService;->registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaRouter"

    const-string v2, "Error registering remote volume observer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getRemoteControlClient()Landroid/media/RemoteControlClient;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public requestSetVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 1061
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1062
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_1

    .line 1063
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestSetVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public requestUpdateVolume(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 1072
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1073
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_1

    .line 1074
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestChangeVolume on user route - no volumec callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 994
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 995
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1004
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    return-void
.end method

.method public setName(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 945
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    .line 946
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 947
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 948
    return-void
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 936
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    .line 937
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 938
    return-void
.end method

.method public setPlaybackStream(I)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 1099
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    if-eq v0, p1, :cond_0

    .line 1100
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    .line 1101
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1103
    :cond_0
    return-void
.end method

.method public setPlaybackType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1022
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-eq v0, p1, :cond_0

    .line 1023
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    .line 1024
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1026
    :cond_0
    return-void
.end method

.method public setRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 0
    .parameter "rcc"

    .prologue
    .line 973
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    .line 974
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->updatePlaybackInfoOnRcc()V

    .line 975
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 956
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 957
    return-void
.end method

.method public setVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 1048
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getVolumeMax()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1049
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    if-eq v0, p1, :cond_0

    .line 1050
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    .line 1051
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1052
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1053
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$RouteGroup;->memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 1057
    :cond_0
    return-void
.end method

.method public setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V
    .locals 1
    .parameter "vcb"

    .prologue
    .line 1012
    new-instance v0, Landroid/media/MediaRouter$VolumeCallbackInfo;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaRouter$VolumeCallbackInfo;-><init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    .line 1013
    return-void
.end method

.method public setVolumeHandling(I)V
    .locals 1
    .parameter "volumeHandling"

    .prologue
    .line 1035
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    if-eq v0, p1, :cond_0

    .line 1036
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    .line 1037
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1040
    :cond_0
    return-void
.end method

.method public setVolumeMax(I)V
    .locals 1
    .parameter "volumeMax"

    .prologue
    .line 1088
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    if-eq v0, p1, :cond_0

    .line 1089
    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    .line 1090
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackInfoOnRcc(II)V

    .line 1092
    :cond_0
    return-void
.end method
