.class final Lcom/android/OriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/HidProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/HidProfile;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/bluetooth/HidProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HidProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/bluetooth/HidProfile;Lcom/android/OriginalSettings/bluetooth/HidProfile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;-><init>(Lcom/android/OriginalSettings/bluetooth/HidProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HidProfile;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2
    #setter for: Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0, p2}, Lcom/android/OriginalSettings/bluetooth/HidProfile;->access$002(Lcom/android/OriginalSettings/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    .line 47
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HidProfile;

    const/4 v1, 0x1

    #setter for: Lcom/android/OriginalSettings/bluetooth/HidProfile;->mProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/HidProfile;->access$102(Lcom/android/OriginalSettings/bluetooth/HidProfile;Z)Z

    .line 48
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HidProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/bluetooth/HidProfile;->mProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/HidProfile;->access$102(Lcom/android/OriginalSettings/bluetooth/HidProfile;Z)Z

    .line 52
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;->this$0:Lcom/android/OriginalSettings/bluetooth/HidProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/bluetooth/HidProfile;->access$002(Lcom/android/OriginalSettings/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    .line 53
    return-void
.end method
