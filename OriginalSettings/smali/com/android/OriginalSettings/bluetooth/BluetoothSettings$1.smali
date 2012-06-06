.class Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateDeviceName()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/OriginalSettings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothSettings$1;->updateDeviceName()V

    .line 105
    :cond_0
    return-void
.end method
