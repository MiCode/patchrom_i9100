.class public Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateChangeCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 1404
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    .line 1405
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .line 1406
    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 1410
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;->onBluetoothStateChange(Z)V

    .line 1411
    return-void
.end method
