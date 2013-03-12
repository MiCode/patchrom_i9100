.class Landroid/server/BluetoothBondState$1;
.super Ljava/lang/Object;
.source "BluetoothBondState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothBondState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothBondState;


# direct methods
.method constructor <init>(Landroid/server/BluetoothBondState;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 376
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 377
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Landroid/server/BluetoothBondState;->access$002(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 378
    .restart local p2
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 379
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/server/BluetoothBondState;->access$102(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0

    .line 380
    .restart local p2
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 381
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    check-cast p2, Landroid/bluetooth/BluetoothSap;

    .end local p2
    #setter for: Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, p2}, Landroid/server/BluetoothBondState;->access$202(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 386
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 387
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #setter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Landroid/server/BluetoothBondState;->access$002(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 389
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #setter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Landroid/server/BluetoothBondState;->access$102(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0

    .line 390
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 391
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #setter for: Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, v1}, Landroid/server/BluetoothBondState;->access$202(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    goto :goto_0
.end method
