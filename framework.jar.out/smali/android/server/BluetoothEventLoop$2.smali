.class Landroid/server/BluetoothEventLoop$2;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;


# direct methods
.method constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 146
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 147
    iget-object v0, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Landroid/server/BluetoothEventLoop;->access$102(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local p2
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    check-cast p2, Landroid/bluetooth/BluetoothSap;

    .end local p2
    #setter for: Landroid/server/BluetoothEventLoop;->mSap:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, p2}, Landroid/server/BluetoothEventLoop;->access$202(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 153
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 154
    iget-object v0, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    #setter for: Landroid/server/BluetoothEventLoop;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Landroid/server/BluetoothEventLoop;->access$102(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/server/BluetoothEventLoop$2;->this$0:Landroid/server/BluetoothEventLoop;

    #setter for: Landroid/server/BluetoothEventLoop;->mSap:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, v1}, Landroid/server/BluetoothEventLoop;->access$202(Landroid/server/BluetoothEventLoop;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    goto :goto_0
.end method
