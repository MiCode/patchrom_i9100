.class final Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;
.super Ljava/lang/Object;
.source "SapProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/SapProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/SapProfile;


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    check-cast p2, Landroid/bluetooth/BluetoothSap;

    .end local p2
    #setter for: Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/SapProfile;->access$002(Lcom/android/settings/bluetooth/SapProfile;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    .line 48
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings/bluetooth/SapProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/bluetooth/SapProfile;->mService:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/SapProfile;->access$002(Lcom/android/settings/bluetooth/SapProfile;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    .line 52
    return-void
.end method
