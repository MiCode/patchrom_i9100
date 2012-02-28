.class Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;
.super Landroid/bluetooth/IAvrcpProxyCallback$Stub;
.source "AvrcpProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/AvrcpProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AvrcpProxyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/AvrcpProxy;


# direct methods
.method constructor <init>(Landroid/bluetooth/AvrcpProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-direct {p0}, Landroid/bluetooth/IAvrcpProxyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementAttributes()[Landroid/os/ElementAttributeParcel;
    .locals 2

    .prologue
    .line 136
    const-string v0, "AvrcpProxy"

    const-string v1, "AvrcpProxyCallback - getElementAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->getElementAttributes()[Landroid/os/ElementAttributeParcel;

    move-result-object v0

    return-object v0
.end method

.method public getPlayStatus()Landroid/os/PlayStatusParcel;
    .locals 2

    .prologue
    .line 126
    const-string v0, "AvrcpProxy"

    const-string v1, "AvrcpProxyCallback - getPlayStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->getPlayStatus()Landroid/os/PlayStatusParcel;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;
    .locals 2

    .prologue
    .line 151
    const-string v0, "AvrcpProxy"

    const-string v1, "AvrcpProxyCallback - getPlayerSettingVal()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEvents()Landroid/os/SupportedEventsParcel;
    .locals 2

    .prologue
    .line 131
    const-string v0, "AvrcpProxy"

    const-string v1, "AvrcpProxyCallback - getSupportedEvents()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->getSupportedEvents()Landroid/os/SupportedEventsParcel;

    move-result-object v0

    return-object v0
.end method

.method public listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;
    .locals 2

    .prologue
    .line 141
    const-string v0, "AvrcpProxy"

    const-string v1, "AvrcpProxyTunnel - listPlayerSettingAttrs()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;

    move-result-object v0

    return-object v0
.end method

.method public listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;
    .locals 2
    .parameter "attrId"

    .prologue
    .line 146
    const-string v0, "AvrcpProxy"

    const-string v1, "AvrcpProxyCallback - listPlayerSettingVals()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0, p1}, Landroid/bluetooth/AvrcpProxy;->listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;

    move-result-object v0

    return-object v0
.end method

.method public setPlayerSettingVal(BB)V
    .locals 2
    .parameter "attr"
    .parameter "val"

    .prologue
    .line 156
    const-string v0, "AvrcpProxy"

    const-string v1, "AvrcpProxyCallback - setPlayerSettingVal()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/AvrcpProxy;->setPlayerSettingVal(BB)V

    .line 158
    return-void
.end method

.method public updatePlayerSettingVals()Z
    .locals 2

    .prologue
    .line 161
    const-string v0, "AvrcpProxy"

    const-string v1, "AvrcpProxyCallback - updatePlayerSettingVals()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Landroid/bluetooth/AvrcpProxy$AvrcpProxyCallback;->this$0:Landroid/bluetooth/AvrcpProxy;

    invoke-virtual {v0}, Landroid/bluetooth/AvrcpProxy;->updatePlayerSettingVals()Z

    move-result v0

    return v0
.end method
